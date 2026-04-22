using System.Text;
using System.Text.Json;

namespace Escursioni.MigrationEditor.Services;

/// <summary>Context data for SEO generation — location, difficulty, technical data.</summary>
public record HikeSeoContext(
    string? Comune,
    string? Provincia,
    string? Regione,
    string? Difficolta,
    string? DistanzaKm,
    string? DislivelloM,
    string? TipoGiro
);

public class MetaDescriptionGenerator
{
    private readonly HttpClient _http;
    private readonly string _model;
    private readonly string _baseUrl;

    public MetaDescriptionGenerator(HttpClient http, IConfiguration config)
    {
        _http = http;
        _baseUrl = config["Ollama:BaseUrl"] ?? "http://localhost:11434";
        _model = config["Ollama:Model"] ?? "gemma3:4b";
    }

    private static string BuildContextBlock(HikeSeoContext? ctx)
    {
        if (ctx is null) return "";
        var sb = new StringBuilder();
        if (!string.IsNullOrWhiteSpace(ctx.Comune)) sb.AppendLine($"Comune: {ctx.Comune}");
        if (!string.IsNullOrWhiteSpace(ctx.Provincia)) sb.AppendLine($"Provincia: {ctx.Provincia}");
        if (!string.IsNullOrWhiteSpace(ctx.Regione)) sb.AppendLine($"Regione: {ctx.Regione}");
        if (!string.IsNullOrWhiteSpace(ctx.Difficolta)) sb.AppendLine($"Difficoltà: {ctx.Difficolta}");
        if (!string.IsNullOrWhiteSpace(ctx.DistanzaKm)) sb.AppendLine($"Distanza: {ctx.DistanzaKm} km");
        if (!string.IsNullOrWhiteSpace(ctx.DislivelloM)) sb.AppendLine($"Dislivello: +{ctx.DislivelloM} m");
        if (!string.IsNullOrWhiteSpace(ctx.TipoGiro)) sb.AppendLine($"Tipo giro: {ctx.TipoGiro}");
        return sb.Length > 0 ? sb.ToString() : "";
    }

    public async Task<string> GenerateAsync(string titolo, string descrizione, HikeSeoContext? ctx = null)
    {
        await EnsureModelAsync();

        var contextBlock = BuildContextBlock(ctx);

        var prompt = $"""
            Sei un esperto SEO per un sito amatoriale di escursionismo in italiano (escursionilucabigoni.it).
            Il sito è di un escursionista amatoriale, NON una guida professionista.

            Genera una meta descrizione di massimo 155 caratteri per questa escursione.

            REGOLE IMPORTANTI:
            - Scrivi come cercano gli utenti su Google (es: "Monte Forato escursione da Cardoso", "escursione Alpi Apuane facile")
            - Includi: nome del luogo, tipo attività (escursione/trekking), zona geografica
            - Se disponibili, menziona difficoltà, distanza o dislivello
            - Deve invogliare al click: accattivante, concreta, utile
            - NON usare frasi generiche tipo "scopri il sentiero" senza contesto specifico
            - Rispondi SOLO con il testo, senza virgolette né spiegazioni

            Titolo: {titolo}
            Descrizione: {descrizione}
            {contextBlock}
            """;

        var text = await CallOllamaAsync(prompt);
        text = text.Trim().Trim('"', '«', '»');
        if (text.Length > 160) text = text[..157] + "...";
        return text;
    }

    public async Task<string> GenerateSeoTitleAsync(string titolo, string descrizione, HikeSeoContext? ctx = null)
    {
        await EnsureModelAsync();

        var contextBlock = BuildContextBlock(ctx);

        var prompt = $"""
            Sei un esperto SEO per un sito amatoriale di escursionismo in italiano.

            Genera un titolo SEO di massimo 60 caratteri per questa escursione.

            REGOLE FONDAMENTALI (search intent):
            - Il titolo DEVE corrispondere a come gli utenti cercano su Google
            - Formato ideale: "Nome Luogo: escursione da [punto partenza] (dettagli chiave)"
            - Esempi di titoli efficaci:
              • "Monte Forato: escursione da Cardoso (percorso, traccia GPS)"
              • "Alpi Apuane: trekking al Pizzo d'Uccello da Equi Terme"
              • "Monte Altissimo: escursione facile con panorama sulle Apuane"
              • "Garfagnana: anello del Monte Prana da Metato"
            - Includi SEMPRE: nome del monte/luogo + "escursione" o "trekking"
            - Se c'è un punto di partenza noto, includilo con "da [luogo]"
            - Se la difficoltà è un punto di forza (facile o molto difficile), menzionala
            - NON usare formati tipo "Trekking Monte X: Sentiero CAI Y" (troppo tecnico)
            - NON usare "Sentiero CAI" nel titolo (gli utenti non cercano così)
            - Rispondi SOLO con il testo del titolo, senza virgolette né spiegazioni

            Titolo originale: {titolo}
            Descrizione: {descrizione}
            {contextBlock}
            """;

        var text = await CallOllamaAsync(prompt);
        text = text.Trim().Trim('"', '«', '»');
        if (text.Length > 65) text = text[..62] + "...";
        return text;
    }

    public async Task<string> GenerateHtmlAsync(string titolo, string descrizione, HikeSeoContext? ctx = null)
    {
        await EnsureModelAsync();

        var contextBlock = BuildContextBlock(ctx);

        var prompt = $"""
            Sei un esperto SEO e copywriter per un sito amatoriale di escursionismo in Italia (escursionilucabigoni.it).
            Il sito è di un escursionista amatoriale appassionato, NON una guida professionista.

            Genera un fragment HTML SEO-ottimizzato per la pagina di dettaglio di un'escursione.

            REGOLE SEO CRITICHE (Google 2026):
            - Il contenuto deve essere la MIGLIORE RISPOSTA possibile per chi cerca questa escursione
            - Usa UN SOLO <h2> come titolo principale, formulato come cercano gli utenti
              (es: "Escursione al Monte Forato da Cardoso" NON "Trekking Monte Forato: Sentiero CAI 127")
            - Usa <h3> per sotto-sezioni utili all'utente:
              • "Come arrivare al punto di partenza"
              • "Il percorso passo per passo"
              • "Difficoltà e cosa aspettarsi"
              • "Traccia GPS e informazioni pratiche"
            - Scrivi in modo NARRATIVO e coinvolgente, come un amico che racconta l'escursione
            - Includi parole chiave NATURALI nel testo (escursione, trekking, sentiero, montagna, panorama, traccia GPS)
            - Usa <strong> per: nomi di luoghi, difficoltà, distanza, dislivello
            - Usa <ul>/<li> per elenchi pratici (cosa portare, punti di interesse)
            - Il testo deve rispondere alle domande reali degli utenti:
              Quanto è difficile? Quanto ci vuole? Da dove si parte? Cosa si vede?
            - NON includere <html>, <head>, <body>, <style>, <script>
            - NON inserire nessun tag <img>
            - Rispondi SOLO con il codice HTML, senza spiegazioni, senza markdown, senza backtick

            Titolo sentiero: {titolo}
            Descrizione originale: {descrizione}
            {contextBlock}
            """;

        var text = await CallOllamaAsync(prompt);

        // Strip markdown code fences if the model wraps output
        text = text.Trim();
        if (text.StartsWith("```"))
        {
            var firstNewline = text.IndexOf('\n');
            if (firstNewline > 0) text = text[(firstNewline + 1)..];
            if (text.EndsWith("```")) text = text[..^3];
            text = text.Trim();
        }

        return text;
    }

    public async Task<string> GenerateTagAsync(string titolo, string descrizione, HikeSeoContext? ctx = null)
    {
        await EnsureModelAsync();

        var contextBlock = BuildContextBlock(ctx);

        var prompt = $"""
            Sei un classificatore per un sito di escursionismo italiano.

            Assegna UNO SOLO dei seguenti tag all'escursione:
            - Alpi Apuane
            - Versilia e costa toscana
            - Lucchesia e colline toscane
            - Appennino Tosco-Emiliano
            - Trentino
            - Estero

            REGOLE:
            - Rispondi SOLO con il testo esatto del tag, senza virgolette né spiegazioni
            - Scegli il tag più appropriato in base alla zona geografica dell'escursione
            - Se non riesci a determinare la zona, rispondi "Estero"
            - Usa le informazioni di regione, provincia, comune e titolo per decidere

            Titolo: {titolo}
            Descrizione: {descrizione}
            {contextBlock}
            """;

        var text = await CallOllamaAsync(prompt);
        text = text.Trim().Trim('"', '«', '»', '\n', '\r');

        // Validate against allowed tags
        string[] allowedTags = [
            "Alpi Apuane", "Garfagnana", "Versilia e costa toscana",
            "Lucchesia e colline toscane", "Appennino Tosco-Emiliano",
            "Trentino", "Estero"
        ];

        var match = allowedTags.FirstOrDefault(t =>
            text.Contains(t, StringComparison.OrdinalIgnoreCase));

        return match ?? "Estero";
    }

    private async Task<string> CallOllamaAsync(string prompt)
    {
        var body = new
        {
            model = _model,
            messages = new[] { new { role = "user", content = prompt } },
            stream = false
        };

        var json = JsonSerializer.Serialize(body);
        var content = new StringContent(json, Encoding.UTF8, "application/json");

        var response = await _http.PostAsync($"{_baseUrl}/api/chat", content);
        response.EnsureSuccessStatusCode();

        var result = await response.Content.ReadAsStringAsync();
        using var doc = JsonDocument.Parse(result);

        return doc.RootElement
            .GetProperty("message")
            .GetProperty("content")
            .GetString() ?? "";
    }

    private async Task EnsureModelAsync()
    {
        try
        {
            var body = JsonSerializer.Serialize(new { model = _model });
            var content = new StringContent(body, Encoding.UTF8, "application/json");
            await _http.PostAsync($"{_baseUrl}/api/pull", content);
        }
        catch
        {
            // Ignore pull errors — generation will fail with a clearer message
        }
    }
}

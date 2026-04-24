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

            Genera una meta descrizione di massimo 130 caratteri per questa escursione.

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
        if (text.Length > 130) text = text[..127] + "...";
        return text;
    }

    public async Task<string> GenerateSeoTitleAsync(string titolo, string descrizione, HikeSeoContext? ctx = null)
    {
        await EnsureModelAsync();

        var contextBlock = BuildContextBlock(ctx);

        var prompt = $"""
            Sei un esperto SEO per un sito amatoriale di escursionismo in italiano.

            Genera un titolo SEO di massimo 55 caratteri per questa escursione.

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
        if (text.Length > 60) text = text[..57] + "...";
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
Sei un classificatore geografico per escursioni in Italia.
OBIETTIVO:
Assegna ESATTAMENTE UNO dei seguenti tag:

1. Alpi Apuane
2. Livorno e costa toscana
3. Versilia e Massarosa
4. Lucchesia e colline toscane
5. Firenze e provincia
6. Appennino Tosco-Emiliano
7. Trentino e Veneto
8. Grosseto e Maremma
9. Lunigiana
10. Monti Pisani
11. Altre zone dell'italia
12. Estero
13. Non assegnabile (se manca delle info necessarie per classificare)

-----------------------
DEFINIZIONI GEOGRAFICHE
-----------------------

Alpi Apuane:
- Monti: Altissimo, Forato, Procinto, Pizzo d'Uccello, Tambura, Sumbra, Sagro, Corchia, Pania della Croce, Pania Secca, Matanna, Nona, Freddone, Croce, Sella, Grondilice, Contrario, Fiocca
- Province: Lucca (solo Garfagnana e Apuane), Massa-Carrara
- Comuni: Stazzema, Levigliani, Cardoso, Pruno, Volegno, Fornovolasco, Isola Santa, Vagli di Sotto, Gorfigliano, Gramolazzo, Campocatino, Equi Terme, Resceto, Campagrina, Metato, Arni, Colonnata, Vinca, Careggine, Molazzana, Gallicano, Castelnuovo di Garfagnana, Piazza al Serchio, Castiglione di Garfagnana, Minucciano
- Frazioni/Località: Passo del Vestito, Passo della Focolaccia, Rifugio Rossi, Rifugio Del Freo, Rifugio Orto di Donna, Foce di Mosceta, Foce di Petrosciana, Col di Favilla
- ESCLUDE: costa, Versilia, pianura lucchese

Livorno e costa toscana:
- Province: Livorno (zona costiera)
- Comuni: Livorno, Rosignano Marittimo, Cecina, Bibbona, Castagneto Carducci, San Vincenzo, Campiglia Marittima, Suvereto, Piombino
- Frazioni/Località: Quercianella, Castiglioncello, Calambrone, Montenero, Castellaccio, Romito, Calafuria, Sonnino, Antignano, Ardenza, Chioma, Populonia, Baratti, Bolgheri
- Include: costa livornese da Livorno a Piombino, isole (Capraia, Gorgona)
- ESCLUDE: Versilia, Grosseto, entroterra livornese collinare

Versilia e Massarosa:
- Comuni: Viareggio, Camaiore, Pietrasanta, Forte dei Marmi, Massarosa, Seravezza (zona non apuana)
- Frazioni/Località: Lido di Camaiore, Marina di Pietrasanta, Tonfano, Fiumetto, Focette, Querceta, Ripa, Pian di Mommio, Bozzano, Stiava, Massaciuccoli
- Include: costa versiliese, colline di Massarosa, Lago di Massaciuccoli
- ESCLUDE: Alpi Apuane (cime e sentieri montani)

Lucchesia e colline toscane:
- Province: Lucca (pianura e colline, NO Garfagnana/Apuane), Pisa (entroterra), Livorno (entroterra)
- Comuni: Lucca, Capannori, Porcari, Altopascio, Montecarlo, Pescia, Montecatini Terme, Monsummano, Volterra, Pomarance, Castelnuovo di Val di Cecina, Riparbella, Castellina Marittima
- Frazioni/Località: Valle Benedetta, Colognole, Parrana, Castell'Anselmo, Montemagno, Guamo, Ponte a Moriano
- Include: colline livornesi entroterra, Valdinievole, Val di Cecina interna, Piana di Lucca, Cerbaie
- ESCLUDE: Monti Pisani (categoria separata), Garfagnana, Apuane

Firenze e provincia:
- Provincia: Firenze
- Comuni: Firenze, Fiesole, Reggello, Bagno a Ripoli, Pontassieve, Rufina, Dicomano, San Godenzo, Vicchio, Borgo San Lorenzo, Scarperia, Barberino di Mugello, Greve in Chianti, San Casciano in Val di Pesa, Impruneta
- Frazioni/Località: Vallombrosa, Pratomagno, Sammezzano, Monte Morello, Monte Senario, Passo della Consuma, Passo della Futa (versante fiorentino)
- Include: Mugello, Chianti fiorentino, Casentino (lato fiorentino), Val di Sieve

Appennino Tosco-Emiliano:
- Crinale appenninico da Passo della Cisa a Passo della Futa
- Province: Parma, Reggio Emilia, Modena, Bologna (lato montano), Pistoia (zona montana)
- Comuni: Abetone Cutigliano, San Marcello Piteglio, Sambuca Pistoiese, Lizzano in Belvedere, Fanano, Sestola, Pievepelago, Frassinoro, Riolunato, Montecreto, Fiumalbo, Corniglio, Monchio delle Corti
- Monti/Zone: Abetone, Corno alle Scale, Lago Scaffaiolo, Libro Aperto, Monte Cimone, Monte Cusna, Monte Prado, Crinale GEA, Passo del Cerreto, Passo delle Radici
- Include: Appennino pistoiese, Appennino modenese, Appennino reggiano, Appennino parmense
- ESCLUDE: Lunigiana (categoria separata)

Trentino e Veneto:
- Regioni: Trentino-Alto Adige, Veneto
- Province: Trento, Bolzano, Belluno, Verona, Vicenza, Treviso, Padova, Venezia, Rovigo
- Comuni TN/BZ: Trento, Rovereto, Riva del Garda, Molveno, Madonna di Campiglio, Canazei, Moena, Pozza di Fassa, Campitello di Fassa, Val di Sole, Pinzolo, Cavalese, Predazzo, Bressanone, Merano, Ortisei, Selva di Val Gardena, Cortina d'Ampezzo (BL)
- Comuni Veneto: Belluno, Feltre, Agordo, Auronzo di Cadore, Santo Stefano di Cadore, Asiago, Roana, Gallio, Enego, Bassano del Grappa, Recoaro Terme, Bosco Chiesanuova, Malcesine, Brenzone sul Garda
- Monti/Zone: Dolomiti, Marmolada, Tre Cime di Lavaredo, Pale di San Martino, Brenta, Lagorai, Lessinia, Altopiano di Asiago, Monte Grappa, Monte Baldo, Lago di Garda (sponda veneta/trentina), Colli Euganei, Colli Berici

Grosseto e Maremma:
- Provincia: Grosseto
- Comuni: Grosseto, Pitigliano, Sorano, Sovana, Castiglione della Pescaia, Massa Marittima, Follonica, Scarlino, Orbetello, Monte Argentario, Manciano, Semproniano, Roccastrada, Monterotondo Marittimo, Arcidosso, Santa Fiora, Seggiano
- Frazioni/Località: Alberese, Talamone, Porto Ercole, Porto Santo Stefano, Saturnia, Montemerano, Cala di Forno
- Include: Maremma toscana, colline metallifere, Monte Amiata (lato grossetano), Val d'Orcia (lato grossetano), Vie Cave etrusche
- Zone: costa maremmana, Parco Regionale della Maremma, Laguna di Orbetello

Lunigiana:
- Province: Massa-Carrara (entroterra), La Spezia (alta val di Magra)
- Comuni: Aulla, Fivizzano, Pontremoli, Mulazzo, Tresana, Licciana Nardi, Bagnone, Villafranca in Lunigiana, Fosdinovo, Comano, Filattiera, Zeri, Podenzana
- Frazioni/Località: Filetto, Pallerone, Gragnola, Casola in Lunigiana, Monzone, Vinca (fondovalle), Equi Terme (fondovalle)
- Include: Val di Magra, Val di Vara (alta), borghi e castelli lunigianesi
- ESCLUDE: costa, Alpi Apuane (cime), Appennino Tosco-Emiliano (crinale)

Monti Pisani:
- Catena collinare tra Pisa e Lucca (quota max ~917m Monte Serra)
- Comuni: Calci, Vicopisano, Buti, San Giuliano Terme, Vecchiano, Capannori (versante est)
- Frazioni/Località: Agnano, Nicosia, Montemagno, Caprona, Uliveto Terme, Ripafratta, San Giovanni alla Vena
- Monti: Monte Serra, Monte Pisano, Monte Castellare, Monte Croce, Monte Magno, Monte Faeta, Monte Verruca
- ESCLUDE: costa, pianura circostante, centro Pisa/Lucca

Altre zone dell'italia:
- Qualsiasi località in Italia NON coperta dalle categorie precedenti
- Include: Sardegna, Sicilia, Lazio, Umbria, Liguria, Piemonte, Lombardia, Campania, Puglia, Calabria, Marche, Abruzzo, Molise, Basilicata, Friuli-Venezia Giulia, Valle d'Aosta, ecc.
- ESCLUDE: tutte le zone specificate nelle categorie sopra

Estero:
- Qualsiasi località fuori dall'Italia (es: Repubblica Ceca, Austria, Svizzera, Francia, Slovenia, Spagna, Germania)

Non assegnabile:
- Mancano informazioni geografiche sufficienti per classificare
- Zona ambigua al confine tra più categorie senza dettagli specifici sufficienti

-----------------------
REGOLE DI PRIORITÀ (OBBLIGATORIE)
-----------------------

1. Se fuori Italia → Estero
2. Se Regione = Trentino-Alto Adige o Veneto → Trentino e Veneto
3. Se monte/cima Apuana o comune in Garfagnana/versante apuano → Alpi Apuane
4. Se Provincia = Grosseto o Maremma/Monte Amiata → Grosseto e Maremma
5. Se Provincia = Firenze (incluso Mugello, Chianti fiorentino) → Firenze e provincia
6. Se comune in Lunigiana (val di Magra, Massa-Carrara entroterra) → Lunigiana
7. Se comune in Versilia o Massarosa/Lago Massaciuccoli → Versilia e Massarosa
8. Se costa livornese (Livorno–Piombino) → Livorno e costa toscana
9. Se crinale appenninico o Emilia-Romagna montana → Appennino Tosco-Emiliano
10. Se Monte Serra/Monti Pisani (Calci, Buti, Vicopisano) → Monti Pisani
11. Se provincia Lucca/Pisa/Livorno entroterra (colline, pianura) → Lucchesia e colline toscane
12. Se in Italia ma non nelle categorie sopra → Altre zone dell'italia
13. Se mancano dati sufficienti → Non assegnabile

-----------------------
FORMATO RISPOSTA
-----------------------

- Rispondi con UNA SOLA STRINGA
- Nessuna spiegazione
- Nessuna punteggiatura extra
- Nessuna nuova riga

Esempio valido:
Alpi Apuane

-----------------------
DATI ESCURSIONE
-----------------------
Titolo: {titolo}
Descrizione: {descrizione}
{contextBlock}
""";

        var text = await CallOllamaAsync(prompt);
        text = text.Trim().Trim('"', '«', '»', '\n', '\r');

        // Validate against allowed tags
        string[] allowedTags = [
            "Alpi Apuane", "Livorno e costa toscana",
            "Versilia e Massarosa", "Lucchesia e colline toscane",
            "Firenze e provincia", "Appennino Tosco-Emiliano",
            "Trentino e Veneto", "Grosseto e Maremma", "Lunigiana",
            "Monti Pisani", "Altre zone dell'italia", "Estero",
            "Non assegnabile"
        ];

        var match = allowedTags.FirstOrDefault(t =>
            text.Contains(t, StringComparison.OrdinalIgnoreCase));

        return match ?? "Non assegnabile";
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

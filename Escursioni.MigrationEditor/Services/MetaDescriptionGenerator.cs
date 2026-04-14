using System.Text;
using System.Text.Json;

namespace Escursioni.MigrationEditor.Services;

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

    public async Task<string> GenerateAsync(string titolo, string descrizione)
    {
        // Ensure model is available (pulls if missing, no-op if present)
        await EnsureModelAsync();

        var prompt = $"""
            Sei un esperto SEO per un sito di escursionismo in italiano.
            Genera una meta descrizione HTML di massimo 155 caratteri per la seguente escursione.
            La meta descrizione deve essere accattivante, contenere parole chiave pertinenti e invogliare al click.
            Rispondi SOLO con il testo della meta descrizione, senza virgolette né spiegazioni.

            Titolo: {titolo}
            Descrizione: {descrizione}
            """;

        var body = new
        {
            model = _model,
            messages = new[]
            {
                new { role = "user", content = prompt }
            },
            stream = false
        };

        var json = JsonSerializer.Serialize(body);
        var content = new StringContent(json, Encoding.UTF8, "application/json");

        var response = await _http.PostAsync($"{_baseUrl}/api/chat", content);
        response.EnsureSuccessStatusCode();

        var result = await response.Content.ReadAsStringAsync();
        using var doc = JsonDocument.Parse(result);

        var text = doc.RootElement
            .GetProperty("message")
            .GetProperty("content")
            .GetString() ?? "";

        // Clean up: remove surrounding quotes if present
        text = text.Trim().Trim('"', '«', '»');

        // Truncate to 160 chars if needed
        if (text.Length > 160)
            text = text[..157] + "...";

        return text;
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

    public async Task<string> GenerateHtmlAsync(string titolo, string descrizione)
    {
        await EnsureModelAsync();

        var prompt = $"""
            Sei un web designer esperto di escursionismo. Data la descrizione di un'escursione,
            genera il contenuto HTML formattato per la pagina di dettaglio dell'escursione.
            Usa tag semantici: <h2>, <h3>, <p>, <ul>/<li>, <strong>, <em>.
            NON includere <html>, <head>, <body> né <style>. Solo il fragment HTML del contenuto.
            Rendi il testo coinvolgente, ben strutturato e piacevole da leggere.
            Rispondi SOLO con il codice HTML, senza spiegazioni, senza markdown, senza backtick.

            Titolo: {titolo}
            Descrizione: {descrizione}
            """;

        var body = new
        {
            model = _model,
            messages = new[]
            {
                new { role = "user", content = prompt }
            },
            stream = false
        };

        var json = JsonSerializer.Serialize(body);
        var content = new StringContent(json, Encoding.UTF8, "application/json");

        var response = await _http.PostAsync($"{_baseUrl}/api/chat", content);
        response.EnsureSuccessStatusCode();

        var result = await response.Content.ReadAsStringAsync();
        using var doc = JsonDocument.Parse(result);

        var text = doc.RootElement
            .GetProperty("message")
            .GetProperty("content")
            .GetString() ?? "";

        // Strip markdown code fences if the model wraps output in ```html ... ```
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
}

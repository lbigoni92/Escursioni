using System.Text.Json;

namespace Escursioni.Web.Services;

/// <summary>
/// Redirect 301 di pagine tolte dal sito (Data/redirects.json: vecchio percorso → nuovo percorso).
/// Valgono sia per il sito in esecuzione (middleware in Program.cs) sia per il sito statico
/// (righe in _redirects, vedi StaticSiteExporter). Le escursioni tolte stanno in Data/hikes-escluse.
/// </summary>
public sealed class SiteRedirects
{
    public IReadOnlyDictionary<string, string> Map { get; }

    private SiteRedirects(Dictionary<string, string> map) => Map = map;

    public static SiteRedirects Load(string path)
    {
        if (!File.Exists(path))
            return new SiteRedirects(new Dictionary<string, string>());

        var map = JsonSerializer.Deserialize<Dictionary<string, string>>(File.ReadAllText(path))
                  ?? new Dictionary<string, string>();
        return new SiteRedirects(new Dictionary<string, string>(map, StringComparer.OrdinalIgnoreCase));
    }

    public bool TryGetTarget(string path, out string target)
        => Map.TryGetValue(path.TrimEnd('/'), out target!);
}

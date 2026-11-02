using System.Text.Json;

namespace Escursioni.Web.Services;

/// <summary>
/// Redirect 301 di pagine tolte dal sito (Data/redirects.json: vecchio percorso → nuovo percorso)
/// e di quelle generate dai dati (varianti e slug scelti a mano, vedi HikeRepository.Redirects).
/// Valgono sia per il sito in esecuzione (middleware in Program.cs) sia per il sito statico
/// (righe in _redirects, vedi StaticSiteExporter). Le escursioni tolte stanno in Data/hikes-escluse.
/// </summary>
public sealed class SiteRedirects
{
    public IReadOnlyDictionary<string, string> Map { get; }

    private SiteRedirects(Dictionary<string, string> map) => Map = map;

    public static SiteRedirects Load(string path, IReadOnlyDictionary<string, string>? generated = null)
    {
        var fromFile = File.Exists(path)
            ? JsonSerializer.Deserialize<Dictionary<string, string>>(File.ReadAllText(path)) ?? new()
            : new Dictionary<string, string>();

        var map = new Dictionary<string, string>(fromFile, StringComparer.OrdinalIgnoreCase);
        foreach (var (from, to) in generated ?? new Dictionary<string, string>())
            map.TryAdd(from, to);

        // Nessuna catena: ogni redirect punta direttamente all'URL finale
        foreach (var from in map.Keys.ToList())
        {
            var target = map[from];
            var seen = new HashSet<string>(StringComparer.OrdinalIgnoreCase) { from };
            while (map.TryGetValue(target, out var next) && seen.Add(target))
                target = next;
            map[from] = target;
        }
        return new SiteRedirects(map);
    }

    public bool TryGetTarget(string path, out string target)
        => Map.TryGetValue(path.TrimEnd('/'), out target!);
}

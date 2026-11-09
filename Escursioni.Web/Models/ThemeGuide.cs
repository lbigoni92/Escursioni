using System.Text.Json;
using System.Text.Json.Serialization;

namespace Escursioni.Web.Models;

/// <summary>
/// Guida tematica (Data/guide/{slug}.json), pagina /guide/{slug}: raccoglie escursioni di zone diverse
/// attorno a un tema cercato su Google, es. "ciaspole all'Abetone" o "ferrate in Toscana".
/// </summary>
public class ThemeGuide
{
    [JsonIgnore]
    public string Slug { get; set; } = string.Empty;
    /// <summary>Titolo della pagina (H1).</summary>
    public string Titolo { get; set; } = string.Empty;
    public string TitoloSeo { get; set; } = string.Empty;
    public string MetaDescrizione { get; set; } = string.Empty;
    public string TestoHtml { get; set; } = string.Empty;
    /// <summary>Wikiloc id delle escursioni mostrate in fondo alla guida, nell'ordine scritto.</summary>
    public List<long> Escursioni { get; set; } = new();
    public List<Fonte> Fonti { get; set; } = new();

    public string Url => "/guide/" + Slug;

    private static readonly JsonSerializerOptions Options = new() { PropertyNamingPolicy = JsonNamingPolicy.SnakeCaseLower };

    /// <summary>Tutte le guide della cartella Data/guide, in ordine di nome file.</summary>
    public static List<ThemeGuide> LoadAll(string contentRoot)
    {
        var dir = Path.Combine(contentRoot, "Data", "guide");
        if (!Directory.Exists(dir)) return [];
        return Directory.EnumerateFiles(dir, "*.json").OrderBy(f => f)
            .Select(f =>
            {
                using var stream = File.OpenRead(f);
                var g = JsonSerializer.Deserialize<ThemeGuide>(stream, Options)!;
                g.Slug = Path.GetFileNameWithoutExtension(f);
                return g;
            })
            .ToList();
    }
}

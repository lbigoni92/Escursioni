using System.Text.Json;

namespace Escursioni.Web.Models;

/// <summary>
/// Testo guida di una zona (Data/zone-guide/{slug}.json), mostrato nella pagina /escursioni/zona/{slug}
/// sopra l'elenco delle escursioni: titolo e descrizione per Google, testo con link e fonti.
/// </summary>
public class ZoneGuide
{
    public string TitoloSeo { get; set; } = string.Empty;
    public string MetaDescrizione { get; set; } = string.Empty;
    public string TestoHtml { get; set; } = string.Empty;
    public List<Fonte> Fonti { get; set; } = new();

    private static readonly JsonSerializerOptions Options = new() { PropertyNamingPolicy = JsonNamingPolicy.SnakeCaseLower };

    /// <summary>La guida della zona, o null se non c'è il file.</summary>
    public static ZoneGuide? Load(string contentRoot, string slug)
    {
        var path = Path.Combine(contentRoot, "Data", "zone-guide", slug + ".json");
        if (!File.Exists(path)) return null;
        using var stream = File.OpenRead(path);
        return JsonSerializer.Deserialize<ZoneGuide>(stream, Options);
    }
}

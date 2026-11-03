using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Text;
using System.Text.RegularExpressions;
using System.Linq;

namespace Escursioni.Web.Pages.Escursioni;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;
    private readonly PlaceRepository _places;

    public IndexModel(IHikeRepository repo, IConfiguration config, PlaceRepository places)
    {
        _repo = repo;
        _config = config;
        _places = places;
    }

    public List<ZoneSummary> Zones { get; set; } = new();
    public int TotalHikes { get; set; }

    /// <summary>Quante escursioni per difficoltà (Facile, Medio, Difficile...), dalla più frequente.</summary>
    public List<(string Difficolta, int Count)> PerDifficolta { get; set; } = new();

    /// <summary>Vette, rifugi, passi e laghi raggiunti, per il testo introduttivo.</summary>
    public List<(PlaceType Type, int Count)> Luoghi => PlaceType.All.Select(t => (t, _places.OfType(t).Count)).Where(x => x.Item2 > 0).ToList();

    /// <summary>Luoghi con una pagina propria (es. Rifugio del Freo).</summary>
    public List<Place> LuoghiConPagina => _places.WithSheets.ToList();

    /// <summary>L'escursione che arriva più in alto in una zona.</summary>
    public static Hike? Highest(ZoneSummary z) => z.Hikes.Where(h => h.QuotaMaxM.HasValue).MaxBy(h => h.QuotaMaxM);

    /// <summary>Un'escursione facile della zona, la più recente.</summary>
    public static Hike? Easy(ZoneSummary z) => z.Hikes.FirstOrDefault(h => string.Equals(h.Difficolta, "Facile", StringComparison.OrdinalIgnoreCase));

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana per zona – Apuane, Garfagnana, Appennino";
        ViewData["MetaDescription"] = "Escursioni in Toscana divise per zona: Alpi Apuane, Garfagnana, Versilia, Appennino e altre aree, con tracce GPS, dislivelli e foto.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/escursioni";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";

        // Ogni zona mostra alcune escursioni recenti: link interni diretti verso le schede
        Zones = await HikeDisplay.GetZonesAsync(_repo);
        var all = await _repo.GetAllAsync(null, null);
        TotalHikes = all.Count;
        PerDifficolta = all
            .Where(h => !string.IsNullOrWhiteSpace(h.Difficolta))
            .GroupBy(h => h.Difficolta!, StringComparer.OrdinalIgnoreCase)
            .Select(g => (g.Key, g.Count()))
            .OrderByDescending(x => x.Item2)
            .ToList();
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { ("Escursioni per zona", "") };

        // JSON-LD CollectionPage
        ViewData["JsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""CollectionPage"",
  ""name"": ""Escursioni per zona – Trekking in Toscana e Italia"",
  ""description"": ""Tutte le escursioni organizzate per zona geografica: Alpi Apuane, Versilia, Appennino e altro."",
  ""url"": ""{baseUrl}/escursioni"",
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""inLanguage"": ""it-IT""
}}";

        // Breadcrumb JSON-LD
        ViewData["BreadcrumbJsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""BreadcrumbList"",
  ""itemListElement"": [
    {{""@type"": ""ListItem"", ""position"": 1, ""name"": ""Home"", ""item"": ""{baseUrl}/""}},
    {{""@type"": ""ListItem"", ""position"": 2, ""name"": ""Escursioni"", ""item"": ""{baseUrl}/escursioni""}}
  ]
}}";
    }

    /// <summary>
    /// Slug dal titolo. Le lettere accentate vengono ELIMINATE ("più" → "pi"), non traslitterate:
    /// è il comportamento che aveva il sito in produzione (container Alpine con globalization
    /// invariant, dove Normalize(FormD) non scompone gli accenti) e quindi sono gli URL già
    /// indicizzati da Google. Non cambiare senza aggiungere redirect 301.
    /// </summary>
    public static string MakeSlug(string text)
    {
        if (string.IsNullOrWhiteSpace(text)) return string.Empty;
        var cleaned = Regex.Replace(text.ToLowerInvariant(), @"[^a-z0-9]+", "-");
        cleaned = Regex.Replace(cleaned, @"-+", "-").Trim('-');
        return cleaned;
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

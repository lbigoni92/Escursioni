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

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<ZoneSummary> Zones { get; set; } = new();
    public int TotalHikes { get; set; }

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana per zona – Apuane, Garfagnana, Appennino";
        ViewData["MetaDescription"] = "Escursioni in Toscana divise per zona: Alpi Apuane, Garfagnana, Versilia, Appennino e altre aree, con tracce GPS, dislivelli e foto.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/escursioni";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";

        // Ogni zona mostra alcune escursioni recenti: link interni diretti verso le schede
        Zones = await HikeDisplay.GetZonesAsync(_repo);
        TotalHikes = (await _repo.GetAllAsync(null, null)).Count;
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

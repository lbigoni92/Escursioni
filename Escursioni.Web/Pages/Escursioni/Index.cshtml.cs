using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.OutputCaching;
using System.Text;
using System.Text.RegularExpressions;
using System.Linq;

namespace Escursioni.Web.Pages.Escursioni;

[OutputCache(PolicyName = "Pages")]
public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<(string Tag, int Count)> TagSummary { get; set; } = new();
    public int TotalHikes { get; set; }
    public Dictionary<string, List<Hike>> TagSamples { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana per zona | Trekking Apuane, Garfagnana e Appennino";
        ViewData["MetaDescription"] = "Escursioni in Toscana organizzate per zona: Alpi Apuane, Garfagnana, Versilia, Appennino e altre aree. Tracce GPS, itinerari, dislivelli, foto e guide dettagliate per ogni sentiero.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/escursioni";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";

        TagSummary = await _repo.GetTagSummaryAsync();
        TotalHikes = TagSummary.Sum(t => t.Count);

        // Load a few sample hikes per tag to strengthen internal linking and provide immediate entry points
        TagSamples = new Dictionary<string, List<Hike>>();
        foreach (var (tag, count) in TagSummary)
        {
            try
            {
                var hikes = await _repo.GetByTagAsync(tag);
                TagSamples[tag] = hikes?.Take(3).ToList() ?? new List<Hike>();
            }
            catch
            {
                TagSamples[tag] = new List<Hike>();
            }
        }

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

    public static string MakeSlug(string text)
    {
        if (string.IsNullOrWhiteSpace(text)) return string.Empty;
        var normalized = text.ToLowerInvariant().Normalize(NormalizationForm.FormD);
        var sb = new StringBuilder();
        foreach (var c in normalized)
        {
            var uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(c);
            if (uc == System.Globalization.UnicodeCategory.NonSpacingMark)
                continue;
            sb.Append(c);
        }
        var cleaned = sb.ToString().Normalize(NormalizationForm.FormC);
        cleaned = Regex.Replace(cleaned, @"[^a-z0-9]+", "-");
        cleaned = Regex.Replace(cleaned, @"-+", "-").Trim('-');
        return cleaned;
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

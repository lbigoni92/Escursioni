using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<Hike> UltimeEscursioni { get; set; } = new();
    /// <summary>Foto dell'hero: per ciascuna delle zone principali l'escursione con foto che arriva più in alto.</summary>
    public List<Hike> InEvidenza { get; set; } = new();
    public List<ZoneSummary> Zone { get; set; } = new();
    public int TotaleEscursioni { get; set; }
    public decimal TotaleKm { get; set; }

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana – Trekking e tracce GPS";
        ViewData["MetaDescription"] = "Escursioni in Toscana: trekking Alpi Apuane, sentieri in Garfagnana e Versilia. Tracce GPS, foto e descrizioni di Luca Bigoni.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        UltimeEscursioni = await _repo.GetLatestAsync(8);
        Zone = await HikeDisplay.GetZonesAsync(_repo);
        // Diverse dalle "Ultime escursioni" mostrate subito sotto
        InEvidenza = Zone
            .Select(z => z.Hikes
                .Where(h => !UltimeEscursioni.Contains(h) && !string.IsNullOrWhiteSpace(CoverPath(h)))
                .OrderByDescending(h => h.QuotaMaxM ?? 0)
                .FirstOrDefault())
            .OfType<Hike>()
            .Take(3)
            .ToList();
        var all = await _repo.GetAllAsync(null, null);
        TotaleEscursioni = all.Count;
        TotaleKm = all.Sum(h => h.DistanzaKm ?? 0);

        // JSON-LD CollectionPage
        ViewData["JsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""CollectionPage"",
  ""name"": ""Escursioni in Toscana – Trekking e tracce GPS"",
  ""description"": ""Escursioni in Toscana: trekking Alpi Apuane, sentieri in Garfagnana e Versilia. Tracce GPS, foto e descrizioni di Luca Bigoni."",
  ""url"": ""{baseUrl}/"",
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""inLanguage"": ""it-IT""
}}";
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

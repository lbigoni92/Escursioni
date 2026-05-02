using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.OutputCaching;

namespace Escursioni.Web.Pages;

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

    public List<Hike> UltimeEscursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana – Trekking e tracce GPS";
        ViewData["MetaDescription"] = "Escursioni in Toscana: trekking Alpi Apuane, sentieri in Garfagnana e Versilia. Tracce GPS, foto e descrizioni di Luca Bigoni.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        UltimeEscursioni = await _repo.GetLatestAsync(8);

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

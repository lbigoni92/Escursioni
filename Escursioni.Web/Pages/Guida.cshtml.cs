using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

/// <summary>Guida tematica /guide/{slug}: testo, fonti e le escursioni scelte, da Data/guide.</summary>
public class GuidaModel : PageModel
{
    private readonly IReadOnlyList<ThemeGuide> _guides;
    private readonly HikeRepository _repo;
    private readonly IConfiguration _config;

    public GuidaModel(IReadOnlyList<ThemeGuide> guides, HikeRepository repo, IConfiguration config)
    {
        _guides = guides;
        _repo = repo;
        _config = config;
    }

    public ThemeGuide Guida { get; private set; } = null!;
    public List<Hike> Escursioni { get; private set; } = new();

    public IActionResult OnGet(string slug)
    {
        if (_guides.FirstOrDefault(g => g.Slug == slug) is not { } guida)
            return NotFound();
        Guida = guida;
        var byId = _repo.All.ToDictionary(h => h.WikilocId);
        Escursioni = guida.Escursioni.Where(byId.ContainsKey).Select(id => byId[id]).ToList();

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        var url = baseUrl + guida.Url;
        ViewData["Title"] = guida.TitoloSeo;
        ViewData["MetaDescription"] = guida.MetaDescrizione;
        ViewData["CanonicalUrl"] = url;
        ViewData["OgType"] = "article";
        var cover = Escursioni.Select(global::Escursioni.Web.Pages.Escursioni.IndexModel.CoverPath).FirstOrDefault(c => !string.IsNullOrWhiteSpace(c));
        ViewData["OgImage"] = cover != null ? $"{baseUrl}/{cover}" : $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { ("Escursioni", "/escursioni"), (guida.Titolo, "") };

        ViewData["JsonLd"] = System.Text.Json.JsonSerializer.Serialize(new Dictionary<string, object?>
        {
            ["@context"] = "https://schema.org",
            ["@type"] = "Article",
            ["headline"] = guida.Titolo,
            ["description"] = guida.MetaDescrizione,
            ["url"] = url,
            ["inLanguage"] = "it-IT",
            ["author"] = new Dictionary<string, object> { ["@type"] = "Person", ["@id"] = $"{baseUrl}/#luca-bigoni", ["name"] = "Luca Bigoni", ["url"] = $"{baseUrl}/chi-sono" },
            ["image"] = cover != null ? $"{baseUrl}/{cover}" : null,
            ["citation"] = guida.Fonti.Count > 0
                ? guida.Fonti.Select(f => new Dictionary<string, object> { ["@type"] = "CreativeWork", ["name"] = f.Titolo, ["url"] = f.Url }).ToList()
                : null,
            ["hasPart"] = Escursioni.Select(h => new Dictionary<string, object> { ["@type"] = "TouristTrip", ["name"] = HikeDisplay.Title(h), ["url"] = $"{baseUrl}/escursioni/{h.Slug}" }).ToList(),
        }, new System.Text.Json.JsonSerializerOptions { DefaultIgnoreCondition = System.Text.Json.Serialization.JsonIgnoreCondition.WhenWritingNull });
        return Page();
    }
}

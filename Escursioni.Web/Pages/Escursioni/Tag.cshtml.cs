using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Escursioni;

public class TagModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    private readonly IWebHostEnvironment _env;

    public TagModel(IHikeRepository repo, IConfiguration config, IWebHostEnvironment env)
    {
        _repo = repo;
        _config = config;
        _env = env;
    }

    /// <summary>Testo guida della zona (Data/zone-guide), se scritto.</summary>
    public ZoneGuide? Guida { get; private set; }

    [BindProperty(SupportsGet = true)]
    public string Slug { get; set; } = "";

    public string TagName { get; set; } = "";
    public string TagDescription { get; set; } = "";
    public List<Hike> Escursioni { get; set; } = new();
    public List<(string Tag, int Count)> AltreZone { get; set; } = new();

    public async Task<IActionResult> OnGet()
    {
        var tag = TagHelper.FromSlug(Slug);
        if (tag == null)
            return NotFound();

        TagName = tag;
        TagDescription = TagHelper.GetDescription(tag);
        Escursioni = await _repo.GetByTagAsync(tag);
        AltreZone = (await _repo.GetTagSummaryAsync()).Where(z => z.Tag != tag).ToList();
        ViewData["CurrentZone"] = tag;

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        var canonical = $"{baseUrl}/escursioni/zona/{Slug}";
        ViewData["Title"] = $"Escursioni {tag} | Luca Bigoni";
        // Sotto i ~155 caratteri che Google mostra nei risultati
        ViewData["MetaDescription"] = $"Escursioni {tag} con tracce GPS e foto. {TagDescription}".TrimEnd();
        Guida = ZoneGuide.Load(_env.ContentRootPath, Slug);
        if (Guida != null)
        {
            ViewData["Title"] = Guida.TitoloSeo;
            ViewData["MetaDescription"] = Guida.MetaDescrizione;
        }
        ViewData["CanonicalUrl"] = canonical;
        ViewData["OgType"] = "website";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)>
        {
            ("Escursioni", "/escursioni"),
            (tag, "")
        };

        // JSON-LD CollectionPage per la zona
        var safeTag = System.Text.Json.JsonEncodedText.Encode(tag).ToString();
        var safeDesc = System.Text.Json.JsonEncodedText.Encode(Guida?.MetaDescrizione ?? TagDescription).ToString();
        var citation = Guida is { Fonti.Count: > 0 }
            ? ",\n  \"citation\": [" + string.Join(", ", Guida.Fonti.Select(f =>
                $@"{{ ""@type"": ""CreativeWork"", ""name"": ""{System.Text.Json.JsonEncodedText.Encode(f.Titolo)}"", ""url"": ""{System.Text.Json.JsonEncodedText.Encode(f.Url)}"" }}")) + "]"
            : "";
        ViewData["JsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""CollectionPage"",
  ""name"": ""Escursioni {safeTag}"",
  ""description"": ""{safeDesc}"",
  ""url"": ""{canonical}"",
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""inLanguage"": ""it-IT"",
  ""numberOfItems"": {Escursioni.Count}{citation}
}}";

        // Breadcrumb JSON-LD
        ViewData["BreadcrumbJsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""BreadcrumbList"",
  ""itemListElement"": [
    {{""@type"": ""ListItem"", ""position"": 1, ""name"": ""Home"", ""item"": ""{baseUrl}/""}},
    {{""@type"": ""ListItem"", ""position"": 2, ""name"": ""Escursioni"", ""item"": ""{baseUrl}/escursioni""}},
    {{""@type"": ""ListItem"", ""position"": 3, ""name"": ""{safeTag}"", ""item"": ""{canonical}""}}
  ]
}}";

        return Page();
    }
}

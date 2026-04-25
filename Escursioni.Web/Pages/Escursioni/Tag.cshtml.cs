using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Escursioni;

public class TagModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public TagModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    [BindProperty(SupportsGet = true)]
    public string Slug { get; set; } = "";

    public string TagName { get; set; } = "";
    public string TagDescription { get; set; } = "";
    public List<Hike> Escursioni { get; set; } = new();

    public async Task<IActionResult> OnGet()
    {
        var tag = TagHelper.FromSlug(Slug);
        if (tag == null)
            return NotFound();

        TagName = tag;
        TagDescription = TagHelper.GetDescription(tag);
        Escursioni = await _repo.GetByTagAsync(tag);

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        var canonical = $"{baseUrl}/escursioni/zona/{Slug}";
        ViewData["Title"] = $"Escursioni {tag} | Luca Bigoni";
        ViewData["MetaDescription"] = $"Tutte le escursioni nella zona {tag}: tracce GPS, foto, dislivelli e descrizioni dettagliate dei sentieri. {TagDescription}";
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
        var safeDesc = System.Text.Json.JsonEncodedText.Encode(TagDescription).ToString();
        ViewData["JsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""CollectionPage"",
  ""name"": ""Escursioni {safeTag}"",
  ""description"": ""{safeDesc}"",
  ""url"": ""{canonical}"",
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""inLanguage"": ""it-IT"",
  ""numberOfItems"": {Escursioni.Count}
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

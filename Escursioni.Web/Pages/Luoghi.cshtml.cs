using System.Text.Json;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

/// <summary>Elenchi /vette, /rifugi, /passi, /laghi: i luoghi toccati dalle tracce GPX, dal più alto.</summary>
public class LuoghiModel : PageModel
{
    private readonly PlaceRepository _places;
    private readonly IConfiguration _config;

    public LuoghiModel(PlaceRepository places, IConfiguration config)
    {
        _places = places;
        _config = config;
    }

    private record PageText(string Title, string MetaDescription, string H1, string Subtitle, string SchemaType);

    private static readonly Dictionary<string, PageText> Texts = new()
    {
        ["vetta"] = new(
            "Vette raggiunte in ordine di altezza | Escursioni Luca Bigoni",
            "Tutte le vette che ho raggiunto nelle mie escursioni, in ordine di altezza, con zona, parco e tracce GPS dei percorsi.",
            "Le vette raggiunte",
            "Tutte le cime toccate dalle mie escursioni, dalla più alta alla più bassa. Sotto ogni vetta trovi le escursioni che ci passano, con traccia GPS, foto e descrizione del percorso.",
            "Mountain"),
        ["rifugio"] = new(
            "Rifugi e bivacchi lungo le mie escursioni | Escursioni Luca Bigoni",
            "I rifugi e i bivacchi da cui passano le mie escursioni, in ordine di quota, con zona, parco e tracce GPS dei percorsi.",
            "Rifugi e bivacchi",
            "I rifugi e i bivacchi da cui passano le mie escursioni, dal più alto al più basso: utili per una sosta o per spezzare un giro lungo. Controlla sempre aperture e servizi prima di partire.",
            "Place"),
        ["passo"] = new(
            "Passi e valichi attraversati | Escursioni Luca Bigoni",
            "Passi, foci e valichi attraversati nelle mie escursioni, in ordine di quota, con zona, parco e tracce GPS dei percorsi.",
            "Passi e valichi",
            "I passi, le foci e i valichi attraversati dalle mie escursioni, dal più alto al più basso, con le escursioni che ci passano.",
            "Place"),
        ["lago"] = new(
            "Laghi lungo le mie escursioni | Escursioni Luca Bigoni",
            "I laghi che ho raggiunto o costeggiato nelle mie escursioni, in ordine di quota, con zona, parco e tracce GPS dei percorsi.",
            "Laghi",
            "I laghi raggiunti o costeggiati dalle mie escursioni, dal più alto al più basso, compresi i bacini artificiali.",
            "LakeBodyOfWater"),
    };

    public PlaceType Type { get; private set; } = PlaceType.Vetta;
    public IReadOnlyList<Place> Luoghi { get; private set; } = [];
    public string H1 { get; private set; } = "";
    public string Subtitle { get; private set; } = "";

    public IActionResult OnGet(string tipo)
    {
        if (PlaceType.FromSlug(tipo) is not { } type)
            return NotFound();
        Type = type;
        Luoghi = _places.OfType(type);
        var text = Texts[type.Tipo];
        H1 = text.H1;
        Subtitle = text.Subtitle;

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["Title"] = text.Title;
        ViewData["MetaDescription"] = text.MetaDescription;
        ViewData["CanonicalUrl"] = $"{baseUrl}/{type.Slug}";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { (type.Titolo, "") };

        // JSON-LD ItemList: i luoghi con coordinate e quota, nello stesso ordine della pagina
        ViewData["JsonLd"] = JsonSerializer.Serialize(new Dictionary<string, object>
        {
            ["@context"] = "https://schema.org",
            ["@type"] = "ItemList",
            ["name"] = text.H1,
            ["url"] = $"{baseUrl}/{type.Slug}",
            ["numberOfItems"] = Luoghi.Count,
            ["itemListElement"] = Luoghi.Select((p, i) => new Dictionary<string, object?>
            {
                ["@type"] = "ListItem",
                ["position"] = i + 1,
                ["item"] = new Dictionary<string, object?>
                {
                    ["@type"] = text.SchemaType,
                    ["name"] = p.Nome,
                    ["url"] = $"{baseUrl}/{type.Slug}#{p.Anchor}",
                    ["geo"] = new Dictionary<string, object?>
                    {
                        ["@type"] = "GeoCoordinates",
                        ["latitude"] = p.Lat,
                        ["longitude"] = p.Lon,
                        ["elevation"] = p.QuotaM,
                    },
                },
            }),
        });
        return Page();
    }
}

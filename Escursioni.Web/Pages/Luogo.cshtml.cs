using System.Text.Json;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

/// <summary>
/// Pagina di un luogo con una scheda scritta a mano (Data/luoghi-schede), es. /rifugi/rifugio-del-freo:
/// testo con le fonti e tutte le escursioni che ci passano.
/// </summary>
public class LuogoModel : PageModel
{
    private readonly PlaceRepository _places;
    private readonly IConfiguration _config;

    public LuogoModel(PlaceRepository places, IConfiguration config)
    {
        _places = places;
        _config = config;
    }

    public Place Place { get; private set; } = null!;
    public PlaceSheet Scheda => Place.Scheda!;

    public IActionResult OnGet(string tipo, string slug)
    {
        if (PlaceType.FromSlug(tipo) is not { } type || _places.WithSheet(type, slug) is not { } place)
            return NotFound();
        Place = place;

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        var url = baseUrl + place.Url;
        var cover = place.Hikes.Select(IndexModel.CoverPath).FirstOrDefault(c => !string.IsNullOrWhiteSpace(c));
        ViewData["Title"] = Scheda.TitoloSeo;
        ViewData["MetaDescription"] = Scheda.MetaDescrizione;
        ViewData["CanonicalUrl"] = url;
        ViewData["OgImage"] = cover != null ? $"{baseUrl}/{cover}" : $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { (type.Titolo, "/" + type.Slug), (Scheda.Nome, "") };

        ViewData["JsonLd"] = JsonSerializer.Serialize(new Dictionary<string, object?>
        {
            ["@context"] = "https://schema.org",
            ["@type"] = type == PlaceType.Vetta ? "Mountain" : type == PlaceType.Lago ? "LakeBodyOfWater" : "Place",
            ["name"] = Scheda.Nome,
            ["url"] = url,
            ["description"] = Scheda.MetaDescrizione,
            ["geo"] = new Dictionary<string, object?>
            {
                ["@type"] = "GeoCoordinates",
                ["latitude"] = place.Lat,
                ["longitude"] = place.Lon,
                ["elevation"] = place.QuotaM,
            },
            ["containedInPlace"] = string.IsNullOrEmpty(place.Parco) ? null : new Dictionary<string, object> { ["@type"] = "Park", ["name"] = place.Parco },
        });
        return Page();
    }
}

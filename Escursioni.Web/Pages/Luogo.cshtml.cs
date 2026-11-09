using System.Text.Json;
using System.Text.RegularExpressions;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

/// <summary>
/// Pagina di un luogo, es. /rifugi/rifugio-del-freo: dati, partenze delle mie tracce, mappa ed escursioni
/// che ci passano. Con una scheda scritta a mano (Data/luoghi-schede) ha anche descrizione, storia e
/// fonti ed è indicizzata; senza scheda è noindex e fuori dalla sitemap, finché la scheda non c'è.
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
    public PlaceSheet? Scheda => Place.Scheda;

    /// <summary>Da dove partono le mie escursioni che passano di qui, con le escursioni di ogni partenza.</summary>
    public IReadOnlyList<(string Partenza, List<Hike> Hikes)> Partenze { get; private set; } = [];

    /// <summary>Descrizione ricavata dai dati per i luoghi senza scheda.</summary>
    public string DescrizioneAutomatica { get; private set; } = "";

    public IActionResult OnGet(string tipo, string slug)
    {
        if (PlaceType.FromSlug(tipo) is not { } type || _places.BySlug(type, slug) is not { } place)
            return NotFound();
        Place = place;
        Partenze = place.Hikes
            .GroupBy(h => StartName(h) ?? "")
            .Where(g => g.Key != "")
            .OrderByDescending(g => g.Count())
            .Select(g => (g.Key, g.ToList()))
            .ToList();

        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        var url = baseUrl + place.Url;
        var cover = place.Hikes.Select(IndexModel.CoverPath).FirstOrDefault(c => !string.IsNullOrWhiteSpace(c));
        var quota = place.QuotaM is int q ? $" ({HikeDisplay.Meters(q)})" : "";
        if (Scheda != null)
        {
            ViewData["Title"] = Scheda.TitoloSeo;
            ViewData["MetaDescription"] = Scheda.MetaDescrizione;
        }
        else
        {
            DescrizioneAutomatica = BuildDescription(place);
            ViewData["Title"] = $"{place.Nome}{quota}: le mie escursioni";
            ViewData["MetaDescription"] = DescrizioneAutomatica;
            // Pagina utile a chi naviga il sito, ma troppo corta per Google finché non ha una scheda scritta
            ViewData["RobotsDirective"] = "noindex, follow";
        }
        ViewData["CanonicalUrl"] = url;
        ViewData["OgImage"] = cover != null ? $"{baseUrl}/{cover}" : $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { (type.Titolo, "/" + type.Slug), (place.NomeCompleto, "") };

        ViewData["JsonLd"] = JsonSerializer.Serialize(new Dictionary<string, object?>
        {
            ["@context"] = "https://schema.org",
            ["@type"] = type == PlaceType.Vetta ? "Mountain" : type == PlaceType.Lago ? "LakeBodyOfWater" : type == PlaceType.Cascata ? "Waterfall" : "Place",
            ["name"] = place.NomeCompleto,
            ["url"] = url,
            ["description"] = (string?)ViewData["MetaDescription"],
            ["geo"] = new Dictionary<string, object?>
            {
                ["@type"] = "GeoCoordinates",
                ["latitude"] = place.Lat,
                ["longitude"] = place.Lon,
                ["elevation"] = place.QuotaM,
            },
            ["containedInPlace"] = string.IsNullOrEmpty(place.Parco) ? null : new Dictionary<string, object> { ["@type"] = "Park", ["name"] = place.Parco },
            ["image"] = cover != null ? $"{baseUrl}/{cover}" : null,
            // Fonti della scheda: da dove vengono i fatti storici citati nel testo
            ["citation"] = place.Scheda is { Fonti.Count: > 0 } s
                ? s.Fonti.Select(f => new Dictionary<string, object> { ["@type"] = "CreativeWork", ["name"] = string.IsNullOrWhiteSpace(f.Titolo) ? f.Url : f.Titolo, ["url"] = f.Url }).ToList()
                : null,
        }, new JsonSerializerOptions { DefaultIgnoreCondition = System.Text.Json.Serialization.JsonIgnoreCondition.WhenWritingNull });
        return Page();
    }

    /// <summary>Nome della partenza: il primo grassetto di "Come arrivare" ("Si parte da <strong>Passo Croce</strong>...").</summary>
    public static string? StartName(Hike h)
    {
        var m = Regex.Match(h.ComeArrivare ?? "", @"<strong>(.*?)</strong>");
        return m.Success ? Regex.Replace(m.Groups[1].Value, "<[^>]+>", "").Trim() : null;
    }

    private static string BuildDescription(Place p)
    {
        var tipo = p.Type.Singolare.ToLowerInvariant();
        var dove = string.Join(", ", new[] { p.Zona, string.IsNullOrEmpty(p.Parco) ? null : p.Parco }.OfType<string>());
        var quota = p.QuotaM is int q ? $" a {HikeDisplay.Meters(q)}" : "";
        var volte = p.Hikes.Count == 1 ? "una delle mie escursioni" : $"{p.Hikes.Count} delle mie escursioni";
        return $"{p.Nome}: {tipo}{quota}{(dove != "" ? $" ({dove})" : "")}. Ci passano {volte}, con traccia GPS, foto e partenza.";
    }
}

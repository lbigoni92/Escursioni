using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    private readonly IConfiguration _config;
    private readonly PlaceRepository _places;

    public IndexModel(IHikeRepository repo, IConfiguration config, PlaceRepository places)
    {
        _repo = repo;
        _config = config;
        _places = places;
    }

    /// <summary>Vette raggiunte, dalla più alta (Data/luoghi.json).</summary>
    public IReadOnlyList<Place> Vette => _places.OfType(PlaceType.Vetta);
    /// <summary>Quanti luoghi per tipo (vette, rifugi, passi, laghi), solo i tipi presenti.</summary>
    public List<(PlaceType Type, int Count)> Luoghi => PlaceType.All
        .Select(t => (t, _places.OfType(t).Count))
        .Where(x => x.Item2 > 0)
        .ToList();

    public int TotaleDislivello { get; set; }
    /// <summary>Record personali: titolo, valore e escursione (si aggiornano da soli con le escursioni nuove).</summary>
    public List<(string Label, string Value, Hike Hike)> Record { get; set; } = new();

    /// <summary>Everest: 8.849 m, per dare un'idea del dislivello totale.</summary>
    public const int EverestM = 8849;

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
        TotaleDislivello = all.Sum(h => h.DislivelloM ?? 0);
        if (all.MaxBy(h => h.DistanzaKm ?? 0) is { DistanzaKm: decimal km } longest)
            Record.Add(("La più lunga", HikeDisplay.Decimal1(km) + " km", longest));
        if (all.MaxBy(h => h.DislivelloM ?? 0) is { DislivelloM: int gain } steepest)
            Record.Add(("Più dislivello", "+" + HikeDisplay.Meters(gain), steepest));
        if (all.MaxBy(h => h.QuotaMaxM ?? 0) is { QuotaMaxM: int top } highest)
            Record.Add(("Quota più alta", HikeDisplay.Meters(top), highest));

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

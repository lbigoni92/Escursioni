using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Escursioni;

public class DettaglioModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly SeoService _seo;
    private readonly IWebHostEnvironment _env;
    private readonly PlaceRepository _places;

    public DettaglioModel(IHikeRepository repo, SeoService seo, IWebHostEnvironment env, PlaceRepository places)
    {
        _repo = repo;
        _seo = seo;
        _env = env;
        _places = places;
    }

    /// <summary>Vette, rifugi, passi e laghi toccati dalla traccia, dal più alto.</summary>
    public IReadOnlyList<Place> Luoghi => Hike == null ? [] : _places.ForHike(Hike);

    public Hike? Hike { get; set; }
    public bool GpxValid { get; set; }
    public List<Hike> RelatedHikes { get; set; } = new();
    /// <summary>Zona con pagina dedicata, se presente.</summary>
    public string? Zone { get; set; }
    /// <summary>Escursioni adiacenti nella stessa zona (ordine per data): navigazione precedente/successiva.</summary>
    public Hike? Precedente { get; set; }
    public Hike? Successiva { get; set; }

    /// <summary>Una delle volte in cui ho fatto l'escursione: la traccia ha un colore sulla mappa (null se il GPX manca).</summary>
    public record Volta(Hike Hike, string? Etichetta, string? GpxUrl, string? Colore);

    /// <summary>Tutte le volte (questa compresa), dalla più recente. Vuota se l'escursione non ha varianti.</summary>
    public List<Volta> Volte { get; set; } = new();

    /// <summary>Uscite diverse: andata e ritorno registrate a parte contano come una sola.</summary>
    public int Uscite => Volte.Select(v => v.Hike.DataEscursione).Distinct().Count();

    /// <summary>Punto di partenza: primo waypoint del GPX, altrimenti primo punto della traccia.</summary>
    public (decimal Lat, decimal Lon)? Partenza { get; set; }

    // La principale usa --primary del tema; le altre volte questi colori, leggibili su entrambi i temi
    private static readonly string[] ColoriVarianti = ["#e07a2f", "#8b7cf6", "#2f8fd8", "#d65a9a", "#b59a1e"];

    public async Task<IActionResult> OnGetAsync(string slug)
    {
        Hike = await _repo.GetBySlugAsync(slug);

        if (Hike == null)
        {
            // If the slug matches a known tag, redirect to the tag page
            var tag = TagHelper.FromSlug(slug);
            if (tag != null)
                return RedirectToPagePermanent("/Escursioni/Tag", new { slug });
            return NotFound();
        }

        _seo.ConfigureForHike(this, Hike);

        if (Hike.WikilocId > 0)
        {
            GpxValid = GpxExists(Hike);
            if (GpxValid)
                Partenza = ReadStart(GpxPath(Hike));
        }

        if (Hike.AltreVolte.Count > 0)
        {
            var colore = 0;
            // Stessa traccia caricata due volte su Wikiloc: una riga sola (vince la principale)
            Volte = Hike.AltreVolte.Prepend(Hike)
                .DistinctBy(HikeRepository.OutingKey)
                .OrderByDescending(HikeRepository.SortDate)
                .ThenBy(v => Etichetta(v) == "ritorno" ? 1 : 0)
                .Select(v =>
                {
                    var gpx = GpxExists(v) ? Url.Content($"~/media/gpx/{v.WikilocId}.gpx") : null;
                    var color = gpx == null ? null : v == Hike ? "var(--primary)" : ColoriVarianti[colore++ % ColoriVarianti.Length];
                    return new Volta(v, Etichetta(v), gpx, color);
                })
                .ToList();
        }

        RelatedHikes = await _repo.GetRelatedAsync(Hike.Id, Hike.Comune, Hike.Provincia, Hike.CentroidLat, Hike.CentroidLon);

        Zone = HikeDisplay.Zone(Hike);
        if (Zone != null)
        {
            ViewData["CurrentZone"] = Zone;
            // GetByTagAsync ordina dalla più recente: "precedente" è quella fatta prima
            var zoneHikes = await _repo.GetByTagAsync(Zone);
            var index = zoneHikes.FindIndex(h => h.Id == Hike.Id);
            if (index >= 0)
            {
                Successiva = index > 0 ? zoneHikes[index - 1] : null;
                Precedente = index < zoneHikes.Count - 1 ? zoneHikes[index + 1] : null;
            }
        }

        return Page();
    }

    /// <summary>"andata" o "ritorno" quando il titolo Wikiloc lo dice (escursioni registrate in due tracce).</summary>
    private static string? Etichetta(Hike h)
        => h.Titolo.Contains("andata", StringComparison.OrdinalIgnoreCase) ? "andata"
         : h.Titolo.Contains("ritorno", StringComparison.OrdinalIgnoreCase) ? "ritorno"
         : null;

    private string GpxPath(Hike h) => Path.Combine(_env.WebRootPath, "media", "gpx", $"{h.WikilocId}.gpx");

    private bool GpxExists(Hike h) => h.WikilocId > 0 && System.IO.File.Exists(GpxPath(h)) && IsValidGpx(GpxPath(h));

    /// <summary>Come parking-leaflet.js: primo waypoint (di solito "Parcheggio"), altrimenti primo punto della traccia.</summary>
    private static (decimal Lat, decimal Lon)? ReadStart(string path)
    {
        try
        {
            var doc = System.Xml.Linq.XDocument.Load(path);
            var point = doc.Descendants().FirstOrDefault(e => e.Name.LocalName == "wpt")
                ?? doc.Descendants().FirstOrDefault(e => e.Name.LocalName is "trkpt" or "rtept");
            if (point != null
                && decimal.TryParse((string?)point.Attribute("lat"), System.Globalization.CultureInfo.InvariantCulture, out var lat)
                && decimal.TryParse((string?)point.Attribute("lon"), System.Globalization.CultureInfo.InvariantCulture, out var lon))
                return (Math.Round(lat, 6), Math.Round(lon, 6));
        }
        catch (System.Xml.XmlException)
        {
        }
        return null;
    }

    private static bool IsValidGpx(string path)
    {
        using var reader = new StreamReader(path);
        var buffer = new char[64];
        var read = reader.Read(buffer, 0, buffer.Length);
        var start = new string(buffer, 0, read).TrimStart();
        return start.StartsWith("<?xml", StringComparison.OrdinalIgnoreCase)
            || start.StartsWith("<gpx", StringComparison.OrdinalIgnoreCase);
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

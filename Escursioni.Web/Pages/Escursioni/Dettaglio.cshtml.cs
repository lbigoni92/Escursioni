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
            var gpxPath = Path.Combine(_env.WebRootPath, "media", "gpx", $"{Hike.WikilocId}.gpx");
            GpxValid = System.IO.File.Exists(gpxPath) && IsValidGpx(gpxPath);
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

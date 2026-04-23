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

    public DettaglioModel(IHikeRepository repo, SeoService seo, IWebHostEnvironment env)
    {
        _repo = repo;
        _seo = seo;
        _env = env;
    }

    public Hike? Hike { get; set; }
    public bool GpxValid { get; set; }
    public List<Hike> RelatedHikes { get; set; } = new();

    public async Task<IActionResult> OnGetAsync(string slug)
    {
        Hike = await _repo.GetBySlugAsync(slug);

        if (Hike == null)
            return NotFound();

        _seo.ConfigureForHike(this, Hike);

        if (Hike.WikilocId > 0)
        {
            var gpxPath = Path.Combine(_env.WebRootPath, "media", "gpx", $"{Hike.WikilocId}.gpx");
            GpxValid = System.IO.File.Exists(gpxPath) && IsValidGpx(gpxPath);
        }

        RelatedHikes = await _repo.GetRelatedAsync(Hike.Id, Hike.Comune, Hike.Provincia, Hike.CentroidLat, Hike.CentroidLon);

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

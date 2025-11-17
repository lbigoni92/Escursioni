using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Escursioni;

public class DettaglioModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly SeoService _seo;

    public DettaglioModel(IHikeRepository repo, SeoService seo)
    {
        _repo = repo;
        _seo = seo;
    }

    public Hike? Hike { get; set; }

    public async Task<IActionResult> OnGetAsync(int id, string? slug)
    {
        Hike = await _repo.GetByIdAsync(id);

        if (Hike == null)
            return NotFound();

        _seo.ConfigureForHike(this, Hike);

        return Page();
    }

    public static string? CoverPath(Hike h)
        => h.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
}

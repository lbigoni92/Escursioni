using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    public IndexModel(IHikeRepository repo)
    {
        _repo = repo;
    }

    public List<Hike> UltimeEscursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Home";
        var desc = "Scopri le mie escursioni in montagna con tracce GPS, foto e dettagli tecnici. Percorsi escursionistici in Toscana e non solo.";
        var metaDesc = $"Home - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        UltimeEscursioni = await _repo.GetLatestAsync(8);
    }

    public static string? CoverPath(Hike h)
        => h.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
}

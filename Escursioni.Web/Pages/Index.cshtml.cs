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
        UltimeEscursioni = await _repo.GetLatestAsync(6);
    }

    public static string? CoverPath(Hike h)
        => h.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
}

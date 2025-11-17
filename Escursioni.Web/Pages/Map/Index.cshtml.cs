using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Map;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    public IndexModel(IHikeRepository repo)
    {
        _repo = repo;
    }

    public List<Hike> Escursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Mappa escursioni";
        Escursioni = await _repo.GetWithCoordinatesAsync();
    }
}

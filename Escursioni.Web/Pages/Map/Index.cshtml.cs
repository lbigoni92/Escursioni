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
        var desc = "Mappa interattiva di tutte le escursioni con tracce GPS. Esplora i percorsi sulla cartina e trova la tua prossima avventura.";
        var metaDesc = $"Mappa escursioni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        Escursioni = await _repo.GetWithCoordinatesAsync();
    }
}

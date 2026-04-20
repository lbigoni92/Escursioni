using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Map;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<Hike> Escursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Mappa escursioni";
        var desc = "Mappa interattiva di tutte le escursioni con tracce GPS. Esplora i percorsi sulla cartina e trova la tua prossima avventura.";
        var metaDesc = $"Mappa escursioni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursioni.onrender.com").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/mappa";
        Escursioni = await _repo.GetWithCoordinatesAsync();
    }
}

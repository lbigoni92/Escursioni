using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<Hike> UltimeEscursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni in Toscana – Trekking, sentieri e tracce GPS | Luca Bigoni";
        ViewData["MetaDescription"] = "Escursioni in Toscana, trekking sulle Alpi Apuane, sentieri in Garfagnana e Versilia. Tracce GPS, foto e descrizioni dettagliate di Luca Bigoni.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/";
        ViewData["OgImage"] = $"{baseUrl}/favicon.svg";
        UltimeEscursioni = await _repo.GetLatestAsync(8);
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

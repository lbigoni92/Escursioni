using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.OutputCaching;

namespace Escursioni.Web.Pages.Map;

[OutputCache(PolicyName = "PagesSlow")]
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
        ViewData["Title"] = "Mappa escursioni in Toscana e Italia | Luca Bigoni";
        var desc = "Mappa interattiva di tutte le escursioni e trekking con tracce GPS in Toscana, Alpi Apuane, Garfagnana e oltre. Esplora i percorsi e trova la tua prossima avventura.";
        var metaDesc = $"Mappa escursioni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/mappa";
        ViewData["FullWidth"] = true;
        Escursioni = await _repo.GetWithCoordinatesAsync();
    }
}

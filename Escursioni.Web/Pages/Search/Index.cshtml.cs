using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Search;

/// <summary>
/// La pagina viene generata una sola volta (statica): filtri e risultati sono
/// calcolati nel browser da wwwroot/js/search.js leggendo /data/search-index.json.
/// </summary>
public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    public IndexModel(IHikeRepository repo)
    {
        _repo = repo;
    }

    public List<string> DifficoltaDisponibili { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["RobotsDirective"] = "noindex, follow";
        DifficoltaDisponibili = (await _repo.GetDistinctDifficoltaAsync()).ToList();
    }
}

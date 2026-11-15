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
        // Dalla più facile alla più impegnativa, non in ordine alfabetico
        string[] ordine = ["Facile", "Medio", "Difficile", "Molto difficile", "Per esperti"];
        DifficoltaDisponibili = (await _repo.GetDistinctDifficoltaAsync())
            .OrderBy(d => Array.FindIndex(ordine, o => string.Equals(o, d, StringComparison.OrdinalIgnoreCase)) is var i and >= 0 ? i : 99)
            .ToList();
    }
}

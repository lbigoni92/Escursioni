using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Search;

public class IndexModel : PageModel
{
    private readonly ISearchService _search;

    public IndexModel(ISearchService search)
    {
        _search = search;
    }

    [BindProperty(SupportsGet = true)]
    public string? Q { get; set; }

    public List<Hike> Results { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Ricerca";
        Results = await _search.SearchAsync(Q);
    }
}

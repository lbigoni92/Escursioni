using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Search;

public class IndexModel : PageModel
{
    private readonly ISearchService _search;
    private const int PageSize = 6;

    public IndexModel(ISearchService search)
    {
        _search = search;
    }

    [BindProperty(SupportsGet = true)]
    public string? Q { get; set; }

    [BindProperty(SupportsGet = true)]
    public string? Comune { get; set; }

    [BindProperty(SupportsGet = true)]
    public string? Difficolta { get; set; }

    [BindProperty(SupportsGet = true)]
    public string? OrdinaPer { get; set; }

    [BindProperty(SupportsGet = true)]
    public int PageNumber { get; set; } = 1;

    public int TotalCount { get; set; }
    public int TotalPages { get; set; }

    public List<string> ComuniDisponibili { get; set; } = new();
    public List<string> DifficoltaDisponibili { get; set; } = new();
    public List<Hike> Results { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Ricerca";

        if (PageNumber < 1)
            PageNumber = 1;

        // carico liste per datalist & filtri
        ComuniDisponibili = (await _search.GetComuniAsync()).ToList();
        DifficoltaDisponibili = (await _search.GetDifficoltaAsync()).ToList();

        var result = await _search.SearchAsync(
            Q,
            Comune,
            Difficolta,
            OrdinaPer,
            page: PageNumber,
            pageSize: PageSize
        );

        Results = result.Items;
        TotalCount = result.TotalCount;
        TotalPages = (int)Math.Ceiling(TotalCount / (double)PageSize);

        if (TotalPages == 0)
        {
            PageNumber = 1;
        }
        else if (PageNumber > TotalPages)
        {
            PageNumber = TotalPages;
        }
    }
}

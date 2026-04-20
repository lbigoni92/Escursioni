using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Search;

public class IndexModel : PageModel
{
    private readonly ISearchService _search;
    private const int PageSize = 8;

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
    public int RaggioKm { get; set; } = 0;

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
        var desc = "Cerca escursioni per comune, difficoltà o testo libero. Trova il percorso perfetto tra tutte le escursioni disponibili.";
        var metaDesc = $"Ricerca - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        ViewData["RobotsDirective"] = "noindex, follow";

        if (PageNumber < 1)
            PageNumber = 1;

        // carico liste per datalist & filtri
        ComuniDisponibili = (await _search.GetComuniAsync()).ToList();
        DifficoltaDisponibili = (await _search.GetDifficoltaAsync()).ToList();

        // Le due modalità sono mutuamente esclusive:
        // - Se c'è un Comune → ricerca per località (ignora Q/Difficolta)
        // - Altrimenti → ricerca per testo libero (ignora Comune/RaggioKm)
        string? searchQ, searchComune, searchDifficolta, searchOrdinaPer;
        int searchRaggioKm;

        if (!string.IsNullOrWhiteSpace(Comune))
        {
            searchComune = Comune;
            searchRaggioKm = RaggioKm;
            searchQ = null;
            searchDifficolta = null;
            searchOrdinaPer = "distanza_asc";
        }
        else
        {
            searchQ = Q;
            searchDifficolta = Difficolta;
            searchOrdinaPer = OrdinaPer;
            searchComune = null;
            searchRaggioKm = 0;
        }

        var result = await _search.SearchAsync(
            searchQ,
            searchComune,
            searchDifficolta,
            searchOrdinaPer,
            page: PageNumber,
            pageSize: PageSize,
            raggioKm: searchRaggioKm
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

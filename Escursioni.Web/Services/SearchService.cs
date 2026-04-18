using Escursioni.Web.Data;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

public class SearchService : ISearchService
{
    private readonly IHikeRepository _hikes;

    public SearchService(IHikeRepository hikes)
    {
        _hikes = hikes;
    }

    // Metodo interno che puoi usare altrove se vuoi il paging completo
    public Task<PagedResult<Hike>> SearchPagedAsync(
        string? q,
        string? comune,
        string? difficolta,
        string? orderBy,
        int page,
        int pageSize,
        int raggioKm = 0)
        => _hikes.SearchAsync(q, comune, difficolta, orderBy, page, pageSize, raggioKm);

    // Implementazione dell'interfaccia ISearchService
    public async Task<SearchResult> SearchAsync(
        string? q,
        string? comune,
        string? difficolta,
        string? ordinaPer,
        int page,
        int pageSize,
        int raggioKm = 0)
    {
        var paged = await _hikes.SearchAsync(q, comune, difficolta, ordinaPer, page, pageSize, raggioKm);

        return new SearchResult
        {
            Items = paged.Items,
            TotalCount = paged.TotalCount
        };
    }

    public Task<IReadOnlyList<string>> GetComuniAsync()
        => _hikes.GetDistinctComuniAsync();

    public Task<IReadOnlyList<string>> GetDifficoltaAsync()
        => _hikes.GetDistinctDifficoltaAsync();
}

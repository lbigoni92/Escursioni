using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

public class SearchResult
{
    public List<Hike> Items { get; set; } = new();
    public int TotalCount { get; set; }
}

public interface ISearchService
{
    Task<SearchResult> SearchAsync(
        string? q,
        string? comune,
        string? difficolta,
        string? ordinaPer,
        int page,
        int pageSize,
        int raggioKm = 0
    );

    Task<IReadOnlyList<string>> GetComuniAsync();
    Task<IReadOnlyList<string>> GetDifficoltaAsync();
}

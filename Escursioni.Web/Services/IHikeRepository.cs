using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

public interface IHikeRepository
{

    Task<PagedResult<Hike>> SearchAsync(
        string? q,
        string? comune,
        string? difficolta,
        string? orderBy,
        int page,
        int pageSize);

    Task<IReadOnlyList<string>> GetDistinctComuniAsync();
    Task<IReadOnlyList<string>> GetDistinctDifficoltaAsync();
    Task<List<Hike>> GetLatestAsync(int count);
    Task<List<Hike>> GetAllAsync(string? regione, string? difficolta);
    Task<Hike?> GetByIdAsync(int id);
    Task<List<Hike>> GetWithCoordinatesAsync();
    Task<List<Hike>> GetForRssAsync(int maxItems);
}

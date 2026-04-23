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
        int pageSize,
        int raggioKm = 0);

    Task<IReadOnlyList<string>> GetDistinctComuniAsync();
    Task<IReadOnlyList<string>> GetDistinctDifficoltaAsync();
    Task<List<Hike>> GetLatestAsync(int count);
    Task<List<Hike>> GetAllAsync(string? regione, string? difficolta);
    Task<Hike?> GetByIdAsync(int id);
    Task<Hike?> GetBySlugAsync(string slug);
    Task<List<Hike>> GetWithCoordinatesAsync();
    Task<List<Hike>> GetForRssAsync(int maxItems);
    Task<List<Hike>> GetRelatedAsync(int hikeId, string? comune, string? provincia, decimal? lat, decimal? lon, int count = 4);
    Task<List<(string Tag, int Count)>> GetTagSummaryAsync();
    Task<List<Hike>> GetByTagAsync(string tag);
}

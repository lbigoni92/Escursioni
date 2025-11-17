using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

public interface IHikeRepository
{
    Task<List<Hike>> GetLatestAsync(int count);
    Task<List<Hike>> GetAllAsync(string? regione, string? difficolta);
    Task<Hike?> GetByIdAsync(int id);
    Task<List<Hike>> GetWithCoordinatesAsync();
    Task<List<Hike>> GetForRssAsync(int maxItems);
}

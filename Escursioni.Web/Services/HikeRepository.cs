using Escursioni.Web.Data;
using Escursioni.Web.Models;
using Microsoft.EntityFrameworkCore;

namespace Escursioni.Web.Services;

public class HikeRepository : IHikeRepository
{
    private readonly EscursioniDbContext _db;

    public HikeRepository(EscursioniDbContext db)
    {
        _db = db;
    }

    public async Task<List<Hike>> GetLatestAsync(int count)
    {
        return await _db.Hikes
            .Include(h => h.Media)
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .Take(count)
            .ToListAsync();
    }

    public async Task<List<Hike>> GetAllAsync(string? regione, string? difficolta)
    {
        var query = _db.Hikes
            .Include(h => h.Media)
            .AsQueryable();

        if (!string.IsNullOrWhiteSpace(regione))
        {
            var r = regione.Trim().ToLowerInvariant();
            query = query.Where(h => (h.Regione ?? "").ToLower().Contains(r));
        }

        if (!string.IsNullOrWhiteSpace(difficolta))
        {
            var d = difficolta.Trim().ToLowerInvariant();
            query = query.Where(h => (h.Difficolta ?? "").ToLower().Contains(d));
        }

        return await query
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .ToListAsync();
    }

    public async Task<Hike?> GetByIdAsync(int id)
    {
        return await _db.Hikes
            .Include(h => h.Media)
            .Include(h => h.Tags)
            .FirstOrDefaultAsync(h => h.Id == id);
    }

    public async Task<List<Hike>> GetWithCoordinatesAsync()
    {
        return await _db.Hikes
            .Where(h => h.CentroidLat.HasValue && h.CentroidLon.HasValue)
            .ToListAsync();
    }

    public async Task<List<Hike>> GetForRssAsync(int maxItems)
    {
        return await _db.Hikes
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .Take(maxItems)
            .ToListAsync();
    }
}

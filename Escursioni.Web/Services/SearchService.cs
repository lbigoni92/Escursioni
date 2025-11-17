using Escursioni.Web.Data;
using Escursioni.Web.Models;
using Microsoft.EntityFrameworkCore;

namespace Escursioni.Web.Services;

public class SearchService : ISearchService
{
    private readonly EscursioniDbContext _db;

    public SearchService(EscursioniDbContext db)
    {
        _db = db;
    }

    public async Task<List<Hike>> SearchAsync(string? query)
    {
        var q = _db.Hikes.AsQueryable();

        if (!string.IsNullOrWhiteSpace(query))
        {
            var term = query.Trim().ToLowerInvariant();

            q = q.Where(h =>
                h.Titolo.ToLower().Contains(term) ||
                ((h.Descrizione ?? "").ToLower().Contains(term)) ||
                ((h.Comune ?? "").ToLower().Contains(term)) ||
                ((h.Provincia ?? "").ToLower().Contains(term)) ||
                ((h.Regione ?? "").ToLower().Contains(term))
            );
        }

        return await q
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .ToListAsync();
    }
}

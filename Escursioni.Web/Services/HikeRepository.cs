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
    public async Task<PagedResult<Hike>> SearchAsync(
     string? q,
     string? comune,
     string? difficolta,
     string? orderBy,
     int page,
     int pageSize)
    {
        var query = _db.Hikes
            .Include(h => h.Media) // se hai la navigation; altrimenti puoi rimuovere
            .AsQueryable();

        // filtro per comune: input libero + suggerimenti dal datalist
        if (!string.IsNullOrWhiteSpace(comune))
        {
            var comuneLower = comune.Trim().ToLower();
            query = query.Where(h =>
                h.Comune != null &&
                h.Comune.ToLower().StartsWith(comuneLower));
        }

        // filtro per difficoltà
        if (!string.IsNullOrWhiteSpace(difficolta))
        {
            query = query.Where(h => h.Difficolta == difficolta);
        }

        // filtro testo libero: titolo, descrizione, comune, provincia, regione
        if (!string.IsNullOrWhiteSpace(q))
        {
            var qLower = q.Trim().ToLower();
            query = query.Where(h =>
                h.Titolo.ToLower().Contains(qLower) ||
                (h.Descrizione != null && h.Descrizione.ToLower().Contains(qLower)) ||
                (h.Comune != null && h.Comune.ToLower().Contains(qLower)) ||
                (h.Provincia != null && h.Provincia.ToLower().Contains(qLower)) ||
                (h.Regione != null && h.Regione.ToLower().Contains(qLower)));
        }

        // ordinamento
        orderBy ??= "data_desc";

        query = orderBy switch
        {
            "data_asc" => query
                .OrderBy(h => h.DataEscursione ?? h.DataPubblicazione ?? h.DataCaricato ?? h.CreatedAt)
                .ThenBy(h => h.Id),

            "nome_asc" => query
                .OrderBy(h => h.Titolo)
                .ThenBy(h => h.Id),

            "nome_desc" => query
                .OrderByDescending(h => h.Titolo)
                .ThenByDescending(h => h.Id),

            "comune_asc" => query
                .OrderBy(h => h.Comune)
                .ThenBy(h => h.Provincia)
                .ThenBy(h => h.Id),

            "dislivello_desc" => query
                .OrderByDescending(h => h.DislivelloM)
                .ThenByDescending(h => h.Id),

            "distanza_desc" => query
                .OrderByDescending(h => h.DistanzaKm)
                .ThenByDescending(h => h.Id),

            _ => query // default: più recenti prima
                .OrderByDescending(h => h.DataEscursione ?? h.DataPubblicazione ?? h.DataCaricato ?? h.CreatedAt)
                .ThenByDescending(h => h.Id),
        };

        var total = await query.CountAsync();

        if (page < 1) page = 1;
        var skip = (page - 1) * pageSize;

        var items = await query
            .Skip(skip)
            .Take(pageSize)
            .ToListAsync();

        return new PagedResult<Hike>
        {
            Items = items,
            TotalCount = total,
            Page = page,
            PageSize = pageSize
        };
    }


    public async Task<IReadOnlyList<string>> GetDistinctComuniAsync()
    {
        return await _db.Hikes
            .Where(h => h.Comune != null && h.Comune != "")
            .Select(h => h.Comune!)
            .Distinct()
            .OrderBy(c => c)
            .ToListAsync();
    }

    public async Task<IReadOnlyList<string>> GetDistinctDifficoltaAsync()
    {
        return await _db.Hikes
            .Where(h => h.Difficolta != null && h.Difficolta != "")
            .Select(h => h.Difficolta!)
            .Distinct()
            .OrderBy(d => d)
            .ToListAsync();
    }

    public async Task<List<Hike>> GetLatestAsync(int count)
    {
        return await _db.Hikes
            .Where(h => h.DataEscursione.HasValue)
            .Include(h => h.Media)
            .OrderByDescending(h => h.DataEscursione)
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

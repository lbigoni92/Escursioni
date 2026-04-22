using Escursioni.Web.Data;
using Escursioni.Web.Models;
using Microsoft.EntityFrameworkCore;

namespace Escursioni.Web.Services;

public class HikeRepository : IHikeRepository
{
    private readonly EscursioniDbContext _db;
    private readonly GeocodingService _geocoding;

    public HikeRepository(EscursioniDbContext db, GeocodingService geocoding)
    {
        _db = db;
        _geocoding = geocoding;
    }
    public async Task<PagedResult<Hike>> SearchAsync(
     string? q,
     string? comune,
     string? difficolta,
     string? orderBy,
     int page,
     int pageSize,
     int raggioKm = 0)
    {
        var query = _db.Hikes
            .Include(h => h.Media) // se hai la navigation; altrimenti puoi rimuovere
            .AsQueryable();

        // filtro per comune: con ricerca di prossimità se raggioKm > 0
        decimal? centerLat = null, centerLon = null;

        if (!string.IsNullOrWhiteSpace(comune))
        {
            var comuneLower = comune.Trim().ToLower();

            // Se il raggio non è stato specificato, default a 20 km per ricerca geografica
            if (raggioKm <= 0)
                raggioKm = 20;

            // 1) Geocodifica la città via Nominatim per ottenere il centro reale
            var geo = await _geocoding.GeocodeAsync(comune.Trim());
            if (geo != null)
            {
                centerLat = geo.Lat;
                centerLon = geo.Lon;
            }
            else
            {
                // 2) Fallback: centroide medio delle escursioni nel comune nel DB
                var comuneCenter = await _db.Hikes
                    .Where(h => h.Comune != null &&
                                h.Comune.ToLower() == comuneLower &&
                                h.CentroidLat.HasValue && h.CentroidLon.HasValue)
                    .GroupBy(_ => 1)
                    .Select(g => new
                    {
                        Lat = g.Average(h => h.CentroidLat!.Value),
                        Lon = g.Average(h => h.CentroidLon!.Value)
                    })
                    .FirstOrDefaultAsync();

                if (comuneCenter != null)
                {
                    centerLat = comuneCenter.Lat;
                    centerLon = comuneCenter.Lon;
                }
            }

            if (centerLat.HasValue && centerLon.HasValue)
            {
                // Bounding box approssimativo per pre-filtrare (1° lat ≈ 111 km)
                var deltaLat = (decimal)raggioKm / 111m;
                var deltaLon = (decimal)raggioKm / (111m * (decimal)Math.Cos((double)centerLat * Math.PI / 180));

                var minLat = centerLat - deltaLat;
                var maxLat = centerLat + deltaLat;
                var minLon = centerLon - deltaLon;
                var maxLon = centerLon + deltaLon;

                query = query.Where(h =>
                    h.CentroidLat.HasValue && h.CentroidLon.HasValue &&
                    h.CentroidLat >= minLat && h.CentroidLat <= maxLat &&
                    h.CentroidLon >= minLon && h.CentroidLon <= maxLon);
            }
            else
            {
                // Nessuna coordinata trovata, fallback a match esatto sul nome comune
                query = query.Where(h =>
                    h.Comune != null &&
                    h.Comune.ToLower() == comuneLower);
            }
        }

        // filtro per difficolt�
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

        // Se ricerca per prossimità e nessun ordinamento esplicito, ordina per distanza
        if (centerLat.HasValue && centerLon.HasValue && orderBy == "data_desc" && raggioKm > 0)
            orderBy = "distanza_asc";

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

            "distanza_asc" when centerLat.HasValue && centerLon.HasValue => query
                .OrderBy(h => (h.CentroidLat!.Value - centerLat.Value) * (h.CentroidLat!.Value - centerLat.Value)
                            + (h.CentroidLon!.Value - centerLon.Value) * (h.CentroidLon!.Value - centerLon.Value))
                .ThenBy(h => h.Id),

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

    public async Task<List<Hike>> GetRelatedAsync(int hikeId, string? comune, string? provincia, decimal? lat, decimal? lon, int count = 4)
    {
        var query = _db.Hikes
            .Include(h => h.Media)
            .Where(h => h.Id != hikeId);

        // 1. Stesso comune
        if (!string.IsNullOrWhiteSpace(comune))
        {
            var comuneLower = comune.Trim().ToLower();
            var sameComune = await query
                .Where(h => h.Comune != null && h.Comune.ToLower() == comuneLower)
                .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
                .Take(count)
                .ToListAsync();

            if (sameComune.Count >= count || !lat.HasValue || !lon.HasValue)
                return sameComune;

            // 2. Se mancano, riempi con escursioni entro 30km (escludendo già prese)
            var deltaLat = 30m / 111m;
            var deltaLon = 30m / (111m * (decimal)Math.Cos((double)lat * Math.PI / 180));
            var minLat = lat - deltaLat;
            var maxLat = lat + deltaLat;
            var minLon = lon - deltaLon;
            var maxLon = lon + deltaLon;
            var ids = sameComune.Select(h => h.Id).ToHashSet();
            var nearby = await query
                .Where(h => !ids.Contains(h.Id)
                    && h.CentroidLat.HasValue && h.CentroidLon.HasValue
                    && h.CentroidLat >= minLat && h.CentroidLat <= maxLat
                    && h.CentroidLon >= minLon && h.CentroidLon <= maxLon)
                .OrderBy(h => (h.CentroidLat!.Value - lat.Value) * (h.CentroidLat!.Value - lat.Value)
                            + (h.CentroidLon!.Value - lon.Value) * (h.CentroidLon!.Value - lon.Value))
                .Take(count - sameComune.Count)
                .ToListAsync();
            sameComune.AddRange(nearby);
            return sameComune;
        }

        // Se non c'è comune, solo per prossimità
        if (lat.HasValue && lon.HasValue)
        {
            var deltaLat = 30m / 111m;
            var deltaLon = 30m / (111m * (decimal)Math.Cos((double)lat * Math.PI / 180));
            var minLat = lat - deltaLat;
            var maxLat = lat + deltaLat;
            var minLon = lon - deltaLon;
            var maxLon = lon + deltaLon;
            return await query
                .Where(h => h.CentroidLat.HasValue && h.CentroidLon.HasValue
                    && h.CentroidLat >= minLat && h.CentroidLat <= maxLat
                    && h.CentroidLon >= minLon && h.CentroidLon <= maxLon)
                .OrderBy(h => (h.CentroidLat!.Value - lat.Value) * (h.CentroidLat!.Value - lat.Value)
                            + (h.CentroidLon!.Value - lon.Value) * (h.CentroidLon!.Value - lon.Value))
                .Take(count)
                .ToListAsync();
        }

        // Nessun risultato
        return new List<Hike>();
    }

    public async Task<List<(string Tag, int Count)>> GetTagSummaryAsync()
    {
        return await _db.Hikes
            .Where(h => h.Tag != null && h.Tag != "")
            .GroupBy(h => h.Tag!)
            .Select(g => new { Tag = g.Key, Count = g.Count() })
            .OrderByDescending(x => x.Count)
            .AsAsyncEnumerable()
            .Select(x => (x.Tag, x.Count))
            .ToListAsync();
    }

    public async Task<List<Hike>> GetByTagAsync(string tag)
    {
        return await _db.Hikes
            .Include(h => h.Media)
            .Where(h => h.Tag != null && h.Tag == tag)
            .OrderByDescending(h => h.DataEscursione)
            .ToListAsync();
    }
}

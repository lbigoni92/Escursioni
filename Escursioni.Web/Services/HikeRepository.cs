using System.Text.Json;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>
/// Repository in memoria: all'avvio legge tutti i file Data/hikes/*.json
/// (un file per escursione) e risponde alle query con LINQ. Nessun database.
/// </summary>
public class HikeRepository : IHikeRepository
{
    public static readonly JsonSerializerOptions JsonOptions = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.SnakeCaseLower,
        PropertyNameCaseInsensitive = true,
        ReadCommentHandling = JsonCommentHandling.Skip,
        AllowTrailingCommas = true,
    };

    private readonly List<Hike> _hikes;
    private readonly List<Hike> _varianti;
    private readonly Dictionary<string, Hike> _bySlug;
    // Slug già assegnati, varianti comprese: un titolo duplicato prende lo stesso slug di prima
    private readonly HashSet<string> _usedSlugs = new(StringComparer.Ordinal);
    private readonly Dictionary<string, string> _redirects = new(StringComparer.OrdinalIgnoreCase);

    /// <param name="varianti">Escursioni di Data/hikes-varianti, mostrate nella pagina della principale.</param>
    public HikeRepository(IEnumerable<Hike> hikes, IEnumerable<Hike>? varianti = null)
    {
        var variantList = (varianti ?? []).ToList();
        // Id progressivo stabile: ordine di inserimento (created_at), poi wikiloc_id
        _hikes = hikes
            .OrderBy(h => h.CreatedAt)
            .ThenBy(h => h.WikilocId)
            .ToList();
        for (var i = 0; i < _hikes.Count; i++)
            _hikes[i].Id = i + 1;

        // Gli slug si calcolano su principali e varianti insieme, nello stesso ordine di quando
        // erano tutte in Data/hikes: così gli URL già pubblicati non cambiano
        _bySlug = new Dictionary<string, Hike>(StringComparer.Ordinal);
        var principali = _hikes.ToHashSet();
        foreach (var h in _hikes.Concat(variantList).OrderBy(h => h.CreatedAt).ThenBy(h => h.WikilocId))
        {
            var slug = UniqueSlug(h);
            _usedSlugs.Add(slug);
            h.Slug = slug;
            if (!principali.Contains(h))
                continue;
            if (!string.IsNullOrWhiteSpace(h.SlugFisso) && h.SlugFisso != slug)
            {
                h.Slug = h.SlugFisso;
                _usedSlugs.Add(h.Slug);
                _redirects[$"/escursioni/{slug}"] = $"/escursioni/{h.Slug}";
            }
            _bySlug[h.Slug] = h;
        }

        var variantById = variantList.ToDictionary(v => v.WikilocId);
        foreach (var h in _hikes.Where(h => h.Varianti.Count > 0))
        {
            foreach (var id in h.Varianti)
            {
                if (!variantById.TryGetValue(id, out var v))
                    throw new InvalidDataException($"{h.WikilocId}.json: la variante {id} non è in Data/hikes-varianti");
                if (v.Principale != null)
                    throw new InvalidDataException($"La variante {id} è citata sia da {v.Principale.WikilocId} sia da {h.WikilocId}");
                v.Principale = h;
                h.AltreVolte.Add(v);
            }
            h.AltreVolte = h.AltreVolte.OrderByDescending(SortDate).ThenByDescending(v => v.WikilocId).ToList();
        }
        _varianti = variantList.Where(v => v.Principale != null).ToList();
        foreach (var v in _varianti)
            _redirects[$"/escursioni/{v.Slug}"] = $"/escursioni/{v.Principale!.Slug}";
        VariantiOrfane = variantList.Where(v => v.Principale == null).Select(v => v.WikilocId).ToList();
    }

    /// <summary>Varianti agganciate a una principale (non hanno una pagina propria).</summary>
    public IReadOnlyList<Hike> Varianti => _varianti;

    /// <summary>wikiloc_id dei file in Data/hikes-varianti che nessuna principale cita.</summary>
    public IReadOnlyList<long> VariantiOrfane { get; }

    /// <summary>301 generati dai dati: vecchi URL delle varianti e slug calcolati sostituiti da "slug".</summary>
    public IReadOnlyDictionary<string, string> Redirects => _redirects;

    private static readonly string[] Mesi =
        ["gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno", "luglio", "agosto", "settembre", "ottobre", "novembre", "dicembre"];

    /// <summary>
    /// Slug dal titolo. Se un'escursione precedente (in ordine di created_at) ha già lo stesso
    /// titolo, si aggiunge mese e anno dell'escursione ("calambrone-marzo-2019"), poi il wikiloc_id.
    /// Così gli URL già pubblicati non cambiano quando arriva un titolo duplicato.
    /// </summary>
    private string UniqueSlug(Hike h)
    {
        var slug = Pages.Escursioni.IndexModel.MakeSlug(h.Titolo);
        if (!_usedSlugs.Contains(slug))
            return slug;
        if (h.DataEscursione is DateTime d)
        {
            var withDate = $"{slug}-{Mesi[d.Month - 1]}-{d.Year}";
            if (!_usedSlugs.Contains(withDate))
                return withDate;
        }
        return $"{slug}-{h.WikilocId}";
    }

    public IReadOnlyList<Hike> All => _hikes;

    /// <summary>
    /// Legge Data/hikes e, se c'è, la cartella accanto hikes-varianti (escursioni ripetute,
    /// mostrate nella pagina della principale che le elenca in "varianti").
    /// </summary>
    public static HikeRepository LoadFromDirectory(string directory)
    {
        if (!Directory.Exists(directory))
            throw new DirectoryNotFoundException($"Cartella dati escursioni non trovata: {directory}");

        var variantiDir = Path.Combine(directory, "..", "hikes-varianti");
        return new HikeRepository(ReadAll(directory), Directory.Exists(variantiDir) ? ReadAll(variantiDir) : []);
    }

    private static List<Hike> ReadAll(string directory)
    {
        var hikes = new List<Hike>();
        foreach (var file in Directory.EnumerateFiles(directory, "*.json"))
        {
            try
            {
                using var stream = File.OpenRead(file);
                var hike = JsonSerializer.Deserialize<Hike>(stream, JsonOptions);
                if (hike != null)
                    hikes.Add(hike);
            }
            catch (JsonException ex)
            {
                throw new InvalidDataException($"JSON non valido in {Path.GetFileName(file)}: {ex.Message}", ex);
            }
        }
        return hikes;
    }

    public static DateTime SortDate(Hike h)
        => h.DataEscursione ?? h.DataPubblicazione ?? h.DataCaricato ?? h.CreatedAt;

    public Task<IReadOnlyList<string>> GetDistinctDifficoltaAsync()
    {
        IReadOnlyList<string> result = _hikes
            .Where(h => !string.IsNullOrEmpty(h.Difficolta))
            .Select(h => h.Difficolta!)
            .Distinct()
            .OrderBy(d => d)
            .ToList();
        return Task.FromResult(result);
    }

    public Task<List<Hike>> GetLatestAsync(int count)
    {
        return Task.FromResult(_hikes
            .Where(h => h.DataEscursione.HasValue)
            .OrderByDescending(h => h.DataEscursione)
            .Take(count)
            .ToList());
    }

    public Task<List<Hike>> GetAllAsync(string? regione, string? difficolta)
    {
        IEnumerable<Hike> query = _hikes;

        if (!string.IsNullOrWhiteSpace(regione))
        {
            var r = regione.Trim();
            query = query.Where(h => (h.Regione ?? "").Contains(r, StringComparison.OrdinalIgnoreCase));
        }

        if (!string.IsNullOrWhiteSpace(difficolta))
        {
            var d = difficolta.Trim();
            query = query.Where(h => (h.Difficolta ?? "").Contains(d, StringComparison.OrdinalIgnoreCase));
        }

        return Task.FromResult(query
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .ToList());
    }

    public Task<Hike?> GetByIdAsync(int id)
        => Task.FromResult(_hikes.FirstOrDefault(h => h.Id == id));

    public Task<Hike?> GetBySlugAsync(string slug)
        => Task.FromResult(_bySlug.GetValueOrDefault(slug));

    public Task<List<Hike>> GetWithCoordinatesAsync()
    {
        return Task.FromResult(_hikes
            .Where(h => h.CentroidLat.HasValue && h.CentroidLon.HasValue)
            .ToList());
    }

    public Task<List<Hike>> GetForRssAsync(int maxItems)
    {
        return Task.FromResult(_hikes
            .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
            .Take(maxItems)
            .ToList());
    }

    public Task<List<Hike>> GetRelatedAsync(int hikeId, string? comune, string? provincia, decimal? lat, decimal? lon, int count = 4)
    {
        var others = _hikes.Where(h => h.Id != hikeId).ToList();
        var result = new List<Hike>();

        // 1. Stesso comune
        if (!string.IsNullOrWhiteSpace(comune))
        {
            var c = comune.Trim();
            result.AddRange(others
                .Where(h => string.Equals(h.Comune, c, StringComparison.OrdinalIgnoreCase))
                .OrderByDescending(h => h.DataEscursione ?? h.CreatedAt)
                .Take(count));

            if (result.Count >= count)
                return Task.FromResult(result);
        }

        // 2. Riempi con escursioni entro 30 km (escludendo quelle già prese)
        if (lat.HasValue && lon.HasValue)
        {
            var deltaLat = 30m / 111m;
            var deltaLon = 30m / (111m * (decimal)Math.Cos((double)lat * Math.PI / 180));
            var ids = result.Select(h => h.Id).ToHashSet();
            result.AddRange(others
                .Where(h => !ids.Contains(h.Id)
                    && h.CentroidLat.HasValue && h.CentroidLon.HasValue
                    && Math.Abs(h.CentroidLat.Value - lat.Value) <= deltaLat
                    && Math.Abs(h.CentroidLon.Value - lon.Value) <= deltaLon)
                .OrderBy(h => (h.CentroidLat!.Value - lat.Value) * (h.CentroidLat!.Value - lat.Value)
                            + (h.CentroidLon!.Value - lon.Value) * (h.CentroidLon!.Value - lon.Value))
                .Take(count - result.Count));
        }

        return Task.FromResult(result);
    }

    /// <summary>Solo le zone che hanno una pagina (TagHelper): gli altri tag darebbero link 404.</summary>
    public Task<List<(string Tag, int Count)>> GetTagSummaryAsync()
    {
        return Task.FromResult(_hikes
            .Where(h => !string.IsNullOrEmpty(h.Tag) && TagHelper.IsKnown(h.Tag))
            .GroupBy(h => h.Tag!)
            .Select(g => (Tag: g.Key, Count: g.Count()))
            .OrderByDescending(x => x.Count)
            .ThenBy(x => x.Tag)
            .ToList());
    }

    public Task<List<Hike>> GetByTagAsync(string tag)
    {
        return Task.FromResult(_hikes
            .Where(h => h.Tag == tag)
            .OrderByDescending(h => h.DataEscursione)
            .ToList());
    }

    /// <summary>Indice leggero per la ricerca lato browser (/data/search-index.json).</summary>
    public IEnumerable<object> BuildSearchIndex()
    {
        return _hikes
            .OrderByDescending(SortDate)
            .ThenByDescending(h => h.Id)
            .Select(h =>
            {
                var cover = Pages.IndexModel.CoverPath(h);
                var desc = h.Descrizione ?? "";
                return new
                {
                    slug = h.Slug,
                    titolo = h.Titolo,
                    titoloSeo = h.TitoloSeo,
                    zona = HikeDisplay.Zone(h),
                    luogo = HikeDisplay.Location(h),
                    descrizione = desc,
                    comune = h.Comune,
                    provincia = h.Provincia,
                    regione = h.Regione,
                    difficolta = h.Difficolta,
                    data = SortDate(h).ToString("yyyy-MM-dd"),
                    dataEscursione = h.DataEscursione?.ToString("dd/MM/yyyy"),
                    km = h.DistanzaKm,
                    dislivello = h.DislivelloM,
                    lat = h.CentroidLat,
                    lon = h.CentroidLon,
                    cover = cover,
                    thumb = ImageHelper.ThumbPath(cover),
                };
            });
    }
}

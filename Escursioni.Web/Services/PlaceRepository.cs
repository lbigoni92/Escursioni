using System.Text.Json;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>
/// Vette, rifugi, passi e laghi raggiunti, letti da Data/luoghi.json all'avvio. Il file è generato
/// da PlaceFinder (`dotnet run -- --luoghi`); se manca il sito funziona lo stesso, senza luoghi.
/// </summary>
public class PlaceRepository
{
    private readonly Dictionary<string, List<Place>> _byType;
    private readonly Dictionary<long, List<Place>> _byHike = new();

    public PlaceRepository(PlaceFile file, HikeRepository hikes)
    {
        // Le tracce delle varianti contano per la pagina della loro escursione principale
        var byWikilocId = hikes.All.Concat(hikes.Varianti)
            .ToDictionary(h => h.WikilocId.ToString(), h => h.Principale ?? h);
        var places = file.Luoghi
            .Where(p => PlaceType.All.Any(t => t.Tipo == p.Tipo))
            .ToDictionary(p => p.Osm);

        foreach (var (wikilocId, osmIds) in file.Escursioni)
        {
            // Escursioni tolte dal sito dopo l'ultimo --luoghi: si ignorano
            if (!byWikilocId.TryGetValue(wikilocId, out var hike))
                continue;
            Checked.Add(long.Parse(wikilocId));
            foreach (var id in osmIds)
                if (places.TryGetValue(id, out var place) && !place.Hikes.Contains(hike))
                    place.Hikes.Add(hike);
        }

        All = places.Values
            .Where(p => p.Hikes.Count > 0)
            .OrderByDescending(p => p.QuotaM ?? 0)
            .ThenBy(p => p.Nome, StringComparer.CurrentCulture)
            .ToList();
        foreach (var p in All)
        {
            p.Hikes = p.Hikes.OrderByDescending(h => h.DataEscursione ?? h.CreatedAt).ToList();
            p.Zona = p.Hikes
                .Select(HikeDisplay.Zone)
                .OfType<string>()
                .GroupBy(z => z)
                .OrderByDescending(g => g.Count())
                .Select(g => g.Key)
                .FirstOrDefault();
            foreach (var h in p.Hikes)
            {
                if (!_byHike.TryGetValue(h.WikilocId, out var list))
                    _byHike[h.WikilocId] = list = new();
                list.Add(p);
            }
        }
        _byType = PlaceType.All.ToDictionary(t => t.Tipo, t => All.Where(p => p.Tipo == t.Tipo).ToList());
        Unchecked = hikes.All.Count(h => !Checked.Contains(h.WikilocId));
    }

    /// <summary>Tutti i luoghi, dal più alto al più basso.</summary>
    public IReadOnlyList<Place> All { get; }

    /// <summary>Luoghi di un tipo, dal più alto al più basso.</summary>
    public IReadOnlyList<Place> OfType(PlaceType type) => _byType[type.Tipo];

    /// <summary>Luoghi toccati da un'escursione, dal più alto al più basso.</summary>
    public IReadOnlyList<Place> ForHike(Hike hike) => _byHike.GetValueOrDefault(hike.WikilocId) ?? [];

    /// <summary>wikiloc_id delle escursioni già controllate da --luoghi.</summary>
    public HashSet<long> Checked { get; } = new();

    /// <summary>Escursioni nuove non ancora controllate: serve rilanciare --luoghi.</summary>
    public int Unchecked { get; }

    public static PlaceFile ReadFile(string path)
    {
        if (!File.Exists(path))
            return new PlaceFile();
        using var stream = File.OpenRead(path);
        return JsonSerializer.Deserialize<PlaceFile>(stream, HikeRepository.JsonOptions) ?? new PlaceFile();
    }

    public static PlaceRepository Load(string path, HikeRepository hikes) => new(ReadFile(path), hikes);
}

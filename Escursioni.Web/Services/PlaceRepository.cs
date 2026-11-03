using System.Text.Json;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>
/// Vette, rifugi, passi, laghi e cascate raggiunti, letti da Data/luoghi.json all'avvio. Il file è generato
/// da PlaceFinder (`dotnet run -- --luoghi`); se manca il sito funziona lo stesso, senza luoghi.
/// </summary>
public class PlaceRepository
{
    private readonly Dictionary<string, List<Place>> _byType;
    private readonly Dictionary<long, List<Place>> _byHike = new();

    /// <param name="schede">Pagine dei luoghi importanti (Data/luoghi-schede), agganciate via "osm".</param>
    public PlaceRepository(PlaceFile file, HikeRepository hikes, IEnumerable<PlaceSheet>? schede = null)
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

        var byOsm = All.ToDictionary(p => p.Osm);
        foreach (var sheet in schede ?? [])
        {
            if (byOsm.TryGetValue(sheet.Osm, out var place))
                place.Scheda = sheet;
            else
                SchedeOrfane.Add(sheet.Slug);
        }
        AssignSlugs();
    }

    /// <summary>
    /// Ogni luogo ha una pagina /{tipo}/{slug}: lo slug della scheda o, senza scheda, il nome.
    /// Nomi uguali nello stesso tipo (due "Monte Rondinaio") prendono la quota, poi l'id OSM.
    /// Se la scheda ha uno slug diverso dal nome, l'URL dal nome fa 301 verso quello della scheda,
    /// così la pagina automatica pubblicata prima della scheda non si perde.
    /// </summary>
    private void AssignSlugs()
    {
        foreach (var type in PlaceType.All)
        {
            var places = OfType(type);
            var used = places.Where(p => p.Scheda != null).Select(p => p.Scheda!.Slug).ToHashSet();
            foreach (var p in places.Where(p => p.Scheda != null))
                p.Slug = p.Scheda!.Slug;
            // Prima i luoghi con più escursioni: in caso di omonimi prendono lo slug più semplice
            foreach (var p in places.Where(p => p.Scheda == null).OrderByDescending(p => p.Hikes.Count).ThenBy(p => p.Osm))
            {
                var name = Pages.Escursioni.IndexModel.MakeSlug(p.Nome);
                var slug = new[] { name, $"{name}-{p.QuotaM}", $"{name}-{p.Anchor}" }.First(s => !used.Contains(s));
                used.Add(slug);
                p.Slug = slug;
            }
            foreach (var p in places.Where(p => p.Scheda != null))
            {
                var name = Pages.Escursioni.IndexModel.MakeSlug(p.Nome);
                if (name != p.Slug && !used.Contains(name))
                    _redirects[$"/{type.Slug}/{name}"] = p.Url;
            }
        }
    }

    private readonly Dictionary<string, string> _redirects = new();

    /// <summary>301 dagli URL ricavati dal nome a quelli delle schede scritte a mano.</summary>
    public IReadOnlyDictionary<string, string> Redirects => _redirects;

    /// <summary>Luogo dal suo URL /{tipo}/{slug}.</summary>
    public Place? BySlug(PlaceType type, string slug)
        => OfType(type).FirstOrDefault(p => p.Slug == slug);

    /// <summary>Luoghi con una scheda scritta a mano: le uniche pagine indicizzate e in sitemap.</summary>
    public IEnumerable<Place> WithSheets => All.Where(p => p.Scheda != null);

    /// <summary>Schede il cui "osm" non è (più) in luoghi.json: nessuna pagina.</summary>
    public List<string> SchedeOrfane { get; } = new();

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

    /// <summary>luoghi.json più le schede della cartella luoghi-schede accanto.</summary>
    public static PlaceRepository Load(string path, HikeRepository hikes)
        => new(ReadFile(path), hikes, ReadSheets(Path.Combine(Path.GetDirectoryName(path)!, "luoghi-schede")));

    public static List<PlaceSheet> ReadSheets(string directory)
    {
        if (!Directory.Exists(directory))
            return [];
        return Directory.EnumerateFiles(directory, "*.json")
            .Select(file =>
            {
                using var stream = File.OpenRead(file);
                var sheet = JsonSerializer.Deserialize<PlaceSheet>(stream, HikeRepository.JsonOptions)
                    ?? throw new InvalidDataException($"Scheda luogo vuota: {Path.GetFileName(file)}");
                sheet.Slug = Path.GetFileNameWithoutExtension(file);
                return sheet;
            })
            .ToList();
    }
}

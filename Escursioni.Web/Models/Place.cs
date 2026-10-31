using System.Text.Json.Serialization;

namespace Escursioni.Web.Models;

/// <summary>Luogo di OpenStreetMap (vetta, rifugio, passo, lago) toccato da almeno una traccia GPX. Vedi PlaceFinder.</summary>
public class Place
{
    /// <summary>Tipo e id dell'elemento OSM, es. "node/123456" (openstreetmap.org/node/123456).</summary>
    public string Osm { get; set; } = string.Empty;
    /// <summary>Uno dei <see cref="PlaceType"/>: vetta, rifugio, passo, lago.</summary>
    public string Tipo { get; set; } = string.Empty;
    public string Nome { get; set; } = string.Empty;
    /// <summary>Tag ele di OpenStreetMap; se manca, la quota GPX del punto della traccia più vicino.</summary>
    public int? QuotaM { get; set; }
    public decimal Lat { get; set; }
    public decimal Lon { get; set; }
    /// <summary>Parco o riserva che contiene il luogo; "" se nessuno, null se non ancora cercato.</summary>
    public string? Parco { get; set; }

    /// <summary>Escursioni che passano dal luogo, dalla più recente (assegnate da PlaceRepository).</summary>
    [JsonIgnore]
    public List<Hike> Hikes { get; set; } = new();

    /// <summary>Zona del sito più frequente tra le escursioni del luogo (assegnata da PlaceRepository).</summary>
    [JsonIgnore]
    public string? Zona { get; set; }

    [JsonIgnore]
    public PlaceType Type => PlaceType.Get(Tipo);

    /// <summary>Id dell'elemento nella pagina dell'elenco: /vette#node-123456.</summary>
    [JsonIgnore]
    public string Anchor => Osm.Replace('/', '-');
}

/// <summary>
/// Tipo di luogo: pagina /{Slug} e distanza massima dalla traccia per contarlo come raggiunto
/// (copre l'errore del GPS e della posizione su OSM; per i laghi è la distanza dalla riva).
/// </summary>
public record PlaceType(string Tipo, string Slug, string Singolare, string Titolo, double MaxDistanceM)
{
    public static readonly PlaceType Vetta = new("vetta", "vette", "Vetta", "Vette", 50);
    public static readonly PlaceType Rifugio = new("rifugio", "rifugi", "Rifugio", "Rifugi e bivacchi", 75);
    public static readonly PlaceType Passo = new("passo", "passi", "Passo", "Passi e valichi", 50);
    public static readonly PlaceType Lago = new("lago", "laghi", "Lago", "Laghi", 100);

    public static readonly IReadOnlyList<PlaceType> All = [Vetta, Rifugio, Passo, Lago];

    public static PlaceType Get(string tipo) => All.First(t => t.Tipo == tipo);
    public static PlaceType? FromSlug(string? slug) => All.FirstOrDefault(t => t.Slug == slug);
}

/// <summary>Contenuto di Data/luoghi.json, scritto da `dotnet run -- --luoghi`.</summary>
public class PlaceFile
{
    /// <summary>wikiloc_id → luoghi toccati ("node/123"). Un'escursione presente con lista vuota è già stata controllata.</summary>
    public Dictionary<string, List<string>> Escursioni { get; set; } = new();
    public List<Place> Luoghi { get; set; } = new();
}

using System.Globalization;
using System.Text;
using System.Text.Json;
using System.Text.RegularExpressions;
using System.Xml.Linq;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>
/// Comando `dotnet run -- --luoghi [--tutte]`: per ogni escursione cerca su OpenStreetMap (Overpass)
/// vette, rifugi, passi e laghi con nome vicini alla traccia GPX (soglie in <see cref="PlaceType"/>)
/// e il parco che li contiene. Il risultato va in Data/luoghi.json, da committare.
/// Senza --tutte controlla solo le escursioni che non sono ancora nel file: è veloce e gira anche nel deploy.
/// </summary>
public static class PlaceFinder
{
    // Il server principale a volte rifiuta la connessione: si prova il mirror
    private static readonly List<string> OverpassServers =
    [
        "https://overpass-api.de/api/interpreter",
        "https://maps.mail.ru/osm/tools/overpass/api/interpreter",
    ];

    private record TrackPoint(double Lat, double Lon, double? Ele);

    /// <summary>Luogo letto da Overpass. Shore: vertici della riva (solo laghi).</summary>
    private record OsmPlace(string Osm, string Tipo, string Name, double Lat, double Lon, int? Ele, List<double[]>? Shore);

    public static async Task<int> RunAsync(HikeRepository repo, string contentRoot, bool all)
    {
        var dataPath = Path.Combine(contentRoot, "Data", "luoghi.json");
        var file = all ? new PlaceFile() : PlaceRepository.ReadFile(dataPath);
        var places = file.Luoghi.ToDictionary(p => p.Osm);

        using var http = new HttpClient { Timeout = TimeSpan.FromSeconds(180) };
        http.DefaultRequestHeaders.UserAgent.ParseAdd("EscursioniLucaBigoni/1.0 (+https://escursionilucabigoni.it)");

        var errors = 0;
        var todo = new List<(Hike Hike, List<TrackPoint> Track)>();
        foreach (var hike in repo.All.Where(h => !file.Escursioni.ContainsKey(h.WikilocId.ToString())))
        {
            var track = ReadTrack(Path.Combine(contentRoot, "wwwroot", "media", "gpx", $"{hike.WikilocId}.gpx"));
            if (track.Count < 2)
            {
                Console.WriteLine($"[Luoghi] {hike.WikilocId}: GPX mancante o vuoto, saltata");
                errors++;
                continue;
            }
            todo.Add((hike, track));
        }

        // Una richiesta per riquadro di TileDeg gradi invece che per escursione: molte tracce stanno nella stessa zona
        var tiles = todo.SelectMany(t => TilesOf(t.Track)).ToHashSet();
        Console.WriteLine($"[Luoghi] {todo.Count} escursioni da controllare, {tiles.Count} riquadri da scaricare");
        var tilePlaces = new Dictionary<(int, int), List<OsmPlace>>();
        foreach (var tile in tiles)
        {
            try
            {
                tilePlaces[tile] = await QueryTileAsync(http, tile);
                Console.WriteLine($"[Luoghi] riquadro {tile}: {tilePlaces[tile].Count} luoghi");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"[Luoghi] riquadro {tile}: Overpass non risponde ({ex.Message})");
            }
        }

        foreach (var (hike, track) in todo)
        {
            var key = hike.WikilocId.ToString();
            var hikeTiles = TilesOf(track).ToList();
            if (!hikeTiles.All(tilePlaces.ContainsKey))
            {
                Console.WriteLine($"[Luoghi] {key}: riquadro non scaricato, riprova più tardi");
                errors++;
                continue;
            }

            var found = new List<string>();
            foreach (var c in hikeTiles.SelectMany(t => tilePlaces[t]).DistinctBy(c => c.Osm))
            {
                var (distance, ele) = c.Shore == null
                    ? DistanceToTrack(track, c.Lat, c.Lon)
                    : DistanceToShore(track, c.Shore);
                if (distance > PlaceType.Get(c.Tipo).MaxDistanceM)
                    continue;
                found.Add(c.Osm);
                // Luogo già trovato da un'altra traccia: resta com'è (con il parco già cercato)
                places.TryAdd(c.Osm, new Place
                {
                    Osm = c.Osm,
                    Tipo = c.Tipo,
                    Nome = c.Name,
                    QuotaM = c.Ele ?? (ele is double e ? (int)Math.Round(e) : null),
                    Lat = Math.Round((decimal)c.Lat, 6),
                    Lon = Math.Round((decimal)c.Lon, 6),
                });
            }
            file.Escursioni[key] = found;
            Console.WriteLine($"[Luoghi] {key} {hike.Titolo}: {(found.Count == 0 ? "nessuno" : string.Join(", ", found.Select(id => places[id].Nome)))}");
        }

        // Parco solo per i luoghi non ancora cercati: se Overpass non risponde, lo si riprova al giro dopo
        Save(dataPath, file, places, repo);
        var withoutPark = file.Luoghi.Where(p => p.Parco == null).ToList();
        if (withoutPark.Count > 0)
        {
            try
            {
                await FindParksAsync(http, withoutPark);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"[Luoghi] parchi: Overpass non risponde ({ex.Message}), riprova più tardi");
                errors++;
            }
        }

        Save(dataPath, file, places, repo);
        Console.WriteLine($"[Luoghi] {string.Join(", ", PlaceType.All.Select(t => $"{file.Luoghi.Count(p => p.Tipo == t.Tipo)} {t.Slug}"))} in {dataPath}"
            + (errors > 0 ? $", {errors} errori: rilancia il comando" : ""));
        return errors == 0 ? 0 : 1;
    }

    private static void Save(string path, PlaceFile file, Dictionary<string, Place> places, HikeRepository repo)
    {
        // Solo escursioni ancora presenti e luoghi ancora toccati da almeno una traccia
        var ids = repo.All.Select(h => h.WikilocId.ToString()).ToHashSet();
        file.Escursioni = file.Escursioni
            .Where(e => ids.Contains(e.Key))
            .OrderBy(e => e.Key, StringComparer.Ordinal)
            .ToDictionary(e => e.Key, e => e.Value);
        var used = file.Escursioni.Values.SelectMany(v => v).ToHashSet();
        file.Luoghi = places.Values
            .Where(p => used.Contains(p.Osm))
            .OrderBy(p => PlaceType.All.ToList().FindIndex(t => t.Tipo == p.Tipo))
            .ThenByDescending(p => p.QuotaM ?? 0)
            .ThenBy(p => p.Osm, StringComparer.Ordinal)
            .ToList();
        var options = new JsonSerializerOptions(HikeRepository.JsonOptions) { WriteIndented = true };
        File.WriteAllText(path, JsonSerializer.Serialize(file, options), new UTF8Encoding(false));
    }

    private static List<TrackPoint> ReadTrack(string path)
    {
        if (!File.Exists(path))
            return [];
        return XDocument.Load(path).Descendants()
            .Where(e => e.Name.LocalName is "trkpt" or "rtept")
            .Select(e => new TrackPoint(
                double.Parse((string)e.Attribute("lat")!, CultureInfo.InvariantCulture),
                double.Parse((string)e.Attribute("lon")!, CultureInfo.InvariantCulture),
                e.Elements().FirstOrDefault(x => x.Name.LocalName == "ele") is { } ele
                    && double.TryParse(ele.Value, CultureInfo.InvariantCulture, out var v) ? v : null))
            .ToList();
    }

    private const double TileDeg = 0.25;

    /// <summary>Riquadri della griglia toccati dalla traccia, allargata di ~200 m per i luoghi appena fuori.</summary>
    private static IEnumerable<(int, int)> TilesOf(List<TrackPoint> track)
    {
        const double margin = 0.002;
        int Cell(double v) => (int)Math.Floor(v / TileDeg);
        for (var y = Cell(track.Min(p => p.Lat) - margin); y <= Cell(track.Max(p => p.Lat) + margin); y++)
            for (var x = Cell(track.Min(p => p.Lon) - margin); x <= Cell(track.Max(p => p.Lon) + margin); x++)
                yield return (y, x);
    }

    /// <summary>
    /// Luoghi del riquadro, da una cache su disco di 30 giorni: se Overpass cade a metà,
    /// al giro dopo si scaricano solo i riquadri mancanti.
    /// </summary>
    private static async Task<List<OsmPlace>> QueryTileAsync(HttpClient http, (int Y, int X) tile)
    {
        var cache = Path.Combine(Path.GetTempPath(), "escursioni-luoghi", $"{tile.Y}_{tile.X}.json");
        if (File.Exists(cache) && File.GetLastWriteTimeUtc(cache) > DateTime.UtcNow.AddDays(-30))
            return JsonSerializer.Deserialize<List<OsmPlace>>(await File.ReadAllTextAsync(cache))!;
        var result = await DownloadTileAsync(http, tile);
        Directory.CreateDirectory(Path.GetDirectoryName(cache)!);
        await File.WriteAllTextAsync(cache, JsonSerializer.Serialize(result));
        await Task.Delay(TimeSpan.FromSeconds(2));
        return result;
    }

    private static async Task<List<OsmPlace>> DownloadTileAsync(HttpClient http, (int Y, int X) tile)
    {
        var bbox = string.Join(",",
            new[] { tile.Y * TileDeg, tile.X * TileDeg, (tile.Y + 1) * TileDeg, (tile.X + 1) * TileDeg }
                .Select(v => v.ToString("0.###", CultureInfo.InvariantCulture)));
        // Punti (vette, rifugi, passi) con il centro; laghi (anche bacini artificiali) con la riva
        var query = $"""
            [out:json][timeout:180];
            (
              node["natural"="peak"]["name"]({bbox});
              nwr["tourism"~"^(alpine_hut|wilderness_hut)$"]["name"]({bbox});
              node["mountain_pass"="yes"]["name"]({bbox});
              node["natural"="saddle"]["name"]({bbox});
            );
            out center;
            (
              wr["natural"="water"]["water"~"^(lake|reservoir)$"]["name"]({bbox});
              wr["natural"="water"][!"water"]["name"~"^Lag"]({bbox});
            );
            out geom;
            """;

        var result = new List<OsmPlace>();
        foreach (var e in await OverpassAsync(http, query))
        {
            var tags = e.GetProperty("tags");
            string? Tag(string k) => tags.TryGetProperty(k, out var v) ? v.GetString() : null;
            var tipo = Tag("natural") == "peak" ? "vetta"
                : Tag("tourism") is "alpine_hut" or "wilderness_hut" ? "rifugio"
                : Tag("mountain_pass") == "yes" || Tag("natural") == "saddle" ? "passo"
                : Tag("natural") == "water" ? "lago"
                : null;
            if (tipo == null)
                continue;

            var osm = $"{e.GetProperty("type").GetString()}/{e.GetProperty("id").GetInt64()}";
            var name = Tag("name")!.Trim();
            var ele = ParseEle(Tag("ele"));
            if (tipo == "lago")
            {
                // Riva: geometria della way, o delle way "outer" della relazione multipoligono
                List<JsonElement> lines = e.TryGetProperty("geometry", out var g)
                    ? [g]
                    : e.GetProperty("members").EnumerateArray()
                        .Where(m => m.TryGetProperty("geometry", out _) && m.GetProperty("role").GetString() != "inner")
                        .Select(m => m.GetProperty("geometry"))
                        .ToList();
                var shore = lines.SelectMany(l => l.EnumerateArray())
                    .Where(p => p.ValueKind == JsonValueKind.Object)
                    .Select(p => new[] { p.GetProperty("lat").GetDouble(), p.GetProperty("lon").GetDouble() })
                    .ToList();
                if (shore.Count == 0)
                    continue;
                var b = e.GetProperty("bounds");
                result.Add(new OsmPlace(osm, tipo, name,
                    (b.GetProperty("minlat").GetDouble() + b.GetProperty("maxlat").GetDouble()) / 2,
                    (b.GetProperty("minlon").GetDouble() + b.GetProperty("maxlon").GetDouble()) / 2,
                    ele, shore));
            }
            else
            {
                var point = e.TryGetProperty("center", out var center) ? center : e;
                result.Add(new OsmPlace(osm, tipo, name, point.GetProperty("lat").GetDouble(), point.GetProperty("lon").GetDouble(), ele, null));
            }
        }
        return result;
    }

    /// <summary>
    /// Parco o riserva che contiene ogni luogo (is_in di Overpass sulle coordinate, 50 luoghi per richiesta).
    /// Si scartano i siti Natura 2000 (ZSC, ZPS...), che sono aree protette ma non parchi.
    /// </summary>
    private static async Task FindParksAsync(HttpClient http, List<Place> places)
    {
        foreach (var chunk in places.Chunk(50))
        {
            // Ogni luogo: un elemento "luogo" come separatore, poi le aree che lo contengono
            var query = new StringBuilder("[out:json][timeout:180];\n");
            foreach (var p in chunk)
                query.Append(CultureInfo.InvariantCulture,
                    $"make luogo osm=\"{p.Osm}\";out;is_in({p.Lat},{p.Lon})->.a;area.a[\"boundary\"~\"^(national_park|protected_area)$\"][\"name\"];out tags;\n");

            var areas = new Dictionary<string, List<(string Name, bool National)>>();
            var current = "";
            foreach (var e in await OverpassAsync(http, query.ToString()))
            {
                var tags = e.GetProperty("tags");
                if (e.GetProperty("type").GetString() == "luogo")
                {
                    current = tags.GetProperty("osm").GetString()!;
                    areas[current] = [];
                    continue;
                }
                var name = tags.GetProperty("name").GetString()!.Trim();
                var national = tags.TryGetProperty("boundary", out var b) && b.GetString() == "national_park";
                if (national || Regex.IsMatch(name, @"\b(parco|riserva|nationalpark|naturpark|park)\b", RegexOptions.IgnoreCase))
                    areas[current].Add((name, national));
            }

            // Senza separatore il server non ha risposto per quel luogo: resta da cercare
            foreach (var p in chunk.Where(p => areas.ContainsKey(p.Osm)))
                p.Parco = areas[p.Osm]
                    .OrderByDescending(a => a.National)
                    .ThenBy(a => a.Name.Contains("riserva", StringComparison.OrdinalIgnoreCase))
                    .Select(a => a.Name)
                    .FirstOrDefault() ?? "";
            Console.WriteLine($"[Luoghi] parchi: {chunk.Count(p => !string.IsNullOrEmpty(p.Parco))} luoghi su {chunk.Length} dentro un parco");
            await Task.Delay(TimeSpan.FromSeconds(2));
        }
    }

    /// <summary>Esegue una query Overpass e restituisce "elements".</summary>
    private static async Task<List<JsonElement>> OverpassAsync(HttpClient http, string query)
    {
        // Tre giri sui server: gli errori 504 e SSL dei server pubblici di solito sono momentanei
        Exception? last = null;
        foreach (var server in Enumerable.Repeat(OverpassServers.ToList(), 3).SelectMany(s => s))
        {
            if (last != null)
                await Task.Delay(TimeSpan.FromSeconds(10));
            try
            {
                using var response = await http.PostAsync(server, new FormUrlEncodedContent([new("data", query)]));
                response.EnsureSuccessStatusCode();
                using var json = JsonDocument.Parse(await response.Content.ReadAsStringAsync());
                // Il server che ha risposto passa in testa per le richieste successive
                OverpassServers.Remove(server);
                OverpassServers.Insert(0, server);
                return json.RootElement.GetProperty("elements").EnumerateArray().Select(e => e.Clone()).ToList();
            }
            catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException or JsonException)
            {
                last = ex;
            }
        }
        throw last!;
    }

    /// <summary>Tag ele di OSM: "1859", "1859 m", "1859.5", "1.859" (punto delle migliaia), "1859;1855".</summary>
    public static int? ParseEle(string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return null;
        var m = Regex.Match(value, @"^\s*(\d{1,4})(?:([.,])(\d+))?");
        if (!m.Success)
            return null;
        var number = m.Groups[1].Value;
        if (m.Groups[3].Success)
            number += m.Groups[2].Value == "." && m.Groups[3].Value.Length == 3 && m.Groups[1].Value.Length == 1
                ? m.Groups[3].Value
                : "." + m.Groups[3].Value;
        return (int)Math.Round(double.Parse(number, CultureInfo.InvariantCulture));
    }

    /// <summary>Distanza minima tra la riva del lago e la traccia, con la quota GPX di quel punto.</summary>
    private static (double Distance, double? Ele) DistanceToShore(List<TrackPoint> track, List<double[]> shore)
    {
        // Prima un controllo veloce sui rettangoli: quasi tutti i laghi del riquadro sono lontani
        const double margin = 0.003;
        if (shore.Max(p => p[0]) < track.Min(p => p.Lat) - margin || shore.Min(p => p[0]) > track.Max(p => p.Lat) + margin
            || shore.Max(p => p[1]) < track.Min(p => p.Lon) - margin || shore.Min(p => p[1]) > track.Max(p => p.Lon) + margin)
            return (double.MaxValue, null);
        return shore
            .Select(p => DistanceToTrack(track, p[0], p[1]))
            .MinBy(d => d.Distance);
    }

    /// <summary>Distanza in metri dal punto al segmento di traccia più vicino, con la quota GPX di quel punto.</summary>
    private static (double Distance, double? Ele) DistanceToTrack(List<TrackPoint> track, double lat, double lon)
    {
        // Proiezione piana centrata sul punto: errore trascurabile su poche centinaia di metri
        const double mPerDeg = 111_320;
        var cos = Math.Cos(lat * Math.PI / 180);
        (double X, double Y) Project(TrackPoint p) => ((p.Lon - lon) * mPerDeg * cos, (p.Lat - lat) * mPerDeg);

        var best = double.MaxValue;
        double? bestEle = null;
        var a = Project(track[0]);
        for (var i = 1; i < track.Count; i++)
        {
            var b = Project(track[i]);
            var (dx, dy) = (b.X - a.X, b.Y - a.Y);
            var len2 = dx * dx + dy * dy;
            var t = len2 == 0 ? 0 : Math.Clamp(-(a.X * dx + a.Y * dy) / len2, 0, 1);
            var (px, py) = (a.X + t * dx, a.Y + t * dy);
            var d = Math.Sqrt(px * px + py * py);
            if (d < best)
            {
                best = d;
                bestEle = t < 0.5 ? track[i - 1].Ele : track[i].Ele;
            }
            a = b;
        }
        return (best, bestEle);
    }
}

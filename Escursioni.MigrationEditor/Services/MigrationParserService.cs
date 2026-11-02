using System.Globalization;
using System.Text;
using System.Text.Encodings.Web;
using System.Text.Json;
using System.Text.Json.Nodes;

namespace Escursioni.MigrationEditor.Services;

/// <summary>
/// Legge e scrive i file dati delle escursioni (Escursioni.Web/Data/hikes/{wikiloc_id}.json).
/// Il nome è rimasto quello dell'epoca delle migrazioni SQL: i valori sono esposti
/// come dizionario colonna → stringa e convertiti nei tipi JSON corretti al salvataggio.
/// </summary>
public class MigrationParserService
{
    private readonly string _hikesDir;

    // Ordine delle chiavi nel file JSON
    public static readonly string[] HikeColumns =
    [
        "wikiloc_id", "titolo", "titolo_seo", "meta_descrizione", "tag",
        "descrizione", "descrizione_html", "attivita",
        "distanza_km", "dislivello_m", "quota_min_m", "quota_max_m",
        "tempo_min", "tempo_hhmm",
        "tempo_mov_min", "tempo_mov_hhmm", "coordinate_count",
        "difficolta", "tipo_giro", "superficie",
        "regione", "provincia", "comune",
        "data_escursione", "data_registrato", "data_caricato", "data_pubblicazione",
        "url", "bbox", "centroid_lat", "centroid_lon", "geom",
        "sha256_payload",
        "created_at", "updated_at"
    ];

    public static readonly string[] MediaColumns =
        ["tipo", "path_relativo", "ordine", "larghezza", "altezza", "sha256", "filesize_bytes"];

    private static readonly HashSet<string> IntegerColumns =
    [
        "wikiloc_id", "dislivello_m", "quota_min_m", "quota_max_m", "tempo_min", "tempo_mov_min",
        "coordinate_count", "ordine", "larghezza", "altezza", "filesize_bytes"
    ];
    private static readonly HashSet<string> DecimalColumns = ["distanza_km", "centroid_lat", "centroid_lon"];
    private static readonly HashSet<string> DateColumns = ["data_escursione", "data_registrato"];
    private static readonly HashSet<string> TimestampColumns = ["data_caricato", "data_pubblicazione", "created_at", "updated_at"];

    private static readonly JsonSerializerOptions WriteOptions = new()
    {
        WriteIndented = true,
        Encoder = JavaScriptEncoder.UnsafeRelaxedJsonEscaping,
    };

    public MigrationParserService(string hikesDir)
    {
        _hikesDir = hikesDir;
    }

    /// <summary>Resolve a relative media path (e.g. "media/images/123/photo_01.jpg") to the absolute file path in Escursioni.Web/wwwroot.</summary>
    public string ResolveMediaPath(string relativeMediaPath)
    {
        var webRoot = Path.GetFullPath(Path.Combine(_hikesDir, "..", "..", "wwwroot"));
        return Path.Combine(webRoot, relativeMediaPath.Replace('/', Path.DirectorySeparatorChar));
    }

    /// <summary>Elenco dei file, dal più recente (created_at) al più vecchio.</summary>
    public List<MigrationFile> ListMigrations()
    {
        if (!Directory.Exists(_hikesDir))
            return [];

        return Directory.GetFiles(_hikesDir, "*.json")
            .Select(f => new { FullPath = f, Created = ReadCreatedAt(f) })
            .OrderByDescending(f => f.Created, StringComparer.Ordinal)
            .ThenByDescending(f => Path.GetFileName(f.FullPath), StringComparer.OrdinalIgnoreCase)
            .Select(f => new MigrationFile
            {
                FileName = Path.GetFileName(f.FullPath),
                FullPath = f.FullPath
            })
            .ToList();
    }

    private static string ReadCreatedAt(string file)
    {
        try
        {
            var node = JsonNode.Parse(File.ReadAllText(file, Encoding.UTF8));
            return node?["created_at"]?.GetValue<string>() ?? "";
        }
        catch (Exception ex) when (ex is JsonException or InvalidOperationException)
        {
            return "";
        }
    }

    public MigrationFile Parse(string filePath)
    {
        var raw = File.ReadAllText(filePath, Encoding.UTF8);
        var mf = new MigrationFile
        {
            FileName = Path.GetFileName(filePath),
            FullPath = filePath,
            RawJson = raw
        };

        var obj = JsonNode.Parse(raw)?.AsObject() ?? new JsonObject();
        foreach (var col in HikeColumns)
            mf.HikeValues[col] = NodeToString(obj[col]);

        if (obj["media"] is JsonArray media)
        {
            foreach (var item in media.OfType<JsonObject>())
            {
                var row = new Dictionary<string, string?>();
                foreach (var col in MediaColumns)
                    row[col] = NodeToString(item[col]);
                mf.MediaRows.Add(row);
            }
        }

        return mf;
    }

    private static string? NodeToString(JsonNode? node)
    {
        if (node is not JsonValue value)
            return null;
        if (value.TryGetValue<string>(out var s))
            return s;
        // Numeri: testo JSON originale, già in formato invariant (es. 15.8)
        return value.ToJsonString();
    }

    /// <summary>
    /// Rigenera il JSON completo dai valori modificati.
    /// </summary>
    public string GenerateJson(MigrationFile mf)
    {
        var obj = new JsonObject();
        foreach (var col in HikeColumns)
            obj[col] = ToNode(col, mf.HikeValues.GetValueOrDefault(col));

        // Campi che l'editor non gestisce (varianti, slug, come_arrivare, cenno_storico, fonti, ...):
        // restano come sono nel file
        if (!string.IsNullOrWhiteSpace(mf.RawJson) && JsonNode.Parse(mf.RawJson) is JsonObject original)
        {
            foreach (var (key, value) in original)
                if (key != "media" && !obj.ContainsKey(key))
                    obj[key] = value?.DeepClone();
        }

        var media = new JsonArray();
        foreach (var row in mf.MediaRows)
        {
            var item = new JsonObject();
            foreach (var col in MediaColumns)
                item[col] = ToNode(col, row.GetValueOrDefault(col));
            media.Add((JsonNode)item);
        }
        obj["media"] = media;

        return obj.ToJsonString(WriteOptions) + "\n";
    }

    public void Save(MigrationFile mf)
    {
        var now = DateTime.Now.ToString("yyyy-MM-dd'T'HH:mm:ss", CultureInfo.InvariantCulture);
        mf.HikeValues["updated_at"] = now;
        if (string.IsNullOrWhiteSpace(mf.HikeValues.GetValueOrDefault("created_at")))
            mf.HikeValues["created_at"] = now;

        var json = GenerateJson(mf);
        File.WriteAllText(mf.FullPath, json, new UTF8Encoding(false));
        mf.RawJson = json;
    }

    /// <summary>
    /// Converte il valore testuale dell'editor nel tipo JSON della colonna.
    /// Lancia FormatException se un numero o una data non sono validi, così il file
    /// non viene salvato in un formato che il sito non riuscirebbe a leggere.
    /// </summary>
    private static JsonNode? ToNode(string column, string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return null;

        if (IntegerColumns.Contains(column))
        {
            var v = value.Trim();
            return long.TryParse(v, NumberStyles.Integer, CultureInfo.InvariantCulture, out var l)
                ? JsonValue.Create(l)
                : throw new FormatException($"{ColumnLabel(column)}: '{v}' non è un numero intero");
        }

        if (DecimalColumns.Contains(column))
        {
            var v = value.Trim().Replace(',', '.');
            return decimal.TryParse(v, NumberStyles.Number, CultureInfo.InvariantCulture, out var d)
                ? JsonValue.Create(d)
                : throw new FormatException($"{ColumnLabel(column)}: '{v}' non è un numero");
        }

        if (DateColumns.Contains(column) || TimestampColumns.Contains(column))
        {
            var v = value.Trim();
            if (!DateTime.TryParse(v, CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt))
                throw new FormatException($"{ColumnLabel(column)}: '{v}' non è una data valida (usa yyyy-MM-dd)");
            return DateColumns.Contains(column)
                ? dt.ToString("yyyy-MM-dd", CultureInfo.InvariantCulture)
                : dt.ToString("yyyy-MM-dd'T'HH:mm:ss", CultureInfo.InvariantCulture);
        }

        return value;
    }

    /// <summary>
    /// Friendly label for display
    /// </summary>
    public static string ColumnLabel(string col) => col switch
    {
        "wikiloc_id" => "Wikiloc ID",
        "titolo" => "Titolo",
        "descrizione" => "Descrizione",
        "descrizione_html" => "Descrizione HTML",
        "attivita" => "Attività",
        "distanza_km" => "Distanza (km)",
        "dislivello_m" => "Dislivello (m)",
        "quota_min_m" => "Quota min (m)",
        "quota_max_m" => "Quota max (m)",
        "tempo_min" => "Tempo (min)",
        "tempo_hhmm" => "Tempo (hh:mm)",
        "tempo_mov_min" => "Tempo mov. (min)",
        "tempo_mov_hhmm" => "Tempo mov. (hh:mm)",
        "coordinate_count" => "Coordinate count",
        "difficolta" => "Difficoltà",
        "tipo_giro" => "Tipo giro",
        "superficie" => "Superficie",
        "regione" => "Regione",
        "provincia" => "Provincia",
        "comune" => "Comune",
        "data_escursione" => "Data escursione",
        "data_registrato" => "Data registrato",
        "data_caricato" => "Data caricato",
        "data_pubblicazione" => "Data pubblicazione",
        "url" => "URL Wikiloc",
        "bbox" => "Bounding Box",
        "centroid_lat" => "Latitudine",
        "centroid_lon" => "Longitudine",
        "geom" => "Geometria (WKT)",
        "sha256_payload" => "SHA256 payload",
        "meta_descrizione" => "Meta Descrizione (SEO)",
        "tag" => "Tag",
        "titolo_seo" => "Titolo SEO",
        "created_at" => "Creato il",
        "updated_at" => "Aggiornato il",
        _ => col
    };

    /// <summary>
    /// Columns that should use textarea for editing
    /// </summary>
    public static bool IsTextArea(string col) => col is "descrizione" or "descrizione_html" or "meta_descrizione" or "geom";

    /// <summary>
    /// Columns that are read-only in the editor
    /// </summary>
    public static bool IsReadOnly(string col) => col is "created_at" or "updated_at" or "sha256_payload";
}

using System.Text;
using System.Text.RegularExpressions;

namespace Escursioni.MigrationEditor.Services;

public class MigrationParserService
{
    private readonly string _migrationsDir;

    // Columns in the INSERT INTO escursioni.hike(...) in the standard order
    public static readonly string[] HikeColumns =
    [
        "wikiloc_id", "titolo", "descrizione", "descrizione_html", "attivita",
        "distanza_km", "dislivello_m", "quota_min_m", "quota_max_m",
        "tempo_min", "tempo_hhmm",
        "tempo_mov_min", "tempo_mov_hhmm", "coordinate_count",
        "difficolta", "tipo_giro", "superficie",
        "regione", "provincia", "comune",
        "data_escursione", "data_registrato", "data_caricato", "data_pubblicazione",
        "url", "bbox", "centroid_lat", "centroid_lon", "geom",
        "sha256_payload", "meta_descrizione", "titolo_seo",
        "created_at", "updated_at"
    ];

    // Columns that appear in the INSERT but we parse from the column list dynamically
    public static readonly string[] MediaColumns =
        ["tipo", "path_relativo", "ordine", "larghezza", "altezza", "sha256", "filesize_bytes"];

    public MigrationParserService(string migrationsDir)
    {
        _migrationsDir = migrationsDir;
    }

    /// <summary>Resolve a relative media path (e.g. "media/images/123/photo_01.jpg") to the absolute file path in Escursioni.Web/wwwroot.</summary>
    public string ResolveMediaPath(string relativeMediaPath)
    {
        var webRoot = Path.GetFullPath(Path.Combine(_migrationsDir, "..", "wwwroot"));
        return Path.Combine(webRoot, relativeMediaPath.Replace('/', Path.DirectorySeparatorChar));
    }

    public List<MigrationFile> ListMigrations()
    {
        if (!Directory.Exists(_migrationsDir))
            return [];

        return Directory.GetFiles(_migrationsDir, "*.sql")
            .Where(f => Path.GetFileName(f).StartsWith("20")) // skip schema files
            .OrderByDescending(f => Path.GetFileName(f), StringComparer.OrdinalIgnoreCase)
            .Select(f => new MigrationFile
            {
                FileName = Path.GetFileName(f),
                FullPath = f
            })
            .ToList();
    }

    public MigrationFile Parse(string filePath)
    {
        var raw = File.ReadAllText(filePath, Encoding.UTF8);
        var mf = new MigrationFile
        {
            FileName = Path.GetFileName(filePath),
            FullPath = filePath,
            RawSql = raw
        };

        // Parse hike INSERT columns and values
        ParseHikeInsert(raw, mf);

        // Parse media inserts
        ParseMediaInserts(raw, mf);

        return mf;
    }

    private static void ParseHikeInsert(string sql, MigrationFile mf)
    {
        // Match: INSERT INTO escursioni.hike (\n  col1, col2, ...\n)\nVALUES (\n  val1, val2, ...\n)
        var insertMatch = Regex.Match(sql,
            @"INSERT\s+INTO\s+escursioni\.hike\s*\(\s*([\s\S]*?)\)\s*VALUES\s*\(\s*([\s\S]*?)\)\s*ON\s+CONFLICT",
            RegexOptions.IgnoreCase);

        if (!insertMatch.Success)
            return;

        var colsPart = insertMatch.Groups[1].Value;
        var valsPart = insertMatch.Groups[2].Value;

        var columns = ParseColumnList(colsPart);
        var values = ParseValueList(valsPart);

        for (int i = 0; i < columns.Count && i < values.Count; i++)
        {
            mf.HikeValues[columns[i]] = values[i];
        }

        // If meta_descrizione not in file, add empty
        if (!mf.HikeValues.ContainsKey("meta_descrizione"))
            mf.HikeValues["meta_descrizione"] = null;
        if (!mf.HikeValues.ContainsKey("titolo_seo"))
            mf.HikeValues["titolo_seo"] = null;
    }

    private static void ParseMediaInserts(string sql, MigrationFile mf)
    {
        // Each media insert looks like:
        // INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
        // SELECT id, 'foto', 'media/...', 1, NULL, NULL, NULL, NULL
        // FROM escursioni.hike WHERE wikiloc_id = ...;
        var mediaMatches = Regex.Matches(sql,
            @"INSERT\s+INTO\s+escursioni\.hike_media\s*\([^)]+\)\s*SELECT\s+id\s*,\s*([\s\S]*?)\s*FROM\s+escursioni\.hike",
            RegexOptions.IgnoreCase);

        foreach (Match m in mediaMatches)
        {
            var valsPart = m.Groups[1].Value;
            var values = ParseValueList(valsPart);

            if (values.Count >= MediaColumns.Length)
            {
                var row = new Dictionary<string, string?>();
                for (int i = 0; i < MediaColumns.Length; i++)
                    row[MediaColumns[i]] = values[i];
                mf.MediaRows.Add(row);
            }
        }
    }

    private static List<string> ParseColumnList(string colsPart)
    {
        return colsPart.Split(',')
            .Select(c => c.Trim().Trim('\n', '\r'))
            .Where(c => !string.IsNullOrWhiteSpace(c))
            .ToList();
    }

    /// <summary>
    /// Parse a SQL value list, handling quoted strings with escaped quotes ('it''s'),
    /// NULL, NOW(), numbers, etc.
    /// </summary>
    private static List<string?> ParseValueList(string valsPart)
    {
        var values = new List<string?>();
        int i = 0;
        var s = valsPart.Trim();

        while (i < s.Length)
        {
            // Skip whitespace and newlines
            while (i < s.Length && (char.IsWhiteSpace(s[i]) || s[i] == '\n' || s[i] == '\r'))
                i++;

            if (i >= s.Length) break;

            if (s[i] == '\'')
            {
                // Quoted string - find end respecting '' escapes
                var sb = new StringBuilder();
                i++; // skip opening '
                while (i < s.Length)
                {
                    if (s[i] == '\'' && i + 1 < s.Length && s[i + 1] == '\'')
                    {
                        sb.Append('\'');
                        i += 2;
                    }
                    else if (s[i] == '\'')
                    {
                        i++; // skip closing '
                        break;
                    }
                    else
                    {
                        sb.Append(s[i]);
                        i++;
                    }
                }
                values.Add(sb.ToString());
            }
            else
            {
                // Unquoted token: NULL, NOW(), number, etc.
                var sb = new StringBuilder();
                int parenDepth = 0;
                while (i < s.Length)
                {
                    if (s[i] == '(') parenDepth++;
                    else if (s[i] == ')') parenDepth--;

                    if (s[i] == ',' && parenDepth == 0) break;
                    sb.Append(s[i]);
                    i++;
                }
                var token = sb.ToString().Trim();
                values.Add(string.Equals(token, "NULL", StringComparison.OrdinalIgnoreCase) ? null : token);
            }

            // Skip comma
            while (i < s.Length && (char.IsWhiteSpace(s[i]) || s[i] == '\n' || s[i] == '\r'))
                i++;
            if (i < s.Length && s[i] == ',')
                i++;
        }

        return values;
    }

    /// <summary>
    /// Regenerate the full SQL file from the parsed MigrationFile data.
    /// </summary>
    public string GenerateSql(MigrationFile mf)
    {
        var sb = new StringBuilder();
        sb.AppendLine("BEGIN;");
        sb.AppendLine();

        var wiklocId = mf.HikeValues.GetValueOrDefault("wikiloc_id") ?? "0";
        var url = mf.HikeValues.GetValueOrDefault("url") ?? "";
        var sha = mf.HikeValues.GetValueOrDefault("sha256_payload");

        // Determine which columns to write (all standard + meta_descrizione if present)
        var columns = HikeColumns.Where(c => c != "created_at" && c != "updated_at").ToList();
        // Always include created_at and updated_at at the end
        columns.Add("created_at");
        columns.Add("updated_at");

        sb.AppendLine("INSERT INTO escursioni.hike (");
        sb.AppendLine("  " + string.Join(", ", columns));
        sb.AppendLine(")");
        sb.AppendLine("VALUES (");

        var valueLines = new List<string>();
        foreach (var col in columns)
        {
            if (col == "created_at" || col == "updated_at")
            {
                valueLines.Add("  NOW()");
                continue;
            }
            var val = mf.HikeValues.GetValueOrDefault(col);
            valueLines.Add("  " + FormatSqlValue(col, val));
        }
        sb.AppendLine(string.Join(",\n", valueLines));

        sb.AppendLine(")");

        // ON CONFLICT
        sb.AppendLine("ON CONFLICT (wikiloc_id) DO UPDATE SET");
        var updateCols = columns.Where(c => c != "wikiloc_id" && c != "created_at").ToList();
        // Replace updated_at with NOW()
        var updateLines = new List<string>();
        foreach (var col in updateCols)
        {
            if (col == "updated_at")
                updateLines.Add($"  updated_at = NOW()");
            else
                updateLines.Add($"  {col} = EXCLUDED.{col}");
        }
        sb.AppendLine(string.Join(",\n", updateLines) + ";");
        sb.AppendLine();

        // Registry upsert
        sb.AppendLine($"INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)");
        sb.AppendLine($"VALUES ({wiklocId}, {FormatSqlValue("url", url)}, NOW(), {FormatSqlValue("sha256_payload", sha)})");
        sb.AppendLine($"ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;");
        sb.AppendLine();

        // Delete existing media
        sb.AppendLine();
        sb.AppendLine($"DELETE FROM escursioni.hike_media");
        sb.AppendLine($"WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = {wiklocId});");
        sb.AppendLine();

        // Media inserts
        foreach (var row in mf.MediaRows)
        {
            sb.AppendLine();
            sb.AppendLine($"INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)");
            sb.Append($"SELECT id, ");
            sb.Append(FormatSqlValue("tipo", row.GetValueOrDefault("tipo")));
            sb.Append(", ");
            sb.Append(FormatSqlValue("path_relativo", row.GetValueOrDefault("path_relativo")));
            sb.Append(", ");
            sb.Append(FormatSqlValue("ordine", row.GetValueOrDefault("ordine")));
            sb.Append(",");
            sb.AppendLine();
            sb.Append("       ");
            sb.Append(FormatSqlValue("larghezza", row.GetValueOrDefault("larghezza")));
            sb.Append(",");
            sb.AppendLine();
            sb.Append("       ");
            sb.Append(FormatSqlValue("altezza", row.GetValueOrDefault("altezza")));
            sb.Append(",");
            sb.AppendLine();
            sb.Append("       ");
            sb.Append(FormatSqlValue("sha256", row.GetValueOrDefault("sha256")));
            sb.Append(",");
            sb.AppendLine();
            sb.Append("       ");
            sb.AppendLine(FormatSqlValue("filesize_bytes", row.GetValueOrDefault("filesize_bytes")));
            sb.AppendLine($"FROM escursioni.hike WHERE wikiloc_id = {wiklocId};");
        }

        sb.AppendLine();
        sb.AppendLine("COMMIT;");

        return sb.ToString();
    }

    public void Save(MigrationFile mf)
    {
        var sql = GenerateSql(mf);
        File.WriteAllText(mf.FullPath, sql, Encoding.UTF8);
    }

    /// <summary>
    /// Columns that should be rendered as SQL strings (quoted).
    /// </summary>
    private static readonly HashSet<string> StringColumns = new(StringComparer.OrdinalIgnoreCase)
    {
        "titolo", "descrizione", "descrizione_html", "attivita",
        "tempo_hhmm", "tempo_mov_hhmm",
        "difficolta", "tipo_giro", "superficie",
        "regione", "provincia", "comune",
        "data_escursione", "data_registrato", "data_caricato", "data_pubblicazione",
        "url", "bbox", "geom", "sha256_payload", "meta_descrizione", "titolo_seo",
        "tipo", "path_relativo", "sha256"
    };

    private static string FormatSqlValue(string column, string? value)
    {
        if (value == null)
            return "NULL";

        if (string.Equals(value, "NOW()", StringComparison.OrdinalIgnoreCase))
            return "NOW()";

        if (StringColumns.Contains(column))
            return "'" + value.Replace("'", "''") + "'";

        // Numeric or other literal
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

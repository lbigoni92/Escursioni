namespace Escursioni.MigrationEditor.Services;

public enum BulkMode { All, SeoOnly, TitleSeoOnly, MetaDescOnly, HtmlOnly, TagOnly, GpxStatsOnly }

public class BulkGenerationService
{
    private readonly MigrationParserService _parser;
    private readonly MetaDescriptionGenerator _metaGen;
    private readonly GpxStatsService _gpxStats;
    private readonly object _lock = new();

    public bool IsRunning { get; private set; }
    public int Current { get; private set; }
    public int Total { get; private set; }
    public string? Message { get; private set; }
    public string? Error { get; private set; }
    public string? CurrentFileName { get; private set; }
    public string? CurrentStep { get; private set; }
    public BulkMode Mode { get; private set; }

    public BulkGenerationService(MigrationParserService parser, MetaDescriptionGenerator metaGen, GpxStatsService gpxStats)
    {
        _parser = parser;
        _metaGen = metaGen;
        _gpxStats = gpxStats;
    }

    public bool TryStart(BulkMode mode = BulkMode.All)
    {
        lock (_lock)
        {
            if (IsRunning) return false;
            IsRunning = true;
            Mode = mode;
            Message = null;
            Error = null;
            Current = 0;
            Total = 0;
            CurrentFileName = null;
            CurrentStep = null;
            return true;
        }
    }

    public Task RunAsync()
    {
        _ = Task.Run(async () => await GenerateAllAsync());
        return Task.CompletedTask;
    }

    private async Task GenerateAllAsync()
    {
        try
        {
            var migrations = _parser.ListMigrations();
            var quickCache = new Dictionary<string, Dictionary<string, string?>>();
            foreach (var m in migrations)
            {
                var parsed = _parser.Parse(m.FullPath);
                quickCache[m.FileName] = parsed.HikeValues;
            }

            var toProcess = migrations
                .Where(m =>
                {
                    quickCache.TryGetValue(m.FileName, out var vals);
                    if (vals == null) return false;

                    if (Mode == BulkMode.GpxStatsOnly)
                    {
                        // Only process if wikiloc_id exists (to find GPX file)
                        var wid = vals.GetValueOrDefault("wikiloc_id");
                        return !string.IsNullOrWhiteSpace(wid) && wid != "0";
                    }

                    var titolo = vals.GetValueOrDefault("titolo");
                    var descrizione = vals.GetValueOrDefault("descrizione");
                    if (string.IsNullOrWhiteSpace(titolo) && string.IsNullOrWhiteSpace(descrizione))
                        return false;

                    return Mode switch
                    {
                        BulkMode.SeoOnly => true,
                        BulkMode.TitleSeoOnly => IsTitleTooLong(vals),
                        BulkMode.MetaDescOnly => true,
                        BulkMode.HtmlOnly => string.IsNullOrWhiteSpace(vals.GetValueOrDefault("descrizione_html")),
                        BulkMode.TagOnly => true,
                        _ => string.IsNullOrWhiteSpace(vals.GetValueOrDefault("descrizione_html"))
                    };
                })
                .OrderBy(m =>
                {
                    quickCache.TryGetValue(m.FileName, out var vals);
                    if (Mode is BulkMode.SeoOnly or BulkMode.TitleSeoOnly or BulkMode.MetaDescOnly)
                    {
                        var missingTitle = string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("titolo_seo"));
                        var missingMeta = string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("meta_descrizione"));
                        var missing = Mode switch
                        {
                            BulkMode.TitleSeoOnly => missingTitle,
                            BulkMode.MetaDescOnly => missingMeta,
                            _ => missingTitle || missingMeta
                        };
                        return missing ? 0 : 1;
                    }
                    if (Mode == BulkMode.TagOnly)
                    {
                        return string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("tag")) ? 0 : 1;
                    }
                    return 0;
                })
                .ThenBy(m => m.FileName)
                .ToList();

            Total = toProcess.Count;
            Current = 0;

            if (Total == 0)
            {
                Message = "Nessuna migrazione con titolo o descrizione da elaborare.";
                IsRunning = false;
                return;
            }

            int generated = 0;
            int errors = 0;

            foreach (var m in toProcess)
            {
                Current++;

                try
                {
                    var mf = _parser.Parse(m.FullPath);
                    var titolo = mf.HikeValues.GetValueOrDefault("titolo") ?? "";
                    var descrizione = mf.HikeValues.GetValueOrDefault("descrizione") ?? "";

                    var ctx = new HikeSeoContext(
                        Comune: mf.HikeValues.GetValueOrDefault("comune"),
                        Provincia: mf.HikeValues.GetValueOrDefault("provincia"),
                        Regione: mf.HikeValues.GetValueOrDefault("regione"),
                        Difficolta: mf.HikeValues.GetValueOrDefault("difficolta"),
                        DistanzaKm: mf.HikeValues.GetValueOrDefault("distanza_km"),
                        DislivelloM: mf.HikeValues.GetValueOrDefault("dislivello_m"),
                        TipoGiro: mf.HikeValues.GetValueOrDefault("tipo_giro")
                    );

                    CurrentFileName = m.FileName;

                    // 1. SEO – Titolo
                    if (Mode is BulkMode.All or BulkMode.SeoOnly or BulkMode.TitleSeoOnly)
                    {
                        CurrentStep = "titolo_seo";
                        var seoTitleResult = await _metaGen.GenerateSeoTitleAsync(titolo, descrizione, ctx);
                        mf.HikeValues["titolo_seo"] = seoTitleResult;
                    }

                    // 2. SEO – Meta Descrizione
                    if (Mode is BulkMode.All or BulkMode.SeoOnly or BulkMode.MetaDescOnly)
                    {
                        CurrentStep = "meta_descrizione";
                        var metaResult = await _metaGen.GenerateAsync(titolo, descrizione, ctx);
                        mf.HikeValues["meta_descrizione"] = metaResult;
                    }

                    // 3. Descrizione HTML
                    if (Mode is BulkMode.All or BulkMode.HtmlOnly)
                    {
                        CurrentStep = "descrizione_html";
                        if (!string.IsNullOrWhiteSpace(descrizione))
                        {
                            var htmlResult = await _metaGen.GenerateHtmlAsync(titolo, descrizione, ctx);
                            mf.HikeValues["descrizione_html"] = htmlResult;
                        }
                    }

                    // 4. Tag
                    if (Mode is BulkMode.All or BulkMode.TagOnly)
                    {
                        CurrentStep = "tag";
                        var tagResult = await _metaGen.GenerateTagAsync(titolo, descrizione, ctx);
                        mf.HikeValues["tag"] = tagResult;
                    }

                    // 5. GPX Stats — recalculate from GPX track
                    if (Mode == BulkMode.GpxStatsOnly)
                    {
                        CurrentStep = "gpx_stats";
                        var widStr = mf.HikeValues.GetValueOrDefault("wikiloc_id") ?? "0";
                        if (int.TryParse(widStr, out var wid) && wid > 0)
                        {
                            var stats = _gpxStats.Calculate(wid);
                            if (stats != null)
                            {
                                bool changed = false;

                                changed |= TryUpdateIfDifferent(mf, "distanza_km", stats.DistanzaKm,
                                    v => v.ToString("0.00", System.Globalization.CultureInfo.InvariantCulture));
                                changed |= TryUpdateIfDifferent(mf, "dislivello_m", stats.DislivelloM,
                                    v => ((int)v).ToString());
                                changed |= TryUpdateIfDifferent(mf, "quota_min_m", stats.QuotaMinM,
                                    v => ((int)v).ToString());
                                changed |= TryUpdateIfDifferent(mf, "quota_max_m", stats.QuotaMaxM,
                                    v => ((int)v).ToString());
                                changed |= TryUpdateIfDifferent(mf, "tempo_min", stats.TempoMin,
                                    v => ((int)v).ToString());
                                changed |= TryUpdateIfDifferent(mf, "tempo_mov_min", stats.TempoMovMin,
                                    v => ((int)v).ToString());

                                if (changed)
                                {
                                    // Also update the formatted hh:mm fields
                                    mf.HikeValues["tempo_hhmm"] = stats.TempoHhmm;
                                    mf.HikeValues["tempo_mov_hhmm"] = stats.TempoMovHhmm;
                                }
                            }
                        }
                    }

                    _parser.Save(mf);
                    generated++;
                }
                catch
                {
                    errors++;
                }
            }

            Message = $"Completato: {generated}/{Total} rigenerati";
            if (errors > 0)
                Error = $"{errors} errori";
        }
        catch (Exception ex)
        {
            Error = $"Errore critico: {ex.Message}";
        }
        finally
        {
            CurrentFileName = null;
            CurrentStep = null;
            IsRunning = false;
        }
    }

    // Layout appends " | Escursioni" (14 chars) → title content must be ≤ 56 chars
    private const int MaxSeoTitleLength = 56;

    private static bool IsTitleTooLong(Dictionary<string, string?> vals)
    {
        var title = vals.GetValueOrDefault("titolo_seo");
        if (string.IsNullOrWhiteSpace(title))
            title = vals.GetValueOrDefault("titolo");
        return !string.IsNullOrWhiteSpace(title) && title.Length > MaxSeoTitleLength;
    }

    /// <summary>
    /// Updates a migration field if the GPX-calculated value differs by more than 20% from the current value.
    /// Returns true if the field was updated.
    /// </summary>
    private static bool TryUpdateIfDifferent(MigrationFile mf, string field, double calculated, Func<double, string> format)
    {
        var currentStr = mf.HikeValues.GetValueOrDefault(field);
        var current = 0.0;
        if (!string.IsNullOrWhiteSpace(currentStr))
            double.TryParse(currentStr, System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out current);

        if (!GpxStatsService.DiffersSignificantly(current, calculated))
            return false;

        mf.HikeValues[field] = format(calculated);
        return true;
    }
}

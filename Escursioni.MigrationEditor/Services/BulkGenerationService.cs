namespace Escursioni.MigrationEditor.Services;

public enum BulkMode { All, SeoOnly, HtmlOnly, TagOnly }

public class BulkGenerationService
{
    private readonly MigrationParserService _parser;
    private readonly MetaDescriptionGenerator _metaGen;
    private readonly object _lock = new();

    public bool IsRunning { get; private set; }
    public int Current { get; private set; }
    public int Total { get; private set; }
    public string? Message { get; private set; }
    public string? Error { get; private set; }
    public string? CurrentFileName { get; private set; }
    public string? CurrentStep { get; private set; }
    public BulkMode Mode { get; private set; }

    public BulkGenerationService(MigrationParserService parser, MetaDescriptionGenerator metaGen)
    {
        _parser = parser;
        _metaGen = metaGen;
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
                    var titolo = vals.GetValueOrDefault("titolo");
                    var descrizione = vals.GetValueOrDefault("descrizione");
                    if (string.IsNullOrWhiteSpace(titolo) && string.IsNullOrWhiteSpace(descrizione))
                        return false;

                    return Mode switch
                    {
                        BulkMode.SeoOnly => true, // rigenera tutte, priorità a chi manca
                        BulkMode.HtmlOnly => string.IsNullOrWhiteSpace(vals.GetValueOrDefault("descrizione_html")),
                        BulkMode.TagOnly => true, // rigenera tutte, priorità a chi manca
                        _ => string.IsNullOrWhiteSpace(vals.GetValueOrDefault("descrizione_html"))
                    };
                })
                .OrderBy(m =>
                {
                    quickCache.TryGetValue(m.FileName, out var vals);
                    if (Mode == BulkMode.SeoOnly)
                    {
                        var missing = string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("titolo_seo"))
                                   || string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("meta_descrizione"));
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
                    if (Mode is BulkMode.All or BulkMode.SeoOnly)
                    {
                        CurrentStep = "titolo_seo";
                        var seoTitleResult = await _metaGen.GenerateSeoTitleAsync(titolo, descrizione, ctx);
                        mf.HikeValues["titolo_seo"] = seoTitleResult;
                    }

                    // 2. SEO – Meta Descrizione
                    if (Mode is BulkMode.All or BulkMode.SeoOnly)
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
}

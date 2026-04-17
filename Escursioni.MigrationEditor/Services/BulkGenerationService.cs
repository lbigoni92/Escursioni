namespace Escursioni.MigrationEditor.Services;

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

    public BulkGenerationService(MigrationParserService parser, MetaDescriptionGenerator metaGen)
    {
        _parser = parser;
        _metaGen = metaGen;
    }

    public bool TryStart()
    {
        lock (_lock)
        {
            if (IsRunning) return false;
            IsRunning = true;
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
                    return !string.IsNullOrWhiteSpace(titolo) || !string.IsNullOrWhiteSpace(descrizione);
                })
                .OrderBy(m =>
                {
                    quickCache.TryGetValue(m.FileName, out var vals);
                    return string.IsNullOrWhiteSpace(vals?.GetValueOrDefault("titolo_seo")) ? 0 : 1;
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

                    CurrentFileName = m.FileName;

                    // 1. SEO – Titolo
                    CurrentStep = "titolo_seo";
                    var seoTitleResult = await _metaGen.GenerateSeoTitleAsync(titolo, descrizione);
                    mf.HikeValues["titolo_seo"] = seoTitleResult;

                    // 2. SEO – Meta Descrizione
                    CurrentStep = "meta_descrizione";
                    var metaResult = await _metaGen.GenerateAsync(titolo, descrizione);
                    mf.HikeValues["meta_descrizione"] = metaResult;

                    // 3. Descrizione HTML
                    CurrentStep = "descrizione_html";
                    if (!string.IsNullOrWhiteSpace(descrizione))
                    {
                        var htmlResult = await _metaGen.GenerateHtmlAsync(titolo, descrizione);
                        mf.HikeValues["descrizione_html"] = htmlResult;
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

namespace Escursioni.Web.Services;

/// <summary>
/// Servizio in background che all'avvio scansiona tutte le immagini in wwwroot/media/images
/// e genera le varianti WebP mancanti (.thumb.webp, .gallery.webp) usando ImageVariantGenerator
/// (stesso singleton usato dal middleware, con lock condiviso).
/// </summary>
public sealed class ImagePrewarmService : BackgroundService
{
    private readonly IWebHostEnvironment _env;
    private readonly ImageVariantGenerator _generator;
    private readonly ILogger<ImagePrewarmService> _logger;
    private readonly bool _enabled;
    private readonly int _startupDelaySeconds;
    private readonly int _maxWorkers;

    public ImagePrewarmService(
        IWebHostEnvironment env,
        ImageVariantGenerator generator,
        ILogger<ImagePrewarmService> logger,
        IConfiguration config)
    {
        _env = env;
        _generator = generator;
        _logger = logger;
        _enabled = config.GetValue("Images:Prewarm:Enabled", true);
        _startupDelaySeconds = Math.Max(0, config.GetValue("Images:Prewarm:StartupDelaySeconds", 0));

        var suggestedWorkers = Math.Min(Math.Max(1, Environment.ProcessorCount), 4);
        _maxWorkers = Math.Clamp(config.GetValue("Images:Prewarm:MaxWorkers", suggestedWorkers), 1, 8);
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        if (!_enabled)
        {
            _logger.LogInformation("[ImagePrewarm] Disabilitato da configurazione (Images:Prewarm:Enabled=false)");
            return;
        }

        if (_startupDelaySeconds > 0)
            await Task.Delay(TimeSpan.FromSeconds(_startupDelaySeconds), stoppingToken);

        var imagesRoot = Path.Combine(_env.WebRootPath, "media", "images");
        if (!Directory.Exists(imagesRoot))
        {
            _logger.LogWarning("[ImagePrewarm] Directory non trovata: {Path}", imagesRoot);
            return;
        }
        // Raccogli tutti i file sorgente ricorsivamente (con try/catch per non fallire su errori FS)
        List<string> sourceFiles;
        try
        {
            sourceFiles = Directory.EnumerateFiles(imagesRoot, "*.*", SearchOption.AllDirectories)
                .Where(f => ImageVariantGenerator.SourceExtensions.Contains(Path.GetExtension(f).ToLowerInvariant())
                            && !f.Contains(".thumb.") && !f.Contains(".gallery."))
                .ToList();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "[ImagePrewarm] Errore durante lo scan delle directory {Path}", imagesRoot);
            return;
        }

        var totalVariants = sourceFiles.Count * ImageVariantGenerator.Variants.Length;
        _logger.LogInformation("[ImagePrewarm] Trovate {Sources} immagini sorgente → {Total} varianti da controllare",
            sourceFiles.Count, totalVariants);

        if (totalVariants == 0) return;

        var generated = 0;
        var skipped = 0;
        var errors = 0;
        var processed = 0;
        var lastLoggedPercent = -1;

        // Controlled worker pool using a ConcurrentQueue to avoid creating a Task per file
        var queue = new System.Collections.Concurrent.ConcurrentQueue<string>(sourceFiles);
        var workers = new List<Task>(_maxWorkers);

        for (var i = 0; i < _maxWorkers; i++)
        {
            workers.Add(Task.Run(async () =>
            {
                while (!stoppingToken.IsCancellationRequested && queue.TryDequeue(out var src))
                {
                    var folder = Path.GetDirectoryName(src)!;
                    var baseName = Path.Combine(folder, Path.GetFileNameWithoutExtension(src));

                    foreach (var variant in ImageVariantGenerator.Variants)
                    {
                        if (stoppingToken.IsCancellationRequested) break;

                        var outPath = baseName + variant.Suffix;
                        try
                        {
                            var wasGenerated = await _generator.GenerateIfMissingAsync(src, outPath, variant, stoppingToken);
                            if (wasGenerated) Interlocked.Increment(ref generated);
                            else Interlocked.Increment(ref skipped);
                        }
                        catch (Exception ex) when (ex is not OperationCanceledException)
                        {
                            _logger.LogWarning(ex, "[ImagePrewarm] Errore generazione {Path}", outPath);
                            Interlocked.Increment(ref errors);
                        }

                        var processedNow = Interlocked.Increment(ref processed);
                        var percent = processedNow * 100 / Math.Max(1, totalVariants);

                        var prev = Volatile.Read(ref lastLoggedPercent);
                        if (percent - prev >= 10)
                        {
                            if (Interlocked.CompareExchange(ref lastLoggedPercent, percent, prev) == prev)
                            {
                                var gen = Interlocked.Add(ref generated, 0);
                                var skp = Interlocked.Add(ref skipped, 0);
                                _logger.LogInformation("[ImagePrewarm] {Percent}% ({Processed}/{Total}) — generate: {Generated}, già presenti: {Skipped}",
                                    percent, processedNow, totalVariants, gen, skp);
                            }
                        }
                    }
                }
            }, stoppingToken));
        }

        try
        {
            await Task.WhenAll(workers);
        }
        catch (OperationCanceledException) { }

        var finalGen = Interlocked.Add(ref generated, 0);
        var finalSkp = Interlocked.Add(ref skipped, 0);
        var finalErr = Interlocked.Add(ref errors, 0);
        // finalPercent: percentuale di varianti effettivamente generate (ottimizzate)
        var finalPercent = totalVariants > 0 ? finalGen * 100 / totalVariants : 100;
        _logger.LogInformation("[ImagePrewarm] Completato: {FinalPercent}% ottimizzate — {Generated} generate, {Skipped} già presenti, {Errors} errori",
            finalPercent, finalGen, finalSkp, finalErr);
    }
}

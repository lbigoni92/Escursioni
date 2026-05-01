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

    public ImagePrewarmService(
        IWebHostEnvironment env,
        ImageVariantGenerator generator,
        ILogger<ImagePrewarmService> logger)
    {
        _env = env;
        _generator = generator;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        // Piccola pausa per non appesantire l'avvio a freddo
        await Task.Delay(TimeSpan.FromSeconds(3), stoppingToken);

        var imagesRoot = Path.Combine(_env.WebRootPath, "media", "images");
        if (!Directory.Exists(imagesRoot))
        {
            _logger.LogWarning("[ImagePrewarm] Directory non trovata: {Path}", imagesRoot);
            return;
        }

        // Prima passata: raccogli tutti i file sorgente
        var sourceFiles = Directory.GetDirectories(imagesRoot)
            .SelectMany(folder => Directory.GetFiles(folder)
                .Where(f => ImageVariantGenerator.SourceExtensions.Contains(
                                Path.GetExtension(f).ToLowerInvariant())
                            && !f.Contains(".thumb.") && !f.Contains(".gallery.")))
            .ToList();

        var totalVariants = sourceFiles.Count * ImageVariantGenerator.Variants.Length;
        _logger.LogInformation(
            "[ImagePrewarm] Trovate {Sources} immagini sorgente → {Total} varianti da controllare",
            sourceFiles.Count, totalVariants);

        if (totalVariants == 0) return;

        var generated = 0;
        var skipped = 0;
        var errors = 0;
        var processed = 0;
        var lastLoggedPercent = -1;

        foreach (var sourceFile in sourceFiles)
        {
            if (stoppingToken.IsCancellationRequested) break;

            var folder = Path.GetDirectoryName(sourceFile)!;
            var baseName = Path.Combine(folder, Path.GetFileNameWithoutExtension(sourceFile));

            foreach (var variant in ImageVariantGenerator.Variants)
            {
                if (stoppingToken.IsCancellationRequested) break;

                var outPath = baseName + variant.Suffix;
                try
                {
                    var wasGenerated = await _generator.GenerateIfMissingAsync(
                        sourceFile, outPath, variant, stoppingToken);

                    if (wasGenerated) generated++;
                    else skipped++;
                }
                catch (Exception ex) when (ex is not OperationCanceledException)
                {
                    _logger.LogWarning(ex, "[ImagePrewarm] Errore generazione {Path}", outPath);
                    errors++;
                }

                processed++;
                var percent = processed * 100 / totalVariants;
                if (percent / 10 > lastLoggedPercent / 10)
                {
                    lastLoggedPercent = percent;
                    _logger.LogInformation(
                        "[ImagePrewarm] {Percent}% ({Processed}/{Total}) — generate: {Generated}, già presenti: {Skipped}",
                        percent, processed, totalVariants, generated, skipped);
                }
            }
        }

        var finalPercent = totalVariants > 0 ? (generated + skipped) * 100 / totalVariants : 100;
        _logger.LogInformation(
            "[ImagePrewarm] Completato: {FinalPercent}% ottimizzate — {Generated} generate, {Skipped} già presenti, {Errors} errori",
            finalPercent, generated, skipped, errors);
    }
}

using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Formats.Webp;
using SixLabors.ImageSharp.Processing;

namespace Escursioni.Web.Services;

/// <summary>
/// Servizio in background che all'avvio scansiona tutte le immagini in wwwroot/media/images
/// e genera le varianti WebP mancanti (.thumb.webp, .gallery.webp) usando ImageSharp.
/// Sostituisce lo stage Node.js nel Dockerfile.
/// </summary>
public sealed class ImagePrewarmService : BackgroundService
{
    private readonly IWebHostEnvironment _env;
    private readonly ILogger<ImagePrewarmService> _logger;

    private static readonly string[] SourceExtensions = [".jpg", ".jpeg", ".png"];

    private record VariantSpec(string Suffix, int Width, int Quality);
    private static readonly VariantSpec[] Variants =
    [
        new(".thumb.webp", 400, 80),
        new(".gallery.webp", 800, 82),
    ];

    public ImagePrewarmService(IWebHostEnvironment env, ILogger<ImagePrewarmService> logger)
    {
        _env = env;
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

        _logger.LogInformation("[ImagePrewarm] Avvio scansione immagini in {Path}", imagesRoot);

        var generated = 0;
        var skipped = 0;
        var errors = 0;

        var folders = Directory.GetDirectories(imagesRoot);

        foreach (var folder in folders)
        {
            if (stoppingToken.IsCancellationRequested) break;

            var sourceFiles = Directory.GetFiles(folder)
                .Where(f => SourceExtensions.Contains(Path.GetExtension(f).ToLowerInvariant())
                            && !f.Contains(".thumb.") && !f.Contains(".gallery."))
                .ToList();

            foreach (var sourceFile in sourceFiles)
            {
                if (stoppingToken.IsCancellationRequested) break;

                var baseName = Path.Combine(folder, Path.GetFileNameWithoutExtension(sourceFile));

                foreach (var variant in Variants)
                {
                    var outPath = baseName + variant.Suffix;
                    if (File.Exists(outPath))
                    {
                        skipped++;
                        continue;
                    }

                    try
                    {
                        using var image = await Image.LoadAsync(sourceFile, stoppingToken);
                        image.Mutate(x => x.Resize(new ResizeOptions
                        {
                            Mode = ResizeMode.Max,
                            Size = new Size(variant.Width, 0),
                        }));
                        var encoder = new WebpEncoder { Quality = variant.Quality };
                        await image.SaveAsync(outPath, encoder, stoppingToken);
                        generated++;
                    }
                    catch (Exception ex) when (ex is not OperationCanceledException)
                    {
                        _logger.LogWarning(ex, "[ImagePrewarm] Errore generazione {Path}", outPath);
                        errors++;
                    }
                }
            }
        }

        _logger.LogInformation(
            "[ImagePrewarm] Completato: {Generated} generate, {Skipped} già presenti, {Errors} errori",
            generated, skipped, errors);
    }
}

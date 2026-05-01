namespace Escursioni.Web.Services;

/// <summary>
/// Middleware che genera al volo le varianti WebP ottimizzate (.thumb.webp, .gallery.webp)
/// la prima volta che vengono richieste da un client. Delega la generazione e il locking
/// a ImageVariantGenerator (singleton condiviso con ImagePrewarmService).
/// </summary>
public sealed class ImageOptimizationMiddleware
{
    private readonly RequestDelegate _next;
    private readonly string _webRootPath;
    private readonly ImageVariantGenerator _generator;
    private readonly ILogger<ImageOptimizationMiddleware> _logger;

    public ImageOptimizationMiddleware(
        RequestDelegate next,
        IWebHostEnvironment env,
        ImageVariantGenerator generator,
        ILogger<ImageOptimizationMiddleware> logger)
    {
        _next = next;
        _webRootPath = env.WebRootPath;
        _generator = generator;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        var requestPath = context.Request.Path.Value;
        if (requestPath == null)
        {
            await _next(context);
            return;
        }

        // Controlla se è una richiesta per una variante ottimizzata
        ImageVariantGenerator.VariantSpec? matchedVariant = null;
        foreach (var v in ImageVariantGenerator.Variants)
        {
            if (requestPath.EndsWith(v.Suffix, StringComparison.OrdinalIgnoreCase))
            {
                matchedVariant = v;
                break;
            }
        }

        if (matchedVariant == null)
        {
            await _next(context);
            return;
        }

        var variantPhysicalPath = Path.Combine(
            _webRootPath,
            requestPath.TrimStart('/').Replace('/', Path.DirectorySeparatorChar));

        // Se esiste già, lascia che lo static-file middleware lo serva
        if (File.Exists(variantPhysicalPath))
        {
            await _next(context);
            return;
        }

        // Trova il file sorgente
        var basePath = requestPath[..requestPath.LastIndexOf(matchedVariant.Suffix, StringComparison.OrdinalIgnoreCase)];
        string? sourcePhysicalPath = null;
        foreach (var ext in ImageVariantGenerator.SourceExtensions)
        {
            var candidate = Path.Combine(
                _webRootPath,
                (basePath + ext).TrimStart('/').Replace('/', Path.DirectorySeparatorChar));
            if (File.Exists(candidate))
            {
                sourcePhysicalPath = candidate;
                break;
            }
        }

        if (sourcePhysicalPath == null)
        {
            await _next(context);
            return;
        }

        try
        {
            var generated = await _generator.GenerateIfMissingAsync(
                sourcePhysicalPath,
                variantPhysicalPath,
                matchedVariant,
                context.RequestAborted);

            if (generated)
                _logger.LogInformation("Generata variante {Variant} per {Path}", matchedVariant.Suffix, requestPath);
        }
        catch (Exception ex) when (ex is not OperationCanceledException)
        {
            _logger.LogWarning(ex, "Errore generazione variante {Path}", requestPath);
            await _next(context);
            return;
        }

        // Ora il file esiste: lascia che lo static-file middleware lo serva
        await _next(context);
    }
}

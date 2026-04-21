using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Formats.Webp;
using SixLabors.ImageSharp.Processing;

namespace Escursioni.Web.Services;

/// <summary>
/// Middleware che genera al volo le varianti WebP ottimizzate (.thumb.webp, .gallery.webp)
/// la prima volta che vengono richieste da un client. Il file generato viene salvato su disco
/// così le richieste successive vengono servite direttamente dallo static-file middleware.
/// </summary>
public sealed class ImageOptimizationMiddleware
{
    private readonly RequestDelegate _next;
    private readonly string _webRootPath;
    private readonly ILogger<ImageOptimizationMiddleware> _logger;

    private static readonly string[] SourceExtensions = [".jpg", ".jpeg", ".png"];

    private record VariantSpec(string Suffix, int Width, int Quality);
    private static readonly VariantSpec[] Variants =
    [
        new(".thumb.webp", 400, 80),
        new(".gallery.webp", 800, 82),
    ];

    // Evita generazioni concorrenti dello stesso file
    private static readonly Dictionary<string, SemaphoreSlim> _locks = new();
    private static readonly object _lockGuard = new();

    public ImageOptimizationMiddleware(RequestDelegate next, IWebHostEnvironment env, ILogger<ImageOptimizationMiddleware> logger)
    {
        _next = next;
        _webRootPath = env.WebRootPath;
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
        VariantSpec? matchedVariant = null;
        foreach (var v in Variants)
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

        var variantPhysicalPath = Path.Combine(_webRootPath, requestPath.TrimStart('/').Replace('/', Path.DirectorySeparatorChar));

        // Se esiste già, lascia che lo static-file middleware lo serva
        if (File.Exists(variantPhysicalPath))
        {
            await _next(context);
            return;
        }

        // Trova il file sorgente
        var basePath = requestPath[..requestPath.LastIndexOf(matchedVariant.Suffix, StringComparison.OrdinalIgnoreCase)];
        string? sourcePhysicalPath = null;
        foreach (var ext in SourceExtensions)
        {
            var candidate = Path.Combine(_webRootPath, (basePath + ext).TrimStart('/').Replace('/', Path.DirectorySeparatorChar));
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

        // Lock per-file per evitare generazioni concorrenti
        SemaphoreSlim fileLock;
        lock (_lockGuard)
        {
            if (!_locks.TryGetValue(variantPhysicalPath, out fileLock!))
            {
                fileLock = new SemaphoreSlim(1, 1);
                _locks[variantPhysicalPath] = fileLock;
            }
        }

        await fileLock.WaitAsync(context.RequestAborted);
        try
        {
            // Ricontrolla dopo il lock (un'altra richiesta potrebbe averlo generato)
            if (File.Exists(variantPhysicalPath))
            {
                await _next(context);
                return;
            }

            // Genera la variante
            Directory.CreateDirectory(Path.GetDirectoryName(variantPhysicalPath)!);

            using var image = await Image.LoadAsync(sourcePhysicalPath, context.RequestAborted);
            image.Mutate(x => x.Resize(new ResizeOptions
            {
                Mode = ResizeMode.Max,
                Size = new Size(matchedVariant.Width, 0),
            }));

            var encoder = new WebpEncoder { Quality = matchedVariant.Quality };
            await image.SaveAsync(variantPhysicalPath, encoder, context.RequestAborted);

            _logger.LogInformation("Generata variante {Variant} per {Source}", matchedVariant.Suffix, requestPath);
        }
        catch (Exception ex) when (ex is not OperationCanceledException)
        {
            _logger.LogWarning(ex, "Errore generazione variante {Path}", requestPath);
            await _next(context);
            return;
        }
        finally
        {
            fileLock.Release();
            // Pulizia lock (opzionale, evita crescita illimitata)
            lock (_lockGuard)
            {
                if (fileLock.CurrentCount == 1)
                    _locks.Remove(variantPhysicalPath);
            }
        }

        // Ora il file esiste: lascia che lo static-file middleware lo serva
        await _next(context);
    }
}

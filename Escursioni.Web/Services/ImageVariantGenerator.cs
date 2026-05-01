using SixLabors.ImageSharp;
using SixLabors.ImageSharp.Formats.Webp;
using SixLabors.ImageSharp.Processing;

namespace Escursioni.Web.Services;

/// <summary>
/// Singleton condiviso tra ImageOptimizationMiddleware e ImagePrewarmService.
/// Centralizza la logica di generazione WebP e il lock per-file, evitando
/// race condition quando entrambi tentano di scrivere la stessa variante.
/// </summary>
public sealed class ImageVariantGenerator
{
    public static readonly string[] SourceExtensions = [".jpg", ".jpeg", ".png"];

    public record VariantSpec(string Suffix, int Width, int Quality);
    public static readonly VariantSpec[] Variants =
    [
        new(".thumb.webp", 400, 80),
        new(".gallery.webp", 800, 82),
    ];

    // Lock per-file condiviso tra middleware e prewarm
    private readonly Dictionary<string, SemaphoreSlim> _locks = new();
    private readonly object _lockGuard = new();

    /// <summary>
    /// Genera la variante WebP se non esiste già.
    /// Usa un lock per-file per evitare scritture concorrenti dallo stesso processo.
    /// Restituisce true se il file è stato generato, false se era già presente.
    /// Lancia eccezione in caso di errore.
    /// </summary>
    public async Task<bool> GenerateIfMissingAsync(
        string sourcePhysicalPath,
        string variantPhysicalPath,
        VariantSpec variant,
        CancellationToken cancellationToken = default)
    {
        if (File.Exists(variantPhysicalPath))
            return false;

        var fileLock = GetOrCreateLock(variantPhysicalPath);
        await fileLock.WaitAsync(cancellationToken);
        try
        {
            // Ricontrolla dopo il lock
            if (File.Exists(variantPhysicalPath))
                return false;

            Directory.CreateDirectory(Path.GetDirectoryName(variantPhysicalPath)!);

            // Scrivi su file temporaneo e poi rinomina atomicamente:
            // in questo modo il file non è mai parzialmente scritto quando
            // lo static-file middleware prova a servirlo.
            var tmpPath = variantPhysicalPath + ".tmp";
            try
            {
                using var image = await Image.LoadAsync(sourcePhysicalPath, cancellationToken);
                image.Mutate(x => x.Resize(new ResizeOptions
                {
                    Mode = ResizeMode.Max,
                    Size = new Size(variant.Width, 0),
                }));
                var encoder = new WebpEncoder { Quality = variant.Quality };
                await image.SaveAsync(tmpPath, encoder, cancellationToken);
                File.Move(tmpPath, variantPhysicalPath, overwrite: true);
            }
            catch
            {
                if (File.Exists(tmpPath)) File.Delete(tmpPath);
                throw;
            }

            return true;
        }
        finally
        {
            fileLock.Release();
            ReleaseLock(variantPhysicalPath, fileLock);
        }
    }

    private SemaphoreSlim GetOrCreateLock(string path)
    {
        lock (_lockGuard)
        {
            if (!_locks.TryGetValue(path, out var sem))
            {
                sem = new SemaphoreSlim(1, 1);
                _locks[path] = sem;
            }
            return sem;
        }
    }

    private void ReleaseLock(string path, SemaphoreSlim sem)
    {
        lock (_lockGuard)
        {
            if (sem.CurrentCount == 1)
                _locks.Remove(path);
        }
    }
}

namespace Escursioni.Web.Services;

/// <summary>
/// Generates paths for optimized WebP variants of images.
/// </summary>
public static class ImageHelper
{
    /// <summary>Returns the WebP thumbnail path (400px) for card views.</summary>
    public static string? ThumbPath(string? originalPath)
        => VariantPath(originalPath, ".thumb.webp");

    /// <summary>Returns the WebP gallery path (800px) for carousel views.</summary>
    public static string? GalleryPath(string? originalPath)
        => VariantPath(originalPath, ".gallery.webp");

    private static string? VariantPath(string? originalPath, string suffix)
    {
        if (string.IsNullOrWhiteSpace(originalPath)) return null;
        var dot = originalPath.LastIndexOf('.');
        if (dot < 0) return null;
        return string.Concat(originalPath.AsSpan(0, dot), suffix);
    }
}

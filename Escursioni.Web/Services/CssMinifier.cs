using System.Collections.Concurrent;
using Microsoft.Extensions.FileProviders;
using Microsoft.Extensions.Primitives;
using NUglify;

namespace Escursioni.Web.Services;

/// <summary>
/// Minifica i fogli di stile di wwwroot/css: il sorgente resta leggibile, al browser arriva la versione compatta.
/// Il server li serve con <see cref="MinifiedCssFileProvider"/>, l'export statico li scrive già minificati.
/// </summary>
public static class CssMinifier
{
    public const string Folder = "css";

    public static string Minify(string css)
    {
        var result = Uglify.Css(css);
        // Con errori di parsing meglio il CSS originale che uno rotto
        return result.HasErrors ? css : result.Code;
    }
}

/// <summary>
/// File provider per UseStaticFiles: restituisce i .css di /css minificati (in memoria, rifatti quando il file cambia).
/// Gli altri file passano invariati. ETag, Last-Modified e cache continuano a funzionare come per un file normale.
/// </summary>
public sealed class MinifiedCssFileProvider(IFileProvider inner) : IFileProvider
{
    private readonly ConcurrentDictionary<string, MinifiedFile> _cache = new(StringComparer.OrdinalIgnoreCase);

    public IFileInfo GetFileInfo(string subpath)
    {
        var file = inner.GetFileInfo(subpath);
        var path = subpath.TrimStart('/');
        if (!file.Exists || file.IsDirectory
            || !path.StartsWith(CssMinifier.Folder + "/", StringComparison.OrdinalIgnoreCase)
            || !path.EndsWith(".css", StringComparison.OrdinalIgnoreCase))
            return file;

        if (_cache.TryGetValue(path, out var cached) && cached.LastModified == file.LastModified)
            return cached;

        using var reader = new StreamReader(file.CreateReadStream());
        var minified = new MinifiedFile(file.Name, file.LastModified, System.Text.Encoding.UTF8.GetBytes(CssMinifier.Minify(reader.ReadToEnd())));
        _cache[path] = minified;
        return minified;
    }

    public IDirectoryContents GetDirectoryContents(string subpath) => inner.GetDirectoryContents(subpath);

    public IChangeToken Watch(string filter) => inner.Watch(filter);

    private sealed class MinifiedFile(string name, DateTimeOffset lastModified, byte[] content) : IFileInfo
    {
        public bool Exists => true;
        public long Length => content.Length;
        // null: StaticFileMiddleware legge da CreateReadStream invece di mandare il file su disco
        public string? PhysicalPath => null;
        public string Name => name;
        public DateTimeOffset LastModified => lastModified;
        public bool IsDirectory => false;
        public Stream CreateReadStream() => new MemoryStream(content, writable: false);
    }
}

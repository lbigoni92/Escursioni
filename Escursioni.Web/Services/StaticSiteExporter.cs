using System.Diagnostics;
using System.Text;
using System.Text.Json;
using System.Text.RegularExpressions;

namespace Escursioni.Web.Services;

/// <summary>
/// Genera il sito statico: renderizza ogni pagina Razor tramite TestServer,
/// copia wwwroot e scrive _redirects/_headers per Cloudflare Pages.
/// Uso: dotnet run --project Escursioni.Web -- --export ../dist
/// </summary>
public sealed class StaticSiteExporter
{
    private readonly HikeRepository _repo;
    private readonly SiteRedirects _redirects;
    private readonly IWebHostEnvironment _env;
    private readonly IServiceProvider _services;
    private readonly ILogger<StaticSiteExporter> _logger;

    public StaticSiteExporter(HikeRepository repo, SiteRedirects redirects, IWebHostEnvironment env, IServiceProvider services, ILogger<StaticSiteExporter> logger)
    {
        _repo = repo;
        _redirects = redirects;
        _env = env;
        _services = services;
        _logger = logger;
    }

    public async Task<int> ExportAsync(HttpClient client, string outDir, CancellationToken ct = default)
    {
        var sw = Stopwatch.StartNew();
        outDir = Path.GetFullPath(outDir);
        Directory.CreateDirectory(outDir);
        _logger.LogInformation("[Export] Cartella di output: {Dir}", outDir);

        // 1. Varianti WebP mancanti (thumb/gallery) generate in wwwroot prima della copia
        var prewarm = ActivatorUtilities.CreateInstance<ImagePrewarmService>(_services);
        await prewarm.PrewarmAllAsync(ct);

        // 2. File statici
        var copied = CopyDirectory(_env.WebRootPath, outDir);
        _logger.LogInformation("[Export] wwwroot copiata ({Copied} file nuovi o modificati)", copied);

        // 3. Pagine
        var errors = 0;
        var pages = GetPagePaths();
        foreach (var path in pages)
        {
            var expectedStatus = path == "/404" ? 404 : 200;
            using var response = await client.GetAsync(path, ct);
            if ((int)response.StatusCode != expectedStatus)
            {
                _logger.LogError("[Export] {Path} → HTTP {Status}", path, (int)response.StatusCode);
                errors++;
                continue;
            }
            var bytes = await response.Content.ReadAsByteArrayAsync(ct);
            var target = Path.Combine(outDir, OutputFileFor(path).Replace('/', Path.DirectorySeparatorChar));
            Directory.CreateDirectory(Path.GetDirectoryName(target)!);
            await File.WriteAllBytesAsync(target, bytes, ct);
        }
        _logger.LogInformation("[Export] {Count} pagine renderizzate", pages.Count - errors);

        // 4. Indice per la ricerca lato browser
        var indexPath = Path.Combine(outDir, "data", "search-index.json");
        Directory.CreateDirectory(Path.GetDirectoryName(indexPath)!);
        await File.WriteAllTextAsync(indexPath, JsonSerializer.Serialize(_repo.BuildSearchIndex()), new UTF8Encoding(false), ct);

        // 5. Configurazione hosting
        await File.WriteAllTextAsync(Path.Combine(outDir, "_redirects"), BuildRedirects(), new UTF8Encoding(false), ct);
        await File.WriteAllTextAsync(Path.Combine(outDir, "_headers"), Headers, new UTF8Encoding(false), ct);

        foreach (var h in _repo.All.Where(h => h.Slug != Pages.Escursioni.IndexModel.MakeSlug(h.Titolo)))
            _logger.LogInformation("[Export] Titolo già usato da un'altra escursione: {Id} pubblicata come /escursioni/{Slug}", h.WikilocId, h.Slug);

        _logger.LogInformation("[Export] Completato in {Seconds:0.0}s con {Errors} errori", sw.Elapsed.TotalSeconds, errors);
        return errors == 0 ? 0 : 1;
    }

    private List<string> GetPagePaths()
    {
        var paths = new List<string>
        {
            "/", "/escursioni", "/mappa", "/ricerca", "/chi-sono", "/contatti", "/privacy", "/note-legali",
            "/sitemap.xml", "/feed/rss", "/404",
        };

        paths.AddRange(KnownTagSlugs().Select(slug => "/escursioni/zona/" + slug));

        paths.AddRange(_repo.All
            .Select(h => "/escursioni/" + h.Slug)
            .Distinct());

        return paths;
    }

    private IEnumerable<string> KnownTagSlugs()
        => _repo.All
            .Where(h => !string.IsNullOrEmpty(h.Tag) && TagHelper.IsKnown(h.Tag))
            .Select(h => TagHelper.ToSlug(h.Tag!))
            .Distinct();

    /// <summary>
    /// Cloudflare Pages serve /foo da foo.html senza redirect, quindi gli URL restano senza slash finale.
    /// </summary>
    private static string OutputFileFor(string path) => path switch
    {
        "/" => "index.html",
        "/404" => "404.html",
        "/sitemap.xml" or "/feed/rss" => path.TrimStart('/'),
        _ => path.TrimStart('/') + ".html",
    };

    internal string BuildRedirects()
    {
        var sb = new StringBuilder();
        sb.AppendLine("# Generato da StaticSiteExporter — non modificare a mano");
        sb.AppendLine();
        if (_redirects.Map.Count > 0)
        {
            sb.AppendLine("# Pagine tolte dal sito (Data/redirects.json)");
            foreach (var (from, to) in _redirects.Map.OrderBy(r => r.Key))
                sb.AppendLine($"{from} {to} 301");
            sb.AppendLine();
        }
        sb.AppendLine("# /escursioni/{slug-zona} → pagina della zona (come faceva Dettaglio)");
        var hikeSlugs = _repo.All.Select(h => h.Slug).ToHashSet();
        foreach (var tagSlug in KnownTagSlugs())
        {
            if (!hikeSlugs.Contains(tagSlug))
                sb.AppendLine($"/escursioni/{tagSlug} /escursioni/zona/{tagSlug} 301");
        }
        sb.AppendLine();
        sb.AppendLine("# Su Cloudflare i redirect valgono anche se il file esiste: le pagine zona");
        sb.AppendLine("# vanno servite così come sono prima della regola legacy qui sotto.");
        sb.AppendLine("/escursioni/zona/:slug /escursioni/zona/:slug 200");
        sb.AppendLine();
        sb.AppendLine("# Vecchi URL /escursioni/{id}/{slug}");
        sb.AppendLine("/escursioni/:id/:slug /escursioni/:slug 301");
        sb.AppendLine();
        // Le descrizioni Wikiloc linkano ancora pagine del vecchio sito (/traccia-gps-{slug}/)
        sb.AppendLine("# Vecchio sito: /traccia-gps-{slug}/ citati nelle descrizioni Wikiloc");
        var oldPaths = _repo.All
            .SelectMany(h => Regex.Matches(h.DescrizioneHtml ?? "", @"escursionilucabigoni\.it/traccia-gps-([a-z0-9-]+)/?"))
            .Select(m => m.Groups[1].Value)
            .Where(hikeSlugs.Contains)
            .Distinct()
            .Order();
        foreach (var slug in oldPaths)
        {
            sb.AppendLine($"/traccia-gps-{slug} /escursioni/{slug} 301");
            sb.AppendLine($"/traccia-gps-{slug}/ /escursioni/{slug} 301");
        }
        return sb.ToString();
    }

    private const string Headers = """
        /*
          X-Content-Type-Options: nosniff
          X-Frame-Options: SAMEORIGIN
          Referrer-Policy: strict-origin-when-cross-origin
          Permissions-Policy: camera=(), microphone=(), geolocation=(), payment=()
          Strict-Transport-Security: max-age=31536000

        /feed/rss
          Content-Type: application/rss+xml; charset=utf-8
          Cache-Control: public, max-age=3600

        /sitemap.xml
          Cache-Control: public, max-age=3600

        /data/search-index.json
          Cache-Control: public, max-age=3600

        /media/*
          Cache-Control: public, max-age=2592000

        /media/gpx/*
          Content-Type: application/gpx+xml

        /css/*
          Cache-Control: public, max-age=2592000

        /js/*
          Cache-Control: public, max-age=2592000

        /lib/*
          Cache-Control: public, max-age=2592000

        /images/*
          Cache-Control: public, max-age=2592000

        """;

    /// <summary>Copia incrementale: salta i file con stessa dimensione e data non più vecchia.</summary>
    private static int CopyDirectory(string source, string destination)
    {
        var copied = 0;
        foreach (var file in Directory.EnumerateFiles(source, "*", SearchOption.AllDirectories))
        {
            if (file.EndsWith(".tmp", StringComparison.OrdinalIgnoreCase))
                continue;

            var relative = Path.GetRelativePath(source, file);
            var target = Path.Combine(destination, relative);
            var src = new FileInfo(file);
            var dst = new FileInfo(target);
            if (dst.Exists && dst.Length == src.Length && dst.LastWriteTimeUtc >= src.LastWriteTimeUtc)
                continue;

            Directory.CreateDirectory(dst.DirectoryName!);
            src.CopyTo(target, overwrite: true);
            copied++;
        }
        return copied;
    }
}

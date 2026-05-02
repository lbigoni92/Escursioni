using Escursioni.Web.Data;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.StaticFiles;
using Microsoft.EntityFrameworkCore;

Console.WriteLine("[LOG] STARTING APP...");

Console.WriteLine("[LOG] Creazione builder...");
var builder = WebApplication.CreateBuilder(args);

// Razor Pages
builder.Services.AddRazorPages();

// When running behind a proxy (Render.com, Nginx, etc.) honor X-Forwarded-* headers
builder.Services.Configure<ForwardedHeadersOptions>(options =>
{
    // include host so Request.Host reflects the original Host header forwarded by proxies
    options.ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto | ForwardedHeaders.XForwardedHost;
    // Clear the defaults so forwarded headers are accepted from the proxy platform (render, ngnix, etc.)
    options.KnownNetworks.Clear();
    options.KnownProxies.Clear();
});

// Output cache — HTML delle pagine statiche viene servito da cache in-memory
builder.Services.AddOutputCache(options =>
{
    options.AddBasePolicy(policy => policy.NoCache()); // default: nessun cache
    // Imposta tutte le policy a 30 giorni
    options.AddPolicy("Pages", policy =>
        policy.Expire(TimeSpan.FromDays(30))
              .SetVaryByQuery([]));            // ignora querystring (canonical senza params)
    options.AddPolicy("PagesSlow", policy =>
        policy.Expire(TimeSpan.FromDays(30)));
    options.AddPolicy("HikeDetail", policy =>
        policy.Expire(TimeSpan.FromDays(30))
              .SetVaryByRouteValue(["slug"]));
    options.AddPolicy("TagPage", policy =>
        policy.Expire(TimeSpan.FromDays(30))
              .SetVaryByRouteValue(["slug"]));
});

// Response compression (GZIP)
builder.Services.AddResponseCompression(options =>
{
    options.EnableForHttps = true;
    options.Providers.Add<GzipCompressionProvider>();
});

// DbContext PostgreSQL
builder.Services.AddDbContext<EscursioniDbContext>(options =>
    options.UseNpgsql(builder.Configuration.GetConnectionString("DefaultConnection")));

// Servizi / repository (accesso DB solo tramite interfacce)
builder.Services.AddHttpClient<GeocodingService>();
builder.Services.AddSingleton<GeocodingService>();
builder.Services.AddScoped<IHikeRepository, HikeRepository>();
builder.Services.AddScoped<ISearchService, SearchService>();
builder.Services.AddScoped<SeoService>();
builder.Services.AddSingleton<DatabaseBootstrapService>();
builder.Services.AddSingleton<ImageVariantGenerator>();
builder.Services.AddHostedService<ImagePrewarmService>();


Console.WriteLine("[LOG] Build dell'app...");
var app = builder.Build();


if (!app.Environment.IsDevelopment())
{
    Console.WriteLine("[LOG] Ambiente produzione: handler errori e HSTS");
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}
else
{
    Console.WriteLine("[LOG] Ambiente sviluppo");
}

using (var scope = app.Services.CreateScope())
{
    Console.WriteLine("[LOG] Avvio DatabaseBootstrapService...");
    var bootstrap = scope.ServiceProvider.GetRequiredService<DatabaseBootstrapService>();
    await bootstrap.RunAsync();
    Console.WriteLine("[LOG] Migrazioni DB completate.");
}


Console.WriteLine("[LOG] Configurazione middleware...");
// Process X-Forwarded headers before any middleware that uses scheme/host
app.UseForwardedHeaders();

app.UseHttpsRedirection();

// 301 redirect da non-www a www (canonical enforcement)
app.Use(async (context, next) =>
{
    var host = context.Request.Host.Host;
    var path = context.Request.Path.Value ?? string.Empty;
    // Do not canonicalize host for sitemap or robots to avoid redirect loops from proxies
    if (path.Equals("/sitemap.xml", StringComparison.OrdinalIgnoreCase)
        || path.Equals("/robots.txt", StringComparison.OrdinalIgnoreCase)
        || path.StartsWith("/.well-known", StringComparison.OrdinalIgnoreCase))
    {
        await next();
        return;
    }
    if (!host.StartsWith("www.", StringComparison.OrdinalIgnoreCase)
        && !host.Equals("localhost", StringComparison.OrdinalIgnoreCase)
        && !System.Net.IPAddress.TryParse(host, out _))
    {
        // Build redirect using the forwarded scheme/host (preserves port when present)
        var scheme = context.Request.Scheme ?? "https";
        var hostName = context.Request.Host.Host; // host without port
        var port = context.Request.Host.Port;
        var newHost = "www." + hostName;
        var authority = port.HasValue ? $"{newHost}:{port.Value}" : newHost;
        var redirectUrl = $"{scheme}://{authority}{context.Request.PathBase}{context.Request.Path}{context.Request.QueryString}";
        context.Response.StatusCode = 301;
        context.Response.Headers["Location"] = redirectUrl;
        return;
    }
    await next();
});

app.UseResponseCompression();

// Genera varianti WebP ottimizzate on-demand alla prima richiesta
app.UseMiddleware<ImageOptimizationMiddleware>();

var provider = new FileExtensionContentTypeProvider();
provider.Mappings[".gpx"] = "application/gpx+xml";
provider.Mappings[".kml"] = "application/vnd.google-earth.kml+xml";

app.UseStaticFiles(new StaticFileOptions
{
    ContentTypeProvider = provider,
    ServeUnknownFileTypes = true,
    OnPrepareResponse = ctx =>
    {
        // Cache static assets for 30 days; add immutable for hashed assets
        var requestPath = ctx.Context.Request.Path.Value ?? string.Empty;
        var fileName = System.IO.Path.GetFileName(requestPath);
        var ext = System.IO.Path.GetExtension(fileName).ToLowerInvariant();
        var maxAge = 2592000; // 30 days in seconds
        var cacheControl = $"public, max-age={maxAge}";

        // Detect filenames containing an 8+ hex hash (e.g. app.abcdef12.js)
        var hasHash = System.Text.RegularExpressions.Regex.IsMatch(
            fileName ?? string.Empty,
            @"[-\.][a-f0-9]{8,}",
            System.Text.RegularExpressions.RegexOptions.IgnoreCase);

        if (hasHash && (ext == ".js" || ext == ".css" || ext == ".png" || ext == ".jpg" || ext == ".jpeg" || ext == ".webp" || ext == ".svg" || ext == ".woff2" || ext == ".woff" || ext == ".ico"))
        {
            cacheControl += ", immutable";
        }

        ctx.Context.Response.Headers["Cache-Control"] = cacheControl;
    }
});

Console.WriteLine("[LOG] Static files configurati.");

app.UseRouting();
app.UseAuthorization();
app.UseOutputCache();

// 301 redirect: rimuove lo slash finale per evitare duplicate content
// es. /escursioni/ → /escursioni (non tocca la home page "/")
app.Use(async (context, next) =>
{
    var path = context.Request.Path.Value;
    if (path != null && path.Length > 1 && path.EndsWith('/'))
    {
        // Use absolute https URL to avoid proxy/scheme issues
        var hostValue = context.Request.Host.Value ?? context.Request.Host.Host;
        var target = path.TrimEnd('/');
        var absolute = $"https://{hostValue}{context.Request.PathBase}{target}{context.Request.QueryString}";
        context.Response.StatusCode = 301;
        context.Response.Headers["Location"] = absolute;
        return;
    }
    await next();
});

// 301 redirect from old /escursioni/{id}/{slug} to new /escursioni/{slug}
app.Use(async (context, next) =>
{
    var path = context.Request.Path.Value ?? "";
    var match = System.Text.RegularExpressions.Regex.Match(path, @"^/escursioni/\d+/(.+)$");
    if (match.Success)
    {
        var hostValue = context.Request.Host.Value ?? context.Request.Host.Host;
        var absolute = $"https://{hostValue}/escursioni/{match.Groups[1].Value}{context.Request.QueryString}";
        context.Response.StatusCode = 301;
        context.Response.Headers["Location"] = absolute;
        return;
    }
    await next();
});

app.MapRazorPages();

Console.WriteLine("[LOG] Applicazione avviata. In ascolto sulle porte configurate.");
app.Run();

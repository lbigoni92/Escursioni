using Escursioni.Web.Data;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.StaticFiles;
using Microsoft.EntityFrameworkCore;
using Npgsql;

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
    options.KnownIPNetworks.Clear();
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
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")?.Trim('"', ' ');
var csb = new NpgsqlConnectionStringBuilder(connectionString);
csb.SslMode = SslMode.Require;
csb.ChannelBinding = ChannelBinding.Disable; // PgBouncer di Render non supporta channel binding
Console.WriteLine($"[LOG] DB Host: {csb.Host}, SslMode: {csb.SslMode}, ChannelBinding: {csb.ChannelBinding}");

var dataSourceBuilder = new NpgsqlDataSourceBuilder(csb.ConnectionString);
dataSourceBuilder.UseSslClientAuthenticationOptionsCallback(options =>
{
    options.RemoteCertificateValidationCallback = (sender, cert, chain, errors) => true;
});
var dataSource = dataSourceBuilder.Build();

builder.Services.AddDbContext<EscursioniDbContext>(options =>
    options.UseNpgsql(dataSource));

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



// Legacy redirect for old /escursioni/{id}/{slug} → /escursioni/{slug}
// Place this BEFORE OutputCache to avoid caching redirect responses.
app.Use(async (context, next) =>
{
    var path = context.Request.Path.Value ?? "";
    var match = System.Text.RegularExpressions.Regex.Match(path, @"^/escursioni/\d+/(.+)$");
    if (match.Success)
    {
        var scheme = "https";
        var hostValue = context.Request.Host.Value ?? context.Request.Host.Host;
        var absolute = $"{scheme}://{hostValue}{context.Request.PathBase}/escursioni/{match.Groups[1].Value}{context.Request.QueryString}";
        context.Response.StatusCode = StatusCodes.Status301MovedPermanently;
        context.Response.Headers.Location = absolute;
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

app.MapRazorPages();

Console.WriteLine("[LOG] Applicazione avviata. In ascolto sulle porte configurate.");
app.Run();

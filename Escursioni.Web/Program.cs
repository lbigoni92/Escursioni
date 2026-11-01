using Escursioni.Web.Services;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.StaticFiles;
using Microsoft.AspNetCore.TestHost;

Console.WriteLine("[LOG] STARTING APP...");

Console.WriteLine("[LOG] Creazione builder...");
var builder = WebApplication.CreateBuilder(args);

// Modalità export statico: dotnet run -- --export <cartella>
// L'app gira su TestServer (nessuna porta) e ogni pagina viene salvata come file HTML.
var exportDir = builder.Configuration["export"];
if (exportDir != null)
    builder.WebHost.UseTestServer();

// Razor Pages
builder.Services.AddRazorPages();

// When running behind a proxy (Nginx, Docker, etc.) honor X-Forwarded-* headers
builder.Services.Configure<ForwardedHeadersOptions>(options =>
{
    // include host so Request.Host reflects the original Host header forwarded by proxies
    options.ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto | ForwardedHeaders.XForwardedHost;
    // Clear the defaults so forwarded headers are accepted from the proxy platform (render, ngnix, etc.)
    options.KnownIPNetworks.Clear();
    options.KnownProxies.Clear();
});

builder.Services.AddHsts(options => options.MaxAge = SecurityHeaders.HstsMaxAge);

// Response compression (GZIP)
builder.Services.AddResponseCompression(options =>
{
    options.EnableForHttps = true;
    options.Providers.Add<GzipCompressionProvider>();
});

// Dati escursioni: un file JSON per escursione, caricati in memoria all'avvio (nessun database)
var hikesDir = Path.Combine(builder.Environment.ContentRootPath, builder.Configuration["Data:HikesPath"] ?? "Data/hikes");
var hikeRepository = HikeRepository.LoadFromDirectory(hikesDir);
Console.WriteLine($"[LOG] Caricate {hikeRepository.All.Count} escursioni da {hikesDir}");

// Vette, rifugi, passi e laghi (Data/luoghi.json). `dotnet run -- --luoghi` li ricava dalle tracce GPX e termina
// Opzioni: --tutte (ricalcola tutto), --minuti N (tempo massimo, poi salva e riprende al giro dopo)
if (args.Contains("--luoghi"))
{
    var minuti = Array.IndexOf(args, "--minuti") is var i and >= 0 && i + 1 < args.Length && int.TryParse(args[i + 1], out var m) ? m : (int?)null;
    return await PlaceFinder.RunAsync(hikeRepository, builder.Environment.ContentRootPath, all: args.Contains("--tutte"),
        maxTime: minuti is int n ? TimeSpan.FromMinutes(n) : null);
}
var placeRepository = PlaceRepository.Load(Path.Combine(builder.Environment.ContentRootPath, "Data", "luoghi.json"), hikeRepository);
if (placeRepository.Unchecked > 0)
    Console.WriteLine($"[LOG] {placeRepository.Unchecked} escursioni senza vette/rifugi/passi/laghi: esegui dotnet run --project Escursioni.Web -- --luoghi");

builder.Services.AddSingleton(hikeRepository);
builder.Services.AddSingleton<IHikeRepository>(hikeRepository);
builder.Services.AddSingleton(placeRepository);
var siteRedirects = SiteRedirects.Load(Path.Combine(builder.Environment.ContentRootPath, "Data", "redirects.json"));
builder.Services.AddSingleton(siteRedirects);
builder.Services.AddScoped<SeoService>();
builder.Services.AddSingleton<ImageVariantGenerator>();
if (exportDir == null)
    builder.Services.AddHostedService<ImagePrewarmService>();


Console.WriteLine("[LOG] Build dell'app...");
var app = builder.Build();


Console.WriteLine("[LOG] Configurazione middleware...");
// Process X-Forwarded headers before any middleware that uses scheme/host.
// Deve stare prima di UseHsts: dietro il proxy di Render la richiesta arriva in HTTP e senza
// X-Forwarded-Proto UseHsts la crede non sicura e non manda Strict-Transport-Security.
app.UseForwardedHeaders();

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

// Header di sicurezza su ogni risposta (nel sito statico sono nel file _headers)
app.Use((context, next) =>
{
    foreach (var (name, value) in SecurityHeaders.All)
        context.Response.Headers[name] = value;
    return next(context);
});


// Legacy redirect for old /escursioni/{id}/{slug} → /escursioni/{slug}
// (nel sito statico lo stesso redirect è nel file _redirects)
app.Use(async (context, next) =>
{
    var path = context.Request.Path.Value ?? "";

    // Pagine tolte dal sito (Data/redirects.json)
    if (siteRedirects.TryGetTarget(path, out var target))
    {
        context.Response.StatusCode = StatusCodes.Status301MovedPermanently;
        context.Response.Headers.Location = $"{context.Request.PathBase}{target}{context.Request.QueryString}";
        return;
    }

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

// URL inesistenti: stessa pagina /404 che Cloudflare serve dal file 404.html del sito statico
app.UseStatusCodePagesWithReExecute("/404");

// Genera varianti WebP ottimizzate on-demand alla prima richiesta
app.UseMiddleware<ImageOptimizationMiddleware>();

var provider = new FileExtensionContentTypeProvider();
provider.Mappings[".gpx"] = "application/gpx+xml";

app.UseStaticFiles(new StaticFileOptions
{
    // CSS minificato (in sviluppo resta leggibile); null = file di wwwroot così come sono
    FileProvider = app.Environment.IsDevelopment() ? null : new MinifiedCssFileProvider(app.Environment.WebRootFileProvider),
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

app.MapRazorPages();

// Indice per la ricerca lato browser (nel sito statico diventa il file data/search-index.json)
app.MapGet("/data/search-index.json", (HikeRepository repo) => Results.Json(repo.BuildSearchIndex()));
app.MapGet("/llms.txt", async (IHikeRepository repo, IConfiguration config) =>
    Results.Text(LlmsTxt.Build(await HikeDisplay.GetZonesAsync(repo), (config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/')),
        "text/plain; charset=utf-8"));

if (exportDir != null)
{
    await app.StartAsync();
    var exporter = ActivatorUtilities.CreateInstance<StaticSiteExporter>(app.Services);
    var exitCode = await exporter.ExportAsync(app.GetTestClient(), exportDir);
    await app.StopAsync();
    return exitCode;
}

Console.WriteLine("[LOG] Applicazione avviata. In ascolto sulle porte configurate.");
app.Run();
return 0;

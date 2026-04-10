using Escursioni.Web.Data;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.AspNetCore.StaticFiles;
using Microsoft.EntityFrameworkCore;

Console.WriteLine("[LOG] STARTING APP...");

Console.WriteLine("[LOG] Creazione builder...");
var builder = WebApplication.CreateBuilder(args);

// Razor Pages
builder.Services.AddRazorPages();

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
builder.Services.AddScoped<IHikeRepository, HikeRepository>();
builder.Services.AddScoped<ISearchService, SearchService>();
builder.Services.AddScoped<SeoService>();
builder.Services.AddSingleton<DatabaseBootstrapService>();


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
app.UseHttpsRedirection();
app.UseResponseCompression();

var provider = new FileExtensionContentTypeProvider();
provider.Mappings[".gpx"] = "application/gpx+xml";
provider.Mappings[".kml"] = "application/vnd.google-earth.kml+xml";

app.UseStaticFiles(new StaticFileOptions
{
    ContentTypeProvider = provider,
    ServeUnknownFileTypes = true,
    OnPrepareResponse = ctx =>
    {
        // Cache static assets for 30 days
        ctx.Context.Response.Headers["Cache-Control"] = "public, max-age=2592000";
    }
});

Console.WriteLine("[LOG] Static files configurati.");

app.UseRouting();
app.UseAuthorization();

app.MapRazorPages();

Console.WriteLine("[LOG] Applicazione avviata. In ascolto sulle porte configurate.");
app.Run();

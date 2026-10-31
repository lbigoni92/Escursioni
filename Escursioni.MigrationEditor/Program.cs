using Escursioni.MigrationEditor.Components;
using Escursioni.MigrationEditor.Services;

var builder = WebApplication.CreateBuilder(args);

// Cartella dei file JSON delle escursioni, relativa alla root della solution
var solutionRoot = Path.GetFullPath(Path.Combine(builder.Environment.ContentRootPath, ".."));
var hikesDir = Path.Combine(solutionRoot, "Escursioni.Web", "Data", "hikes");

builder.Services.AddSingleton(new MigrationParserService(hikesDir));
var gpxDir = Path.Combine(solutionRoot, "Escursioni.Web", "wwwroot", "media", "gpx");
builder.Services.AddSingleton(new GpxStatsService(gpxDir));
builder.Services.AddHttpClient<MetaDescriptionGenerator>(client =>
{
    client.Timeout = TimeSpan.FromMinutes(30);
});
builder.Services.AddSingleton<BulkGenerationService>();

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
}
app.UseStatusCodePagesWithReExecute("/not-found", createScopeForStatusCodePages: true);
app.UseAntiforgery();

// Serve GPX files from the main web project's wwwroot
var gpxPath = Path.Combine(solutionRoot, "Escursioni.Web", "wwwroot", "media", "gpx");
if (Directory.Exists(gpxPath))
{
    var gpxContentTypes = new Microsoft.AspNetCore.StaticFiles.FileExtensionContentTypeProvider();
    gpxContentTypes.Mappings[".gpx"] = "application/gpx+xml";

    app.UseStaticFiles(new StaticFileOptions
    {
        FileProvider = new Microsoft.Extensions.FileProviders.PhysicalFileProvider(gpxPath),
        RequestPath = "/gpx",
        ContentTypeProvider = gpxContentTypes
    });
}

// Serve images from the main web project's wwwroot/media/images
var imagesPath = Path.Combine(solutionRoot, "Escursioni.Web", "wwwroot", "media", "images");
if (Directory.Exists(imagesPath))
{
    app.UseStaticFiles(new StaticFileOptions
    {
        FileProvider = new Microsoft.Extensions.FileProviders.PhysicalFileProvider(imagesPath),
        RequestPath = "/media/images"
    });
}

app.MapStaticAssets();
app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

app.Run();

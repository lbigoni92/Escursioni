using System.Net;
using System.Net.Sockets;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Hosting.Server;
using Microsoft.AspNetCore.Hosting.Server.Features;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Playwright;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.PixelFormats;

namespace Escursioni.UiTests;

/// <summary>
/// Avvia il sito su Kestrel con le escursioni di prova (Fixtures/hikes) e un Chromium headless.
/// Le richieste esterne non deterministiche (tile della mappa, Nominatim) sono simulate;
/// Leaflet viene ancora scaricato da unpkg/cdnjs come sul sito vero.
/// </summary>
public sealed class UiSite : IAsyncLifetime
{
    public static readonly string FixtureHikesDir = Path.Combine(AppContext.BaseDirectory, "Fixtures", "hikes");

    // Coordinate restituite dal finto Nominatim per qualsiasi località (Cardoso, Alpi Apuane)
    public const double GeocodedLat = 44.0207, GeocodedLon = 10.2967;

    private WebApplicationFactory<Program>? _factory;
    private IPlaywright? _playwright;
    private byte[] _greyTile = [];

    public string BaseUrl { get; private set; } = "";
    public IBrowser Browser { get; private set; } = null!;
    public HikeRepository Hikes { get; } = HikeRepository.LoadFromDirectory(FixtureHikesDir);

    public async Task InitializeAsync()
    {
        var port = FreePort();
        _factory = new WebApplicationFactory<Program>().WithWebHostBuilder(b =>
        {
            b.UseEnvironment("Production");
            b.UseSetting("Images:Prewarm:Enabled", "false");
            b.UseSetting("Data:HikesPath", FixtureHikesDir);
        });
        _factory.UseKestrel(port);
        _factory.StartServer();
        var addresses = _factory.Services.GetRequiredService<IServer>().Features.GetRequiredFeature<IServerAddressesFeature>().Addresses;
        BaseUrl = addresses.First().Replace("[::]", "localhost").Replace("0.0.0.0", "localhost");

        using (var tile = new Image<Rgba32>(256, 256, new Rgba32(0xDD, 0xDD, 0xDD)))
        using (var ms = new MemoryStream())
        {
            await tile.SaveAsPngAsync(ms);
            _greyTile = ms.ToArray();
        }

        _playwright = await Playwright.CreateAsync();
        Browser = await _playwright.Chromium.LaunchAsync();
    }

    public async Task DisposeAsync()
    {
        await Browser.DisposeAsync();
        _playwright?.Dispose();
        if (_factory != null) await _factory.DisposeAsync();
    }

    private readonly List<IBrowserContext> _contexts = [];

    /// <summary>Chiude le pagine aperte dal test appena finito (altrimenti Chromium esaurisce la memoria).</summary>
    public async Task CloseContextsAsync()
    {
        foreach (var context in _contexts)
            await context.CloseAsync();
        _contexts.Clear();
    }

    public async Task<IPage> NewPageAsync(bool mobile = false, ColorScheme colorScheme = ColorScheme.Light)
    {
        var context = await Browser.NewContextAsync(new BrowserNewContextOptions
        {
            ViewportSize = mobile ? new ViewportSize { Width = 390, Height = 844 } : new ViewportSize { Width = 1280, Height = 800 },
            DeviceScaleFactor = 1,
            IsMobile = mobile,
            HasTouch = mobile,
            Locale = "it-IT",
            TimezoneId = "Europe/Rome",
            ColorScheme = colorScheme,
            BaseURL = BaseUrl,
        });
        _contexts.Add(context);

        await context.RouteAsync("**/*.tile.openstreetmap.org/**", r => r.FulfillAsync(new() { BodyBytes = _greyTile, ContentType = "image/png" }));
        await context.RouteAsync("https://nominatim.openstreetmap.org/**", r => r.FulfillAsync(new()
        {
            ContentType = "application/json",
            Body = $$"""[{"lat":"{{GeocodedLat.ToString(System.Globalization.CultureInfo.InvariantCulture)}}","lon":"{{GeocodedLon.ToString(System.Globalization.CultureInfo.InvariantCulture)}}"}]""",
        }));

        return await context.NewPageAsync();
    }

    private static int FreePort()
    {
        var listener = new TcpListener(IPAddress.Loopback, 0);
        listener.Start();
        var port = ((IPEndPoint)listener.LocalEndpoint).Port;
        listener.Stop();
        return port;
    }
}

[CollectionDefinition("Ui")]
public sealed class UiCollection : ICollectionFixture<UiSite>;

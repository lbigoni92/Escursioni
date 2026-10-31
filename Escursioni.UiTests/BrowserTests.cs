using System.Text.RegularExpressions;
using Escursioni.Web.Models;
using Microsoft.Playwright;

namespace Escursioni.UiTests;

/// <summary>Comportamento nel browser: JavaScript della ricerca, mappa, carosello, tema, menu, contatti.</summary>
[Collection("Ui")]
public class BrowserTests(UiSite site) : IAsyncLifetime
{
    public Task InitializeAsync() => Task.CompletedTask;
    public Task DisposeAsync() => site.CloseContextsAsync();

    private const int PageSize = 8; // come search.js

    private IReadOnlyList<Hike> Hikes => site.Hikes.All;

    // Stessa logica di searchByText in search.js
    private List<Hike> ExpectedTextSearch(string q, string? difficolta = null) => Hikes
        .Where(h => difficolta == null || h.Difficolta == difficolta)
        .Where(h => new[] { h.Titolo, h.Descrizione, h.Comune, h.Provincia, h.Regione }
            .Any(f => (f ?? "").Contains(q, StringComparison.OrdinalIgnoreCase)))
        .ToList();

    private static async Task<int> WaitForResults(IPage page)
    {
        await page.WaitForFunctionAsync("() => document.getElementById('search-summary').textContent !== 'Caricamento...'");
        return await page.Locator("#search-results .hike-card").CountAsync();
    }

    [Theory]
    [InlineData("/")]
    [InlineData("/escursioni")]
    [InlineData("/escursioni/sagro-e-borla-dalla-cresta-sud")]
    [InlineData("/escursioni/zona/alpi-apuane")]
    [InlineData("/mappa")]
    [InlineData("/ricerca?Q=monte")]
    [InlineData("/contatti")]
    [InlineData("/chi-sono")]
    public async Task Page_HasNoJavaScriptErrors_OrFailedRequests(string path)
    {
        var page = await site.NewPageAsync();
        var errors = new List<string>();
        page.Console += (_, msg) => { if (msg.Type == "error") errors.Add("console: " + msg.Text); };
        page.PageError += (_, err) => errors.Add("eccezione: " + err);
        page.RequestFailed += (_, req) => errors.Add($"richiesta fallita: {req.Url} {req.Failure}");
        page.Response += (_, res) => { if (res.Status >= 400) errors.Add($"HTTP {res.Status}: {res.Url}"); };

        await page.GotoAsync(path);
        await Snapshot.SettleAsync(page);

        Assert.True(errors.Count == 0, string.Join("\n", errors));
    }

    [Fact]
    public async Task Search_ByText_ShowsMatchingHikes()
    {
        var expected = ExpectedTextSearch("forato");
        Assert.NotEmpty(expected);

        var page = await site.NewPageAsync();
        await page.GotoAsync("/ricerca?Q=forato");

        Assert.Equal(Math.Min(expected.Count, PageSize), await WaitForResults(page));
        Assert.Contains($"Trovate {expected.Count} escursioni.", await page.TextContentAsync("#search-summary"));
        foreach (var hike in expected.Take(PageSize))
            Assert.Equal(1, await page.Locator($"#search-results a[href='/escursioni/{hike.Slug}']").First.CountAsync());
    }

    [Fact]
    public async Task Search_FormSubmit_UpdatesUrlAndResults()
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync("/ricerca");
        // Di default è attiva la ricerca per località: il campo di testo si abilita scegliendo "testo"
        Assert.True(await page.Locator("input[name=Q]").IsDisabledAsync());
        await page.CheckAsync("input[name=SearchMode][value=testo]");
        await page.FillAsync("input[name=Q]", "calambrone");
        await page.Locator("input[name=Q]").PressAsync("Enter");
        await page.WaitForURLAsync(new Regex("Q=calambrone"));

        Assert.Equal(ExpectedTextSearch("calambrone").Count, await WaitForResults(page));
        // I due "Calambrone" hanno slug distinti
        Assert.Equal(1, await page.Locator("#search-results a[href='/escursioni/calambrone']").First.CountAsync());
        Assert.Equal(1, await page.Locator("#search-results a[href='/escursioni/calambrone-marzo-2019']").First.CountAsync());
    }

    [Fact]
    public async Task Search_ByDifficulty_FiltersResults()
    {
        var expected = Hikes.Count(h => h.Difficolta == "Medio");
        var page = await site.NewPageAsync();
        await page.GotoAsync("/ricerca?Difficolta=Medio");

        Assert.Equal(Math.Min(expected, PageSize), await WaitForResults(page));
        Assert.Contains($"Trovate {expected} escursioni.", await page.TextContentAsync("#search-summary"));
    }

    [Fact]
    public async Task Search_Pagination_SplitsResultsIntoPagesOfEight()
    {
        Assert.True(Hikes.Count > PageSize, "servono più di 8 escursioni di prova");
        var page = await site.NewPageAsync();

        await page.GotoAsync("/ricerca?Q=");
        Assert.Equal(PageSize, await WaitForResults(page));

        await page.GotoAsync("/ricerca?Q=&PageNumber=2");
        Assert.Equal(Hikes.Count - PageSize, await WaitForResults(page));
    }

    [Fact]
    public async Task Search_ByLocality_ShowsHikesWithinRadius_NearestFirst()
    {
        const double radius = 10;
        var dLat = radius / 111;
        var dLon = radius / (111 * Math.Cos(UiSite.GeocodedLat * Math.PI / 180));
        var expected = Hikes
            .Where(h => h.CentroidLat.HasValue && h.CentroidLon.HasValue
                && Math.Abs((double)h.CentroidLat!.Value - UiSite.GeocodedLat) <= dLat
                && Math.Abs((double)h.CentroidLon!.Value - UiSite.GeocodedLon) <= dLon)
            .OrderBy(h => Math.Pow((double)h.CentroidLat!.Value - UiSite.GeocodedLat, 2) + Math.Pow((double)h.CentroidLon!.Value - UiSite.GeocodedLon, 2))
            .ToList();
        Assert.NotEmpty(expected);

        var page = await site.NewPageAsync();
        await page.GotoAsync("/ricerca?Comune=Cardoso&RaggioKm=10");

        Assert.Equal(Math.Min(expected.Count, PageSize), await WaitForResults(page));
        Assert.Contains("(entro 10 km)", await page.TextContentAsync("#search-summary"));
        Assert.Equal($"/escursioni/{expected[0].Slug}", await page.Locator("#search-results .hike-card a").First.GetAttributeAsync("href"));
    }

    [Fact]
    public async Task Carousel_NextAndDots_ChangeActiveSlide()
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync("/escursioni/sagro-e-borla-dalla-cresta-sud");
        var slides = page.Locator("[data-carousel-slide]");

        Assert.Contains("is-active", await slides.Nth(0).GetAttributeAsync("class"));
        await page.ClickAsync("[data-carousel-next]");
        Assert.Contains("is-active", await slides.Nth(1).GetAttributeAsync("class"));
        Assert.DoesNotContain("is-active", await slides.Nth(0).GetAttributeAsync("class"));

        await page.Locator("[data-carousel-dot]").Nth(3).ClickAsync();
        Assert.Contains("is-active", await slides.Nth(3).GetAttributeAsync("class"));

        await page.ClickAsync("[data-carousel-prev]");
        Assert.Contains("is-active", await slides.Nth(2).GetAttributeAsync("class"));
    }

    [Fact]
    public async Task DetailPage_DrawsGpxTrack_AndGpxIsDownloadable()
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync("/escursioni/sagro-e-borla-dalla-cresta-sud");
        await page.WaitForSelectorAsync(".leaflet-overlay-pane path");

        var href = await page.Locator("a[href$='.gpx']").First.GetAttributeAsync("href");
        var response = await page.APIRequest.GetAsync(href!);
        Assert.Equal(200, response.Status);
        Assert.Contains("<trkpt", await response.TextAsync());
    }

    [Fact]
    public async Task Map_ShowsAMarkerPerHike_AndClickLoadsTrackAndLink()
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync("/mappa");
        var markers = page.Locator(".leaflet-marker-icon");
        await markers.First.WaitForAsync();

        Assert.Equal(Hikes.Count(h => h.CentroidLat.HasValue && h.CentroidLon.HasValue), await markers.CountAsync());

        await markers.First.ClickAsync(new() { Force = true });
        await page.WaitForSelectorAsync(".leaflet-overlay-pane path");
        var link = await page.Locator(".leaflet-popup-content a").GetAttributeAsync("href");
        Assert.Contains(Hikes, h => link == $"/escursioni/{h.Slug}");
    }

    [Fact]
    public async Task ThemeToggle_SwitchesAndPersistsAfterReload()
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync("/");
        var lightBefore = await page.EvaluateAsync<bool>("() => document.body.classList.contains('light-mode')");

        await page.ClickAsync("#toggle-darkmode");
        Assert.Equal(!lightBefore, await page.EvaluateAsync<bool>("() => document.body.classList.contains('light-mode')"));

        await page.ReloadAsync();
        await page.WaitForLoadStateAsync(LoadState.DOMContentLoaded);
        Assert.Equal(!lightBefore, await page.EvaluateAsync<bool>("() => document.body.classList.contains('light-mode')"));
    }

    [Fact]
    public async Task MobileMenu_OpensAndShowsAllSections()
    {
        var page = await site.NewPageAsync(mobile: true);
        await page.GotoAsync("/");
        await page.ClickAsync("#hamburger-btn");

        Assert.Equal("true", await page.GetAttributeAsync("#hamburger-btn", "aria-expanded"));
        foreach (var href in new[] { "/escursioni", "/mappa", "/ricerca", "/chi-sono", "/contatti" })
            Assert.True(await page.Locator($"#main-nav a[href='{href}']").IsVisibleAsync(), $"voce di menu {href} non visibile");
    }
}

using Microsoft.Playwright;

namespace Escursioni.UiTests;

/// <summary>Screenshot a pagina intera di ogni tipo di pagina, desktop (1280px) e mobile (390px).</summary>
[Collection("Ui")]
public class VisualTests(UiSite site) : IAsyncLifetime
{
    public Task InitializeAsync() => Task.CompletedTask;
    public Task DisposeAsync() => site.CloseContextsAsync();

    public static TheoryData<string, string> Pages => new()
    {
        { "home", "/" },
        { "elenco", "/escursioni" },
        { "dettaglio", "/escursioni/sagro-e-borla-dalla-cresta-sud" },
        { "dettaglio-senza-foto", "/escursioni/forno-la-caporetto-storie-che-non-hanno-voce" },
        { "zona", "/escursioni/zona/alpi-apuane" },
        { "mappa", "/mappa" },
        { "ricerca", "/ricerca?Q=forato" },
        { "ricerca-localita", "/ricerca?Comune=Cardoso&RaggioKm=10" },
        { "contatti", "/contatti" },
        { "chi-sono", "/chi-sono" },
        { "privacy", "/privacy" },
        { "404", "/pagina-che-non-esiste" },
    };

    [Theory]
    [MemberData(nameof(Pages))]
    public async Task Desktop(string name, string path)
    {
        var page = await site.NewPageAsync();
        await page.GotoAsync(path);
        await Snapshot.AssertMatchesAsync(page, $"desktop-{name}");
    }

    [Theory]
    [MemberData(nameof(Pages))]
    public async Task Mobile(string name, string path)
    {
        var page = await site.NewPageAsync(mobile: true);
        await page.GotoAsync(path);
        await Snapshot.AssertMatchesAsync(page, $"mobile-{name}");
    }

    [Fact]
    public async Task Mobile_MenuOpen()
    {
        var page = await site.NewPageAsync(mobile: true);
        await page.GotoAsync("/");
        await page.ClickAsync("#hamburger-btn");
        await Snapshot.AssertMatchesAsync(page, "mobile-menu-aperto");
    }

    // Il tema predefinito è quello scuro; il chiaro si sceglie con il pulsante 🌓 (salvato in localStorage)
    [Theory]
    [InlineData("home", "/")]
    [InlineData("dettaglio", "/escursioni/sagro-e-borla-dalla-cresta-sud")]
    [InlineData("ricerca", "/ricerca?Q=forato")]
    public async Task LightTheme(string name, string path)
    {
        var page = await site.NewPageAsync();
        await page.Context.AddInitScriptAsync("localStorage.setItem('theme', 'light')");
        await page.GotoAsync(path);
        await Snapshot.AssertMatchesAsync(page, $"desktop-chiaro-{name}");
    }
}

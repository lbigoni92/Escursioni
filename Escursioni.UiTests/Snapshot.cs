using Microsoft.Playwright;
using SixLabors.ImageSharp;
using SixLabors.ImageSharp.PixelFormats;

namespace Escursioni.UiTests;

/// <summary>
/// Confronto con gli screenshot di riferimento in Baselines/. Se il riferimento manca (o con
/// UPDATE_SNAPSHOTS=1) viene creato. In caso di differenze salva attuale e diff in TestResults/visual.
/// </summary>
public static class Snapshot
{
    // Differenza tollerata: antialiasing del testo e piccoli scarti di rendering
    private const int ChannelTolerance = 24;
    private const double MaxDifferentPixels = 0.002;

    private static readonly string BaselineDir = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "Baselines"));
    private static readonly string ResultsDir = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "TestResults", "visual"));

    /// <summary>Carica tutte le immagini lazy e aspetta che rete e font siano fermi prima dello screenshot.</summary>
    public static async Task SettleAsync(IPage page)
    {
        // La ricerca disegna i risultati dopo aver scaricato l'indice: prima di tutto aspetta quelli
        await page.WaitForFunctionAsync("() => { const s = document.getElementById('search-summary'); return !s || s.textContent !== 'Caricamento...'; }");
        await page.EvaluateAsync("() => document.querySelectorAll('img[loading=lazy]').forEach(i => i.loading = 'eager')");
        await page.WaitForLoadStateAsync(LoadState.NetworkIdle);
        await page.WaitForFunctionAsync("() => [...document.images].every(i => i.complete) && document.fonts.status === 'loaded'");
    }

    public static async Task AssertMatchesAsync(IPage page, string name)
    {
        await SettleAsync(page);
        var png = await page.ScreenshotAsync(new() { FullPage = true, Animations = ScreenshotAnimations.Disabled, Caret = ScreenshotCaret.Hide });

        var baselinePath = Path.Combine(BaselineDir, name + ".png");
        if (!File.Exists(baselinePath) || Environment.GetEnvironmentVariable("UPDATE_SNAPSHOTS") == "1")
        {
            Directory.CreateDirectory(BaselineDir);
            await File.WriteAllBytesAsync(baselinePath, png);
            return;
        }

        using var expected = Image.Load<Rgba32>(baselinePath);
        using var actual = Image.Load<Rgba32>(png);

        string? problem = null;
        Image<Rgba32>? diff = null;
        if (expected.Width != actual.Width || expected.Height != actual.Height)
        {
            problem = $"dimensioni diverse: atteso {expected.Width}x{expected.Height}, ottenuto {actual.Width}x{actual.Height}";
        }
        else
        {
            diff = new Image<Rgba32>(actual.Width, actual.Height);
            long different = 0;
            for (var y = 0; y < actual.Height; y++)
            for (var x = 0; x < actual.Width; x++)
            {
                var a = expected[x, y];
                var b = actual[x, y];
                var changed = Math.Abs(a.R - b.R) > ChannelTolerance || Math.Abs(a.G - b.G) > ChannelTolerance || Math.Abs(a.B - b.B) > ChannelTolerance;
                if (changed) different++;
                diff[x, y] = changed ? new Rgba32(255, 0, 0) : new Rgba32((byte)(b.R / 4 + 190), (byte)(b.G / 4 + 190), (byte)(b.B / 4 + 190));
            }
            var ratio = (double)different / (actual.Width * actual.Height);
            if (ratio > MaxDifferentPixels)
                problem = $"{ratio:P2} dei pixel diversi (massimo {MaxDifferentPixels:P1})";
        }

        if (problem != null)
        {
            Directory.CreateDirectory(ResultsDir);
            await File.WriteAllBytesAsync(Path.Combine(ResultsDir, name + ".actual.png"), png);
            if (diff != null) await diff.SaveAsPngAsync(Path.Combine(ResultsDir, name + ".diff.png"));
        }
        diff?.Dispose();

        Assert.True(problem == null,
            $"Screenshot \"{name}\" diverso dal riferimento: {problem}. Vedi {ResultsDir}. Se la modifica è voluta: UPDATE_SNAPSHOTS=1 dotnet test Escursioni.UiTests");
    }
}

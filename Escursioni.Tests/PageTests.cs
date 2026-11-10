using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.Json;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.Extensions.DependencyInjection;
using Xunit;

namespace Escursioni.Tests;

/// <summary>Le pagine del sito: status, meta SEO e contenuti principali.</summary>
[Collection("Site")]
public class PageTests(SiteFactory site)
{
    private const string BaseUrl = "https://escursionilucabigoni.it";

    private async Task<string> GetHtml(string path, HttpStatusCode expected = HttpStatusCode.OK)
    {
        var response = await site.CreateNoRedirectClient().GetAsync(path);
        Assert.Equal(expected, response.StatusCode);
        Assert.Equal("text/html", response.Content.Headers.ContentType?.MediaType);
        return await response.Content.ReadAsStringAsync();
    }

    [Fact]
    public async Task ZoneGuides_LinksWork_SourcesShown()
    {
        var html = await GetHtml("/escursioni/zona/garfagnana");
        Assert.Equal("Trekking in Garfagnana: escursioni tra Apuane e Appennino | Escursioni", Attr(html, @"<title>\s*([^<]+?)\s*</title>"));
        var guide = Regex.Match(html, @"<section class=""section prose zone-guide"">(.*?)</section>", RegexOptions.Singleline);
        Assert.True(guide.Success);
        var links = Regex.Matches(guide.Groups[1].Value, @"href=""(/[^""]+)""").Select(m => m.Groups[1].Value).Distinct().ToList();
        Assert.NotEmpty(links);
        foreach (var link in links)
            await GetHtml(link);
        Assert.Contains("id=\"fonti-zona\"", html);
    }

    [Fact]
    public async Task ThemeGuides_LinksWork_InSitemapAndLlms()
    {
        var html = await GetHtml("/guide/ciaspole-abetone");
        Assert.Equal("Ciaspole all'Abetone: percorsi e consigli | Escursioni", WebUtility.HtmlDecode(Attr(html, @"<title>\s*([^<]+?)\s*</title>") ?? ""));
        var guide = Regex.Match(html, @"<section class=""section prose theme-guide"">(.*?)</section>", RegexOptions.Singleline);
        Assert.True(guide.Success);
        foreach (var link in Regex.Matches(guide.Groups[1].Value, @"href=""(/[^""]+)""").Select(m => m.Groups[1].Value).Distinct())
            await GetHtml(link);
        var cards = Regex.Match(html, @"<h2>Le mie escursioni</h2>(.*?)id=""fonti-guida""", RegexOptions.Singleline).Groups[1].Value;
        Assert.Equal(4, Regex.Matches(cards, @"href=""/escursioni/[^""]+""").Select(m => m.Value).Distinct().Count());
        await GetHtml("/guide/inesistente", HttpStatusCode.NotFound);
        var client = site.CreateNoRedirectClient();
        Assert.Contains("/guide/ciaspole-abetone</loc>", await client.GetStringAsync("/sitemap.xml"));
        Assert.Contains("/guide/ciaspole-abetone", await client.GetStringAsync("/llms.txt"));

        // Ogni guida: link interni validi, ogni escursione nelle card e la scheda escursione che rimanda alla guida
        foreach (var g in site.Services.GetRequiredService<System.Collections.Generic.IReadOnlyList<ThemeGuide>>())
        {
            var page = await GetHtml(g.Url);
            var body = Regex.Match(page, @"<section class=""section prose theme-guide"">(.*?)</section>", RegexOptions.Singleline).Groups[1].Value;
            foreach (var link in Regex.Matches(body, @"href=""(/[^""]+)""").Select(m => m.Groups[1].Value).Distinct())
                await GetHtml(link);
            var hikes = site.Services.GetRequiredService<HikeRepository>().All.Where(h => g.Escursioni.Contains(h.WikilocId)).ToList();
            Assert.Equal(g.Escursioni.Count, hikes.Count);
            foreach (var h in hikes)
                Assert.Contains($"href=\"{g.Url}\"", await GetHtml("/escursioni/" + h.Slug));
        }
    }

    private static string? Attr(string html, string pattern)
    {
        var m = Regex.Match(html, pattern, RegexOptions.IgnoreCase);
        return m.Success ? WebUtility.HtmlDecode(m.Groups[1].Value) : null;
    }

    [Theory]
    [InlineData("/", "/")]
    [InlineData("/escursioni", "/escursioni")]
    [InlineData("/mappa", "/mappa")]
    [InlineData("/chi-sono", "/chi-sono")]
    [InlineData("/contatti", "/contatti")]
    [InlineData("/vette", "/vette")]
    [InlineData("/rifugi", "/rifugi")]
    [InlineData("/passi", "/passi")]
    [InlineData("/laghi", "/laghi")]
    public async Task IndexablePages_HaveTitleDescriptionCanonical(string path, string canonicalPath)
    {
        var html = await GetHtml(path);

        Assert.False(string.IsNullOrWhiteSpace(Attr(html, @"<title>([^<]+)</title>")));
        Assert.False(string.IsNullOrWhiteSpace(Attr(html, @"<meta name=""description"" content=""([^""]+)""")));
        Assert.Equal(BaseUrl + (canonicalPath == "/" ? "/" : canonicalPath), Attr(html, @"<link rel=""canonical"" href=""([^""]+)"""));
        Assert.Equal("index, follow", Attr(html, @"<meta name=""robots"" content=""([^""]+)"""));
        Assert.Contains("<h1", html);
    }

    [Theory]
    [InlineData("/privacy")]
    [InlineData("/note-legali")]
    public async Task LegalPages_AreNoindex_AndLinkedFromFooter(string path)
    {
        var html = await GetHtml(path);
        Assert.Equal("noindex, follow", Attr(html, @"<meta name=""robots"" content=""([^""]+)"""));
        Assert.Contains($@"href=""{path}""", await GetHtml("/"));
    }

    [Fact]
    public async Task SearchPage_IsNoindex_AndHasAllFilters()
    {
        var html = await GetHtml("/ricerca");

        Assert.Equal("noindex, follow", Attr(html, @"<meta name=""robots"" content=""([^""]+)"""));
        foreach (var field in new[] { "Q", "Comune", "RaggioKm", "Difficolta", "OrdinaPer" })
            Assert.Matches($@"name=""{field}""", html);
        Assert.Contains("/js/search.js", html);
        Assert.Contains("id=\"search-results\"", html);
    }

    [Fact]
    public async Task NotFoundPage_Returns404_AndNoindex()
    {
        var html = await GetHtml("/404", HttpStatusCode.NotFound);
        Assert.Equal("noindex, follow", Attr(html, @"<meta name=""robots"" content=""([^""]+)"""));

        var unknown = await site.CreateNoRedirectClient().GetAsync("/escursioni/questa-escursione-non-esiste");
        Assert.Equal(HttpStatusCode.NotFound, unknown.StatusCode);
    }

    [Fact]
    public async Task EveryHikePage_HasSeoTagsGpxAndStructuredData()
    {
        foreach (var hike in site.Repository.All)
        {
            var html = await GetHtml("/escursioni/" + hike.Slug);
            var url = $"{BaseUrl}/escursioni/{hike.Slug}";

            Assert.Equal(url, Attr(html, @"<link rel=""canonical"" href=""([^""]+)"""));
            Assert.Equal(url, Attr(html, @"<meta property=""og:url"" content=""([^""]+)"""));
            Assert.Equal(hike.TitoloSeo ?? hike.Titolo, Attr(html, @"<h1[^>]*>\s*([^<]+?)\s*</h1>"));
            Assert.StartsWith(BaseUrl + "/", Attr(html, @"<meta property=""og:image"" content=""([^""]+)""") ?? "");
            Assert.Contains($"/media/gpx/{hike.WikilocId}.gpx", html);
            // Prima del download: finestra di conferma con le avvertenze e il rimando alle note legali
            Assert.Contains("id=\"gpx-avviso\"", html);
            Assert.Contains("/js/gpx-avviso.js", html);
            Assert.Contains("sotto la tua esclusiva responsabilità", html);
            // Punto di partenza già nell'HTML, non riempito dal JavaScript
            Assert.Contains("Come arrivare e parcheggio", html);
            Assert.Matches(@"id=""parking-google-maps-link""[^>]*href=""https://www\.google\.com/maps\?q=-?\d+\.\d+,-?\d+\.\d+""", html);

            var description = Attr(html, @"<meta name=""description"" content=""([^""]+)""") ?? "";
            Assert.InRange(description.Length, 50, 160);
            Assert.DoesNotMatch(@"[\r\n]", description);
            // Le meta_descrizione scritte a mano restano entro i 160 caratteri: arrivano intere, senza "…"
            if (!string.IsNullOrWhiteSpace(hike.MetaDescrizione))
                Assert.Equal(hike.MetaDescrizione, System.Net.WebUtility.HtmlDecode(description));

            // Tutti i blocchi JSON-LD devono essere JSON valido
            foreach (Match ld in Regex.Matches(html, @"<script type=""application/ld\+json"">(.*?)</script>", RegexOptions.Singleline))
                JsonDocument.Parse(ld.Groups[1].Value).Dispose();
        }
    }

    [Fact]
    public async Task HikeWithPhotos_HasCarouselWithWebpSources()
    {
        // Senza varianti: le loro foto si aggiungono alla galleria
        var hike = site.Repository.All.First(h => h.Media.Count > 3 && h.AltreVolte.Count == 0);
        var html = await GetHtml("/escursioni/" + hike.Slug);

        Assert.Equal(hike.Media.Count, Regex.Matches(html, "data-carousel-slide").Count);
        Assert.Contains(".gallery.webp", html);
        Assert.Contains("data-carousel-next", html);
    }

    [Fact]
    public async Task ZoneButton_OnlyLinksExistingZonePages()
    {
        foreach (var hike in site.Repository.All.Where(h => !string.IsNullOrEmpty(h.Tag)))
        {
            var html = await GetHtml("/escursioni/" + hike.Slug);
            foreach (Match m in Regex.Matches(html, @"href=""/escursioni/zona/([^""]+)"""))
                Assert.True(Escursioni.Web.Services.TagHelper.FromSlug(m.Groups[1].Value) != null, $"{hike.Slug} linka la zona inesistente {m.Groups[1].Value}");
        }
    }

    [Fact]
    public async Task ZonePages_ListAllTheirHikes()
    {
        foreach (var (tag, count) in await site.Repository.GetTagSummaryAsync())
        {
            var html = await GetHtml("/escursioni/zona/" + Escursioni.Web.Services.TagHelper.ToSlug(tag));
            foreach (var hike in await site.Repository.GetByTagAsync(tag))
                Assert.Contains($"href=\"/escursioni/{hike.Slug}\"", html);
        }
    }

    [Fact]
    public async Task HomePage_ShowsLatestHikes()
    {
        var html = await GetHtml("/");
        foreach (var hike in await site.Repository.GetLatestAsync(3))
            Assert.Contains($"/escursioni/{hike.Slug}\"", html);
    }

    [Theory]
    [InlineData("vette")]
    [InlineData("rifugi")]
    [InlineData("passi")]
    [InlineData("laghi")]
    public async Task PlacePages_ListEveryPlaceByAltitude_WithItsHikes(string slug)
    {
        var places = site.Services.GetRequiredService<PlaceRepository>().OfType(PlaceType.FromSlug(slug)!);
        var html = await GetHtml("/" + slug);

        Assert.Equal(places.Count, Regex.Matches(html, @"class=""peak-name""").Count);
        Assert.True(places.Zip(places.Skip(1)).All(p => (p.First.QuotaM ?? 0) >= (p.Second.QuotaM ?? 0)), "luoghi non ordinati per quota");
        foreach (var p in places)
        {
            Assert.Contains($"id=\"{p.Anchor}\"", html);
            foreach (var hike in p.Hikes)
                Assert.Contains($"href=\"/escursioni/{hike.Slug}\"", html);
        }
        foreach (Match ld in Regex.Matches(html, @"<script type=""application/ld\+json"">(.*?)</script>", RegexOptions.Singleline))
            JsonDocument.Parse(ld.Groups[1].Value).Dispose();
    }

    [Fact]
    public async Task HikePage_LinksThePlacesOnItsRoute()
    {
        var places = site.Services.GetRequiredService<PlaceRepository>();
        var hike = site.Repository.All.FirstOrDefault(h => places.ForHike(h).Count > 0);
        if (hike == null)
            return;
        var html = await GetHtml("/escursioni/" + hike.Slug);
        foreach (var p in places.ForHike(hike))
            Assert.Contains($"href=\"{p.Url}\"", html);
    }

    [Fact]
    public async Task PlaceSheets_HavePageWithSourcesAndHikes_LinkedFromListAndHikes()
    {
        var places = site.Services.GetRequiredService<PlaceRepository>();
        Assert.Empty(places.SchedeOrfane);
        var sitemap = await site.CreateNoRedirectClient().GetStringAsync("/sitemap.xml");

        foreach (var p in places.WithSheets)
        {
            var html = await GetHtml(p.Url);
            Assert.Equal($"{BaseUrl}{p.Url}", Attr(html, @"<link rel=""canonical"" href=""([^""]+)"""));
            Assert.Equal(p.Scheda!.Nome, Attr(html, @"<h1[^>]*>\s*([^<]+?)\s*</h1>"));
            Assert.NotEmpty(p.Scheda.Fonti);
            Assert.All(p.Scheda.Fonti, f => Assert.StartsWith("https://", f.Url));
            foreach (var f in p.Scheda.Fonti)
                Assert.Contains($"href=\"{f.Url}\"", html);
            foreach (var h in p.Hikes)
                Assert.Contains($"href=\"/escursioni/{h.Slug}\"", html);
            foreach (Match ld in Regex.Matches(html, @"<script type=""application/ld\+json"">(.*?)</script>", RegexOptions.Singleline))
                JsonDocument.Parse(ld.Groups[1].Value).Dispose();

            if (p.Scheda.Breve)
                Assert.DoesNotContain($"<loc>{BaseUrl}{p.Url}</loc>", sitemap);
            else
                Assert.Contains($"<loc>{BaseUrl}{p.Url}</loc>", sitemap);
            Assert.Contains($"href=\"{p.Url}\"", await GetHtml("/" + p.Type.Slug));
            Assert.Contains($"href=\"{p.Url}\"", await GetHtml("/escursioni/" + p.Hikes[0].Slug));
        }

        await GetHtml("/rifugi/inesistente", HttpStatusCode.NotFound);
    }

    [Fact]
    public async Task EveryPlace_HasPage_NoindexUntilItHasASheet()
    {
        var places = site.Services.GetRequiredService<PlaceRepository>();
        var sitemap = await site.CreateNoRedirectClient().GetStringAsync("/sitemap.xml");
        Assert.Equal(places.All.Count, places.All.Select(p => p.Url).Distinct().Count());

        foreach (var p in places.All)
        {
            var html = await GetHtml(p.Url);
            Assert.Equal(p.NomeCompleto, WebUtility.HtmlDecode(Attr(html, @"<h1[^>]*>\s*([^<]+?)\s*</h1>")));
            foreach (var h in p.Hikes)
                Assert.Contains($"href=\"/escursioni/{h.Slug}\"", html);
            var robots = Attr(html, @"<meta name=""robots"" content=""([^""]+)""");
            if (p.Scheda == null)
            {
                Assert.Equal("noindex, follow", robots);
                Assert.DoesNotContain($"<loc>{BaseUrl}{p.Url}</loc>", sitemap);
            }
            else
                Assert.Equal(p.Scheda.Breve ? "noindex, follow" : "index, follow", robots);
        }

        // Il nome di una scheda con slug diverso porta alla scheda, senza passaggi intermedi
        var client = site.CreateNoRedirectClient();
        foreach (var (from, to) in places.Redirects)
        {
            using var response = await client.GetAsync(from);
            Assert.Equal(HttpStatusCode.MovedPermanently, response.StatusCode);
            Assert.Equal(to, response.Headers.Location?.OriginalString);
        }
    }

    [Fact]
    public async Task HomePage_ShowsTotalsAndPlaces()
    {
        var html = await GetHtml("/");
        var all = site.Repository.All;

        // I record personali sono nascosti per ora (commentati in Index.cshtml): qui solo totali e luoghi
        // Il dislivello conta anche le altre volte delle escursioni ripetute, una volta sola per uscita
        var gain = HikeDisplay.Number(all.Concat(site.Repository.Varianti)
            .DistinctBy(h => (h.Principale ?? h, HikeRepository.OutingKey(h)))
            .Sum(h => h.DislivelloM ?? 0));
        Assert.Contains($"<strong>{gain}</strong> m di dislivello", html);

        var places = site.Services.GetRequiredService<PlaceRepository>();
        foreach (var type in PlaceType.All.Where(t => places.OfType(t).Count > 0))
            Assert.Matches($@"<a href=""/{type.Slug}""[^>]*>\s*<strong class=""place-card-count"">{places.OfType(type).Count}</strong>", html);
    }

    [Theory]
    [InlineData("1859", 1859)]
    [InlineData("1859 m", 1859)]
    [InlineData("1859.6", 1860)]
    [InlineData("1.859", 1859)]
    [InlineData("1859;1855", 1859)]
    [InlineData("circa", null)]
    public void Elevation_IsParsedFromOsmTag(string value, int? expected)
        => Assert.Equal(expected, PlaceFinder.ParseEle(value));

    [Fact]
    public async Task MapPage_ContainsEveryHikeWithCoordinates()
    {
        var html = await GetHtml("/mappa");
        foreach (var hike in await site.Repository.GetWithCoordinatesAsync())
            Assert.Contains($"\"{hike.Slug}\"", html);
    }

    [Fact]
    public async Task ContactPage_ShowsEmailLink_WithoutForm()
    {
        var html = await GetHtml("/contatti");
        Assert.Contains("href=\"mailto:luca.bigoni@live.it\"", html);
        Assert.DoesNotContain("api.web3forms.com", html);
    }
}

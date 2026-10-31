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

            var description = Attr(html, @"<meta name=""description"" content=""([^""]+)""") ?? "";
            Assert.InRange(description.Length, 50, 130);
            Assert.DoesNotMatch(@"[\r\n]", description);

            // Tutti i blocchi JSON-LD devono essere JSON valido
            foreach (Match ld in Regex.Matches(html, @"<script type=""application/ld\+json"">(.*?)</script>", RegexOptions.Singleline))
                JsonDocument.Parse(ld.Groups[1].Value).Dispose();
        }
    }

    [Fact]
    public async Task HikeWithPhotos_HasCarouselWithWebpSources()
    {
        var hike = site.Repository.All.First(h => h.Media.Count > 3);
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
            Assert.Contains($"href=\"/{p.Type.Slug}#{p.Anchor}\"", html);
    }

    [Fact]
    public async Task HomePage_ShowsTotalsAndPlaces()
    {
        var html = await GetHtml("/");
        var all = site.Repository.All;

        // I record personali sono nascosti per ora (commentati in Index.cshtml): qui solo totali e luoghi
        var gain = HikeDisplay.Number(all.Sum(h => h.DislivelloM ?? 0));
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

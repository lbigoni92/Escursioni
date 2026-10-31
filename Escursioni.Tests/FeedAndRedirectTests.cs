using Escursioni.Web.Services;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Linq;
using System.Net;
using System.Text.Json;
using System.Threading.Tasks;
using System.Xml.Linq;
using Xunit;

namespace Escursioni.Tests;

/// <summary>Sitemap, RSS, robots.txt, indice di ricerca e redirect dei vecchi URL.</summary>
[Collection("Site")]
public class FeedAndRedirectTests(SiteFactory site)
{
    private const string BaseUrl = "https://escursionilucabigoni.it";

    [Fact]
    public async Task Sitemap_ListsEveryHikeAndZone_OnlyOnce_AndEveryUrlWorks()
    {
        var client = site.CreateNoRedirectClient();
        var xml = XDocument.Parse(await client.GetStringAsync("/sitemap.xml"));
        XNamespace ns = "http://www.sitemaps.org/schemas/sitemap/0.9";
        var locs = xml.Descendants(ns + "loc").Select(e => e.Value).ToList();

        Assert.Equal(locs.Count, locs.Distinct().Count());
        foreach (var hike in site.Repository.All)
            Assert.Contains($"{BaseUrl}/escursioni/{hike.Slug}", locs);
        foreach (var (tag, _) in await site.Repository.GetTagSummaryAsync())
            Assert.Contains($"{BaseUrl}/escursioni/zona/{TagHelper.ToSlug(tag)}", locs);

        foreach (var loc in locs)
        {
            var response = await client.GetAsync(new Uri(loc).PathAndQuery);
            Assert.True(response.StatusCode == HttpStatusCode.OK, $"{loc} → {(int)response.StatusCode}");
        }
    }

    [Fact]
    public async Task Rss_IsValid_AndLinksToExistingPages()
    {
        var client = site.CreateNoRedirectClient();
        var response = await client.GetAsync("/feed/rss");
        Assert.Equal(HttpStatusCode.OK, response.StatusCode);

        var items = XDocument.Parse(await response.Content.ReadAsStringAsync()).Descendants("item").ToList();
        Assert.NotEmpty(items);
        foreach (var item in items)
        {
            Assert.False(string.IsNullOrWhiteSpace(item.Element("title")?.Value));
            var link = item.Element("link")!.Value;
            Assert.StartsWith(BaseUrl + "/escursioni/", link);
            Assert.Equal(HttpStatusCode.OK, (await client.GetAsync(new Uri(link).PathAndQuery)).StatusCode);
        }
    }

    [Fact]
    public async Task RobotsTxt_PointsToSitemap()
    {
        var robots = await site.CreateClient().GetStringAsync("/robots.txt");
        Assert.Contains($"Sitemap: {BaseUrl}/sitemap.xml", robots);
        Assert.DoesNotContain("Disallow: /\n", robots.Replace("\r", ""));
    }

    [Fact]
    public async Task SearchIndex_HasEveryHike_WithFieldsUsedBySearchJs()
    {
        using var doc = JsonDocument.Parse(await site.CreateClient().GetStringAsync("/data/search-index.json"));
        var entries = doc.RootElement.EnumerateArray().ToList();

        Assert.Equal(site.Repository.All.Count, entries.Count);
        Assert.Equal(entries.Count, entries.Select(e => e.GetProperty("slug").GetString()).Distinct().Count());
        foreach (var field in new[] { "slug", "titolo", "descrizione", "comune", "difficolta", "data", "km", "dislivello", "lat", "lon", "thumb" })
            Assert.All(entries, e => Assert.True(e.TryGetProperty(field, out _), $"campo {field} mancante"));
    }

    [Fact]
    public async Task LegacyUrlWithId_RedirectsPermanentlyToSlug()
    {
        var hike = site.Repository.All[0];
        var response = await site.CreateNoRedirectClient().GetAsync($"/escursioni/{hike.Id}/{hike.Slug}");

        Assert.Equal(HttpStatusCode.MovedPermanently, response.StatusCode);
        Assert.Equal($"{BaseUrl}/escursioni/{hike.Slug}", response.Headers.Location!.ToString());
    }

    [Fact]
    public async Task RemovedPages_RedirectPermanentlyToExistingPage()
    {
        var client = site.CreateNoRedirectClient();
        foreach (var (from, to) in site.Services.GetRequiredService<SiteRedirects>().Map)
        {
            var response = await client.GetAsync(from);
            Assert.Equal(HttpStatusCode.MovedPermanently, response.StatusCode);
            Assert.Equal(to, response.Headers.Location!.ToString());
            Assert.Equal(HttpStatusCode.OK, (await client.GetAsync(to)).StatusCode);
        }
    }

    [Fact]
    public void CloudflareRedirects_ServeZonePagesBeforeLegacyRule_AndCoverOldSiteLinks()
    {
        var exporter = ActivatorUtilities.CreateInstance<StaticSiteExporter>(site.Services);
        var lines = exporter.BuildRedirects().Split('\n').Select(l => l.Trim()).Where(l => l.Length > 0 && !l.StartsWith('#')).ToList();

        var zoneRule = lines.IndexOf("/escursioni/zona/:slug /escursioni/zona/:slug 200");
        var legacyRule = lines.IndexOf("/escursioni/:id/:slug /escursioni/:slug 301");
        Assert.True(zoneRule >= 0 && legacyRule > zoneRule, "la regola delle zone deve precedere quella legacy");

        var hikeSlugs = site.Repository.All.Select(h => h.Slug).ToHashSet();
        foreach (var rule in lines.Select(l => l.Split(' ')))
        {
            Assert.Equal(3, rule.Length);
            // Un redirect non deve mai coprire la pagina di un'escursione
            Assert.False(rule[0].StartsWith("/escursioni/") && hikeSlugs.Contains(rule[0]["/escursioni/".Length..]), $"{rule[0]} è una pagina");
            if (rule[2] == "301" && rule[1].StartsWith("/escursioni/") && !rule[1].Contains(':') && !rule[1].StartsWith("/escursioni/zona/"))
                Assert.Contains(rule[1]["/escursioni/".Length..], hikeSlugs);
        }
        Assert.Contains(lines, l => l.StartsWith("/traccia-gps-calambrone/ /escursioni/calambrone 301"));
    }
}

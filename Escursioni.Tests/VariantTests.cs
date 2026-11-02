using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml.Linq;
using Microsoft.Extensions.DependencyInjection;
using Escursioni.Web.Services;
using Xunit;

namespace Escursioni.Tests;

/// <summary>
/// Escursioni ripetute (Data/hikes-varianti): una sola pagina con "Le volte che l'ho fatta",
/// 301 diretti dai vecchi URL, nessuna pagina propria per le varianti.
/// </summary>
[Collection("Site")]
public class VariantTests(SiteFactory site)
{
    private const string BaseUrl = "https://escursionilucabigoni.it";

    /// <summary>URL pubblicati prima dell'unione (sitemap di ottobre 2026) → pagina unica.</summary>
    [Theory]
    [InlineData("sestola-lago-della-ninfa-andata", "lago-della-ninfa-da-sestola")]
    [InlineData("sestola-lago-della-ninfa-ritorno", "lago-della-ninfa-da-sestola")]
    [InlineData("vicopisano-verruca-andata", "vicopisano-rocca-della-verruca")]
    [InlineData("vicopisano-verruca-ritorno", "vicopisano-rocca-della-verruca")]
    [InlineData("calambrone-marzo-2019", "calambrone")]
    [InlineData("calambrone-passeggiata", "calambrone")]
    [InlineData("calambrone-passeggiata-nel-verde-picnic", "calambrone")]
    [InlineData("calambrone2", "calambrone")]
    [InlineData("valle-benedetta-acquedotto-di-colognole-v1", "valle-benedetta-acquedotto-di-colognole")]
    [InlineData("valle-benedetta-acquedotto-di-colognole-v2", "valle-benedetta-acquedotto-di-colognole")]
    [InlineData("valle-benedetta-acquedotto-di-colognole-v3", "valle-benedetta-acquedotto-di-colognole")]
    [InlineData("valle-benedetta-acquedotto-di-colognole-v4", "valle-benedetta-acquedotto-di-colognole")]
    [InlineData("livorno-escursionismo-colognole", "valle-benedetta-acquedotto-di-colognole")]
    [InlineData("buti-ferrata", "ferrata-di-buti")]
    [InlineData("ferrata-buti", "ferrata-di-buti")]
    public async Task OldVariantUrls_RedirectDirectlyToTheMergedPage(string oldSlug, string newSlug)
    {
        var client = site.CreateNoRedirectClient();

        var response = await client.GetAsync($"/escursioni/{oldSlug}");
        Assert.Equal(HttpStatusCode.MovedPermanently, response.StatusCode);
        Assert.Equal($"/escursioni/{newSlug}", response.Headers.Location!.ToString());

        // Vecchio formato con l'id: un solo salto, non due
        var legacy = await client.GetAsync($"/escursioni/123/{oldSlug}");
        Assert.Equal(HttpStatusCode.MovedPermanently, legacy.StatusCode);
        Assert.Equal($"{BaseUrl}/escursioni/{newSlug}", legacy.Headers.Location!.ToString());

        Assert.Equal(HttpStatusCode.OK, (await client.GetAsync($"/escursioni/{newSlug}")).StatusCode);
    }

    [Fact]
    public void EveryVariant_BelongsToAMainHike()
    {
        Assert.Empty(site.Repository.VariantiOrfane);
        Assert.NotEmpty(site.Repository.Varianti);
        Assert.All(site.Repository.Varianti, v => Assert.Contains(v, v.Principale!.AltreVolte));
    }

    [Fact]
    public async Task Variants_AreNotInSitemapSearchOrRss()
    {
        var client = site.CreateNoRedirectClient();
        var sitemap = await client.GetStringAsync("/sitemap.xml");
        var search = await client.GetStringAsync("/data/search-index.json");
        var rss = await client.GetStringAsync("/feed/rss");
        var llms = await client.GetStringAsync("/llms.txt");

        foreach (var v in site.Repository.Varianti)
        {
            Assert.DoesNotContain($"/escursioni/{v.Slug}<", sitemap);
            Assert.DoesNotContain($"\"slug\":\"{v.Slug}\"", search);
            Assert.DoesNotContain($"/escursioni/{v.Slug}<", rss);
            Assert.DoesNotContain($"/escursioni/{v.Slug})", llms);
        }
    }

    [Fact]
    public async Task MainPage_ListsEveryTime_WithTracksOnTheMap()
    {
        var client = site.CreateNoRedirectClient();
        foreach (var hike in site.Repository.All.Where(h => h.AltreVolte.Count > 0))
        {
            var html = await client.GetStringAsync($"/escursioni/{hike.Slug}");

            Assert.Contains("Le volte che l'ho fatta", html);
            var table = Regex.Match(html, @"<table class=""times-table"">.*?</table>", RegexOptions.Singleline).Value;
            Assert.Equal(hike.AltreVolte.Count + 1, Regex.Matches(table, "<tr").Count - 1);
            foreach (var v in hike.AltreVolte)
            {
                Assert.Contains(v.Url, table);
                Assert.Contains($"/media/gpx/{v.WikilocId}.gpx", html);
            }
        }
    }

    [Fact]
    public async Task AndataRitorno_AreLabelled()
    {
        var html = await site.CreateNoRedirectClient().GetStringAsync("/escursioni/lago-della-ninfa-da-sestola");
        Assert.Contains(">andata<", html);
        Assert.Contains(">ritorno<", html);
    }

    [Fact]
    public void PlacesOfVariantTracks_CountForTheMainHike()
    {
        var places = site.Services.GetRequiredService<PlaceRepository>();
        Assert.All(places.All, p => Assert.All(p.Hikes, h => Assert.Null(h.Principale)));
    }
}

using Escursioni.Web.Services;
using System;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Xunit;

namespace Escursioni.Tests;

/// <summary>Header di sicurezza, CSS minificato e /llms.txt.</summary>
[Collection("Site")]
public class HeadersAndAssetsTests(SiteFactory site)
{
    [Theory]
    [InlineData("/")]
    [InlineData("/css/site.css")]
    [InlineData("/pagina-che-non-esiste")]
    public async Task EveryResponse_HasSecurityHeaders_AndHsts(string path)
    {
        var response = await site.CreateNoRedirectClient().GetAsync(path);

        foreach (var (name, value) in SecurityHeaders.All)
            Assert.Equal(value, response.Headers.GetValues(name).Single());
        Assert.Equal($"max-age={(int)SecurityHeaders.HstsMaxAge.TotalSeconds}", response.Headers.GetValues("Strict-Transport-Security").Single());
    }

    [Fact]
    public async Task Hsts_IsSent_BehindProxyThatTerminatesHttps()
    {
        // Come su Render: la richiesta arriva in HTTP, il proxy dice che in origine era HTTPS
        var client = site.CreateClient(new() { AllowAutoRedirect = false, BaseAddress = new Uri("http://escursionilucabigoni.it") });
        var request = new HttpRequestMessage(HttpMethod.Get, "/");
        request.Headers.Add("X-Forwarded-Proto", "https");

        var response = await client.SendAsync(request);

        Assert.True(response.Headers.Contains("Strict-Transport-Security"));
    }

    [Fact]
    public async Task SiteCss_IsServedMinified_AndStillComplete()
    {
        var response = await site.CreateNoRedirectClient().GetAsync("/css/site.css");
        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.Equal("text/css", response.Content.Headers.ContentType?.MediaType);

        var css = await response.Content.ReadAsStringAsync();
        var source = await System.IO.File.ReadAllTextAsync(System.IO.Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "..", "Escursioni.Web", "wwwroot", "css", "site.css"));
        Assert.True(css.Length < source.Length * 0.85, $"CSS non minificato: {css.Length} su {source.Length} caratteri");
        Assert.DoesNotContain("/*", css);
        Assert.Contains(".peak-place a", css);
        Assert.Contains("color-mix(", css);
    }

    [Fact]
    public async Task LlmsTxt_ListsEveryZone()
    {
        var response = await site.CreateNoRedirectClient().GetAsync("/llms.txt");
        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        Assert.Equal("text/plain", response.Content.Headers.ContentType?.MediaType);

        var text = await response.Content.ReadAsStringAsync();
        Assert.StartsWith("# Escursioni Luca Bigoni", text);
        foreach (var (tag, _) in await site.Repository.GetTagSummaryAsync())
            Assert.Contains($"/escursioni/zona/{TagHelper.ToSlug(tag)})", text);
    }
}

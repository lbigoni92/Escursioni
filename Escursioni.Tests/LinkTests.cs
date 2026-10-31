using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Xunit;

namespace Escursioni.Tests;

/// <summary>Nessun link interno rotto: visita tutte le pagine della sitemap e controlla ogni href/src.</summary>
[Collection("Site")]
public class LinkTests(SiteFactory site)
{
    // Vecchio sito citato nelle descrizioni Wikiloc: gestito dai redirect di Cloudflare (_redirects)
    private static bool HandledByCloudflareRedirects(string path) => path.StartsWith("/traccia-gps-");

    [Fact]
    public async Task AllInternalLinksAndAssets_Resolve()
    {
        var client = site.CreateNoRedirectClient();
        var pages = Regex.Matches(await client.GetStringAsync("/sitemap.xml"), @"<loc>https://escursionilucabigoni\.it([^<]*)</loc>")
            .Select(m => m.Groups[1].Value)
            .Concat(["/ricerca", "/404"])
            .Distinct()
            .ToList();

        var targets = new Dictionary<string, string>(); // url → prima pagina che lo usa
        foreach (var page in pages)
        {
            var html = await (await client.GetAsync(page)).Content.ReadAsStringAsync();
            foreach (Match m in Regex.Matches(html, @"(?:href|src|srcset)=""(?:https://escursionilucabigoni\.it)?(/[^""#?\s]*)"))
            {
                var url = WebUtility.HtmlDecode(m.Groups[1].Value);
                if (!url.StartsWith("//"))
                    targets.TryAdd(url, page);
            }
        }

        var webRoot = Path.Combine(site.Services.GetWebRoot(), "");
        var broken = new List<string>();
        foreach (var (url, page) in targets)
        {
            // La pagina 404 linka sé stessa (canonical) e risponde 404 di proposito
            if (HandledByCloudflareRedirects(url) || url == "/404") continue;

            // I media sono migliaia di file: basta che esistano su disco
            if (url.StartsWith("/media/"))
            {
                if (!File.Exists(Path.Combine(webRoot, Uri.UnescapeDataString(url).TrimStart('/'))))
                    broken.Add($"{url} (in {page})");
                continue;
            }
            var status = (await client.GetAsync(url)).StatusCode;
            if (status != HttpStatusCode.OK)
                broken.Add($"{url} → {(int)status} (in {page})");
        }

        Assert.True(broken.Count == 0, "Link rotti:\n" + string.Join("\n", broken.Take(30)));
        Assert.True(targets.Count > 1000, $"troppi pochi link trovati ({targets.Count}): il crawl non funziona");
    }
}

internal static class ServiceProviderExtensions
{
    public static string GetWebRoot(this IServiceProvider services)
        => ((Microsoft.AspNetCore.Hosting.IWebHostEnvironment)services.GetService(typeof(Microsoft.AspNetCore.Hosting.IWebHostEnvironment))!).WebRootPath;
}

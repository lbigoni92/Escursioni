using Escursioni.Web.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Services;

public class SeoService
{
    private readonly IConfiguration _config;

    public SeoService(IConfiguration config)
    {
        _config = config;
    }

    public void ConfigureForHike(PageModel page, Hike hike)
    {
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.example.com").TrimEnd('/');

        page.ViewData["Title"] = !string.IsNullOrWhiteSpace(hike.TitoloSeo) ? hike.TitoloSeo : hike.Titolo;

        var desc = hike.Descrizione ?? string.Empty;
        if (string.IsNullOrWhiteSpace(desc) && !string.IsNullOrWhiteSpace(hike.DescrizioneHtml))
        {
            desc = StripHtml(hike.DescrizioneHtml);
        }

        // Use meta_descrizione if available, otherwise fallback to titolo + descrizione
        var metaDesc = !string.IsNullOrWhiteSpace(hike.MetaDescrizione)
            ? hike.MetaDescrizione
            : $"{hike.Titolo} - {desc}".Trim();
        if (metaDesc.Length > 180)
            metaDesc = metaDesc[..180] + "...";

        page.ViewData["MetaDescription"] = metaDesc;

        // Canonical URL
        var slug = Escursioni.Web.Pages.Escursioni.IndexModel.MakeSlug(hike.Titolo);
        var canonical = $"{baseUrl}/escursioni/{hike.Id}/{slug}";
        page.ViewData["CanonicalUrl"] = canonical;

        // Open Graph
        page.ViewData["OgType"] = "article";
        var cover = hike.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
        if (!string.IsNullOrWhiteSpace(cover))
        {
            page.ViewData["OgImage"] = $"{baseUrl}/{cover}";
        }

        // JSON-LD Article
        var pubDate = (hike.DataEscursione ?? hike.DataPubblicazione ?? hike.CreatedAt).ToString("yyyy-MM-dd");
        var modDate = hike.UpdatedAt.ToString("yyyy-MM-dd");
        var safeTitle = System.Text.Json.JsonEncodedText.Encode(hike.Titolo).ToString();
        var safeDesc = System.Text.Json.JsonEncodedText.Encode(desc).ToString();

          var jsonLd = $@"{{
      ""@context"": ""https://schema.org"",
      ""@type"": ""Article"",
      ""headline"": ""{safeTitle}"",
      ""description"": ""{safeDesc}"",
      ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"" }},
      ""datePublished"": ""{pubDate}"",
      ""dateModified"": ""{modDate}"",
      ""url"": ""{canonical}""";

        if (!string.IsNullOrWhiteSpace(cover))
        {
            jsonLd += $@",
  ""image"": ""{baseUrl}/{cover}""";
        }

        jsonLd += "\n}";

        page.ViewData["JsonLd"] = jsonLd;
    }

    private static string StripHtml(string html)
    {
        return System.Text.RegularExpressions.Regex.Replace(html, "<.*?>", " ")
            .Replace("\n", " ")
            .Replace("\r", " ");
    }
}

using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class AboutModel : PageModel
{
    private readonly IConfiguration _config;

    public AboutModel(IConfiguration config)
    {
        _config = config;
    }

    public void OnGet()
    {
        ViewData["Title"] = "Chi è Luca Bigoni – Escursionista amatoriale in Toscana";
        ViewData["MetaDescription"] = "Luca Bigoni: escursionista amatoriale appassionato di trekking in Toscana, Alpi Apuane e Garfagnana. Scopri chi sono e i sentieri che amo percorrere.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/chi-sono";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { ("Chi sono", "") };

        // ProfilePage: la Person completa è già nel layout, qui basta il riferimento al suo @id
        ViewData["JsonLd"] = @"{
  ""@context"": ""https://schema.org"",
  ""@type"": ""ProfilePage"",
  ""url"": """ + baseUrl + @"/chi-sono"",
  ""inLanguage"": ""it-IT"",
  ""mainEntity"": { ""@id"": """ + baseUrl + @"/#luca-bigoni"" }
}";
    }
}

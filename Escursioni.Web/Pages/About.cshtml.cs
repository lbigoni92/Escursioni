using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.OutputCaching;

namespace Escursioni.Web.Pages;

[OutputCache(PolicyName = "PagesSlow")]
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
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/chi-sono";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";

        // Structured data for the About/Person page
        ViewData["JsonLd"] = @"{
  ""@context"": ""https://schema.org"",
  ""@type"": ""Person"",
  ""name"": ""Luca Bigoni"",
  ""url"": """ + baseUrl + @"/chi-sono"",
  ""jobTitle"": ""Escursionista appassionato"",
  ""knowsAbout"": [""Escursioni Toscana"", ""Trekking Alpi Apuane"", ""Sentieri Garfagnana"", ""Escursioni  Lucca""],
  ""address"": {""@type"": ""PostalAddress"", ""addressRegion"": ""Toscana"", ""addressCountry"": ""IT""},
  ""sameAs"": [""https://www.linkedin.com/in/luca-bigoni/"", ""https://www.instagram.com/lbigoni/"", ""https://www.facebook.com/luca.bigoni1/""]
}";
    }
}

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
        ViewData["Title"] = "Chi è Luca Bigoni – Escursionista e guida appassionata in Toscana";
        ViewData["MetaDescription"] = "Luca Bigoni: escursionista appassionato di trekking in Toscana, Alpi Apuane e Garfagnana. Scopri chi sono, le mie escursioni guidate e i sentieri che amo percorrere.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/chi-sono";

        // Structured data for the About/Person page
        ViewData["JsonLd"] = @"{
  ""@context"": ""https://schema.org"",
  ""@type"": ""Person"",
  ""name"": ""Luca Bigoni"",
  ""url"": """ + baseUrl + @"/chi-sono"",
  ""jobTitle"": ""Escursionista e guida appassionata"",
  ""knowsAbout"": [""Escursioni Toscana"", ""Trekking Alpi Apuane"", ""Sentieri Garfagnana"", ""Escursioni guidate Lucca""],
  ""address"": {""@type"": ""PostalAddress"", ""addressRegion"": ""Toscana"", ""addressCountry"": ""IT""},
  ""sameAs"": [""https://www.linkedin.com/in/luca-bigoni/"", ""https://www.instagram.com/lbigoni/"", ""https://www.facebook.com/luca.bigoni1/""]
}";
    }
}

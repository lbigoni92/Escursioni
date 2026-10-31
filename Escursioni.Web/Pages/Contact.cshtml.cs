using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

/// <summary>
/// Pagina statica: il form invia direttamente a Web3Forms (https://web3forms.com)
/// che inoltra il messaggio via email. La access key è pubblica per design.
/// </summary>
public class ContactModel : PageModel
{
    private readonly IConfiguration _config;

    public ContactModel(IConfiguration config)
    {
        _config = config;
    }

    public string ContactEmail { get; set; } = "";
    public string? Web3FormsAccessKey { get; set; }

    public void OnGet()
    {
        ViewData["Title"] = "Contatti | Escursioni Luca Bigoni";
        var desc = "Contattami per informazioni sulle escursioni in Toscana, consigli sui sentieri delle Apuane e Garfagnana o proposte di collaborazione.";
        var metaDesc = $"Contatti - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/contatti";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        ViewData["Breadcrumbs"] = new List<(string Label, string Url)> { ("Contatti", "") };
        ContactEmail = _config["Site:ContactEmail"] ?? "luca.bigoni@live.it";
        Web3FormsAccessKey = _config["Contact:Web3FormsAccessKey"];

        // JSON-LD ContactPage
        ViewData["JsonLd"] = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""ContactPage"",
  ""name"": ""Contatti – Escursioni Luca Bigoni"",
  ""description"": ""Contattami per informazioni sulle escursioni in Toscana."",
  ""url"": ""{baseUrl}/contatti"",
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }}
}}";
    }
}

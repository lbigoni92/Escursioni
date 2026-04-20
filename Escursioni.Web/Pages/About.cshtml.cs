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
        ViewData["Title"] = "Chi è Luca Bigoni";
        var desc = "Luca Bigoni: appassionato di escursionismo, trekking e natura. Scopri la mia storia, la passione per la montagna e i sentieri.";
        var metaDesc = $"Chi è Luca Bigoni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursioni.onrender.com").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/chi-sono";
    }
}

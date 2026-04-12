using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class AboutModel : PageModel
{
    public void OnGet()
    {
        ViewData["Title"] = "Chi è Luca Bigoni";
        var desc = "Luca Bigoni: appassionato di escursionismo, trekking e natura. Scopri la mia storia, la passione per la montagna e i sentieri.";
        var metaDesc = $"Chi è Luca Bigoni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
    }
}

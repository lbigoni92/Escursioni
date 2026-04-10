using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class AboutModel : PageModel
{
    public void OnGet()
    {
        ViewData["Title"] = "Chi sono";
        var desc = "Chi sono: appassionato di escursionismo e montagna. Scopri la mia storia e la passione che mi spinge a esplorare sentieri e vette.";
        var metaDesc = $"Chi sono - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
    }
}

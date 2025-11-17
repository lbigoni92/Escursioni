using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class AboutModel : PageModel
{
    public void OnGet()
    {
        ViewData["Title"] = "Chi sono";
    }
}

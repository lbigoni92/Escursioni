using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class ContactModel : PageModel
{
    public void OnGet()
    {
        ViewData["Title"] = "Contatti";
    }
}

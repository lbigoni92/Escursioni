using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class ContactModel : PageModel
{
    private readonly IConfiguration _config;

    public ContactModel(IConfiguration config)
    {
        _config = config;
    }

    public string ContactEmail { get; set; } = "";

    public void OnGet()
    {
        ViewData["Title"] = "Contatti";
        var desc = "Contattami per informazioni sulle escursioni, suggerimenti sui sentieri o proposte di collaborazione.";
        var metaDesc = $"Contatti - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        ContactEmail = _config["Site:ContactEmail"] ?? "info@example.com";
    }
}

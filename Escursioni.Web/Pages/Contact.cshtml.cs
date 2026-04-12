using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Escursioni.Web.Models;
using Escursioni.Web.Services;

namespace Escursioni.Web.Pages;

public class ContactModel : PageModel
{
    private readonly IConfiguration _config;
    private readonly EmailSender _emailSender;

    public ContactModel(IConfiguration config)
    {
        _config = config;
        var smtpSection = config.GetSection("Smtp");
        _emailSender = new EmailSender(
            smtpSection["Host"]!,
            int.Parse(smtpSection["Port"]!),
            smtpSection["User"]!,
            smtpSection["Pass"]!,
            smtpSection["From"]!
        );
    }

    [BindProperty]
    public ContactFormModel Form { get; set; } = new();

    public string? SuccessMessage { get; set; }
    public string? ErrorMessage { get; set; }
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

    public async Task<IActionResult> OnPostAsync()
    {
        ViewData["Title"] = "Contatti";
        ContactEmail = _config["Site:ContactEmail"] ?? "info@example.com";
        if (!ModelState.IsValid)
        {
            ErrorMessage = "Per favore, correggi i campi evidenziati.";
            return Page();
        }

        try
        {
            var subject = $"Nuovo messaggio dal sito Escursioni da {Form.Name}";
            var body = $"Nome: {Form.Name}\nEmail: {Form.Email}\nMessaggio:\n{Form.Message}";
            await _emailSender.SendAsync("luca.bigoni@live.it", subject, body);
            SuccessMessage = "Messaggio inviato con successo! Ti risponderò appena possibile.";
            ModelState.Clear();
            Form = new();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Errore nell'invio del messaggio: {ex.Message}";
        }
        return Page();
    }
}

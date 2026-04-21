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
        // Leggi direttamente dalle variabili di ambiente
        var smtpHost = config["Smtp:Host"] ?? Environment.GetEnvironmentVariable("SMTP_HOST") ?? "smtp.sendgrid.net";
        var smtpPort = config["Smtp:Port"] ?? Environment.GetEnvironmentVariable("SMTP_PORT") ?? "587";
        var smtpUser = Environment.GetEnvironmentVariable("SMTP_USER") ?? config["Smtp:User"];
        var smtpPass = Environment.GetEnvironmentVariable("SMTP_PASS") ?? config["Smtp:Pass"];
        var smtpFrom = Environment.GetEnvironmentVariable("SMTP_FROM") ?? config["Smtp:From"];

        _emailSender = new EmailSender(
            smtpHost!,
            int.Parse(smtpPort!),
            smtpUser!,
            smtpPass!,
            smtpFrom!
        );
    }

    [BindProperty]
    public ContactFormModel Form { get; set; } = new();

    public string? SuccessMessage { get; set; }
    public string? ErrorMessage { get; set; }
    public string ContactEmail { get; set; } = "";

    public void OnGet()
    {
        ViewData["Title"] = "Contatti | Escursioni Luca Bigoni";
        var desc = "Contattami per informazioni sulle escursioni in Toscana, consigli sui sentieri delle Apuane e Garfagnana o proposte di collaborazione.";
        var metaDesc = $"Contatti - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/contatti";
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

            // Log indirizzi email e parametri SMTP
            Console.WriteLine($"[Contact] Invio email. FROM: {_config["Smtp:From"]} | TO: luca.bigoni@live.it | SMTP_USER: {_config["Smtp:User"]}");
            Console.WriteLine($"[Contact] Form.Email: {Form.Email}");

            await _emailSender.SendAsync("luca.bigoni@live.it", subject, body);
            SuccessMessage = "Messaggio inviato con successo! Ti risponderò appena possibile.";
            ModelState.Clear();
            Form = new();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Errore nell'invio del messaggio: {ex.Message}";
            Console.WriteLine($"[Contact] ERRORE invio email: {ex}");
        }
        return Page();
    }
}

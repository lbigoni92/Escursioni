using System.ComponentModel.DataAnnotations;

namespace Escursioni.Web.Models;

public class ContactFormModel
{
    [Required(ErrorMessage = "Il nome è obbligatorio.")]
    public string? Name { get; set; }

    [Required(ErrorMessage = "L'email è obbligatoria.")]
    [EmailAddress(ErrorMessage = "Email non valida.")]
    public string? Email { get; set; }

    [Required(ErrorMessage = "Il messaggio è obbligatorio.")]
    [StringLength(2000, ErrorMessage = "Il messaggio è troppo lungo.")]
    public string? Message { get; set; }

    public string? RecaptchaToken { get; set; }
}

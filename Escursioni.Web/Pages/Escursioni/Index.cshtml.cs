using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Text;
using System.Text.RegularExpressions;

namespace Escursioni.Web.Pages.Escursioni;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;



    public List<Hike> Escursioni { get; set; } = new();

    [BindProperty(SupportsGet = true)]
    public string? Regione { get; set; }

    [BindProperty(SupportsGet = true)]
    public string? Difficolta { get; set; }

    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public async Task OnGet()
    {
        ViewData["Title"] = "Tutte le escursioni e trekking in Toscana e Italia | Luca Bigoni";
        ViewData["MetaDescription"] = "Elenco completo di escursioni e trekking in Toscana, Alpi Apuane, Garfagnana e tutta Italia. Tracce GPS, foto, dislivelli e descrizioni dettagliate dei sentieri.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/escursioni";
        Escursioni = await _repo.GetAllAsync(Regione, Difficolta);
    }

    public static string MakeSlug(string text)
    {
        if (string.IsNullOrWhiteSpace(text)) return string.Empty;
        var normalized = text.ToLowerInvariant().Normalize(NormalizationForm.FormD);
        var sb = new StringBuilder();
        foreach (var c in normalized)
        {
            var uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(c);
            if (uc == System.Globalization.UnicodeCategory.NonSpacingMark)
                continue;
            sb.Append(c);
        }
        var cleaned = sb.ToString().Normalize(NormalizationForm.FormC);
        cleaned = Regex.Replace(cleaned, @"[^a-z0-9]+", "-");
        cleaned = Regex.Replace(cleaned, @"-+", "-").Trim('-');
        return cleaned;
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

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

    public IndexModel(IHikeRepository repo)
    {
        _repo = repo;
    }

    public List<Hike> Escursioni { get; set; } = new();

    [BindProperty(SupportsGet = true)]
    public string? Regione { get; set; }

    [BindProperty(SupportsGet = true)]
    public string? Difficolta { get; set; }

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni";
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
        => h.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
}

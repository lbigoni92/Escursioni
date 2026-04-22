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
    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<(string Tag, int Count)> TagSummary { get; set; } = new();
    public int TotalHikes { get; set; }

    public async Task OnGet()
    {
        ViewData["Title"] = "Escursioni per zona – Trekking in Toscana e Italia | Luca Bigoni";
        ViewData["MetaDescription"] = "Esplora tutte le escursioni organizzate per zona: Alpi Apuane, Garfagnana, Versilia, Appennino e molto altro. Tracce GPS, foto e descrizioni dettagliate.";
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/escursioni";

        TagSummary = await _repo.GetTagSummaryAsync();
        TotalHikes = TagSummary.Sum(t => t.Count);
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

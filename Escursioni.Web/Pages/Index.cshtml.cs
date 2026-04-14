using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages;

public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;

    public IndexModel(IHikeRepository repo)
    {
        _repo = repo;
    }

    public List<Hike> UltimeEscursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Luca Bigoni - Escursioni, trekking e natura";
        var desc = "Sito ufficiale di Luca Bigoni: escursioni, trekking, natura, sentieri e avventure in montagna.";
        var metaDesc = $"Luca Bigoni - {desc}";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        UltimeEscursioni = await _repo.GetLatestAsync(8);
    }

    public static string? CoverPath(Hike h)
        => (h.Media.FirstOrDefault(m => m.Tipo == "cover") ?? h.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
}

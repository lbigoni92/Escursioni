using Escursioni.Web.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Services;

public class SeoService
{
    public void ConfigureForHike(PageModel page, Hike hike)
    {
        page.ViewData["Title"] = hike.Titolo;
        var desc = hike.Descrizione ?? string.Empty;
        if (string.IsNullOrWhiteSpace(desc) && !string.IsNullOrWhiteSpace(hike.DescrizioneHtml))
        {
            desc = StripHtml(hike.DescrizioneHtml);
        }
        if (desc.Length > 180)
            desc = desc[..180] + "...";

        page.ViewData["MetaDescription"] = desc;
    }

    private static string StripHtml(string html)
    {
        return System.Text.RegularExpressions.Regex.Replace(html, "<.*?>", " ")
            .Replace("\n", " ")
            .Replace("\r", " ");
    }
}

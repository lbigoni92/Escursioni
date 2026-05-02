using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Feed;

public class SitemapModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public SitemapModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public string BaseUrl { get; set; } = "";
    public List<Hike> Hikes { get; set; } = new();
    /// <summary>Only tags that actually have hikes (slug → count).</summary>
    public List<string> ActiveTagSlugs { get; set; } = new();

    public async Task OnGet()
    {
        // Read configured base URL, fallback to non-www. Normalize to ensure non-www host.
        var rawBase = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        try
        {
            var uri = new Uri(rawBase);
            var host = uri.Host.StartsWith("www.", StringComparison.OrdinalIgnoreCase)
                ? uri.Host.Substring(4)
                : uri.Host;
            BaseUrl = $"{uri.Scheme}://{host}".TrimEnd('/');
        }
        catch
        {
            BaseUrl = rawBase; // fallback as-is
        }
        Hikes = await _repo.GetAllAsync(null, null);
        var tagSummary = await _repo.GetTagSummaryAsync();
        ActiveTagSlugs = tagSummary
            .Where(t => t.Count > 0)
            .Select(t => TagHelper.ToSlug(t.Tag))
            .Distinct()
            .ToList();
    }
}

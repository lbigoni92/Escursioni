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

    public async Task OnGet()
    {
        BaseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');
        Hikes = await _repo.GetAllAsync(null, null);
    }
}

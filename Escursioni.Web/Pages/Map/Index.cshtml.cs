using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.OutputCaching;

namespace Escursioni.Web.Pages.Map;

[OutputCache(PolicyName = "PagesSlow")]
public class IndexModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public IndexModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public List<Hike> Escursioni { get; set; } = new();

    public async Task OnGet()
    {
        ViewData["Title"] = "Mappa escursioni in Toscana – Trekking con tracce GPS | Luca Bigoni";
        var metaDesc = "Esplora la mappa delle escursioni in Toscana: trekking, itinerari e percorsi con tracce GPS scaricabili. Scopri sentieri in Alpi Apuane, Garfagnana e Appennino.";
        if (metaDesc.Length > 180) metaDesc = metaDesc[..180] + "...";
        ViewData["MetaDescription"] = metaDesc;
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');
        ViewData["CanonicalUrl"] = $"{baseUrl}/mappa";
        ViewData["OgImage"] = $"{baseUrl}/images/og-home.jpg";
        ViewData["FullWidth"] = true;

        Escursioni = await _repo.GetWithCoordinatesAsync();

        // Build ItemList JSON-LD for first 50 hikes to help indexing
        try
        {
            var items = Escursioni.Take(50)
                .Select((h, i) => new {
                    @type = "ListItem",
                    position = i + 1,
                    url = baseUrl + "/escursioni/" + global::Escursioni.Web.Pages.Escursioni.IndexModel.MakeSlug(h.Titolo)
                }).ToArray();

            var itemList = new {
                @context = "https://schema.org",
                @type = "ItemList",
                name = "Escursioni in Toscana",
                itemListElement = items
            };

            ViewData["ItemListJsonLd"] = System.Text.Json.JsonSerializer.Serialize(itemList);
        }
        catch
        {
            ViewData["ItemListJsonLd"] = null;
        }
    }
}

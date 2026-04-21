using System.Text;
using System.Xml.Linq;
using Escursioni.Web.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Pages.Feed;

public class RssModel : PageModel
{
    private readonly IHikeRepository _repo;
    private readonly IConfiguration _config;

    public RssModel(IHikeRepository repo, IConfiguration config)
    {
        _repo = repo;
        _config = config;
    }

    public async Task<IActionResult> OnGet()
    {
        Response.Headers["Cache-Control"] = "public, max-age=3600, s-maxage=86400";
        var baseUrl = _config["Site:BaseUrl"]?.TrimEnd('/') ?? "https://www.example.com";
        var hikes = await _repo.GetForRssAsync(500);

        var channel = new XElement("channel",
            new XElement("title", "Escursioni Luca Bigoni – Trekking in Toscana"),
            new XElement("link", baseUrl + "/"),
            new XElement("description", "Ultime escursioni e trekking in Toscana, Alpi Apuane e Garfagnana pubblicate da Luca Bigoni."),
            hikes.Select(h =>
            {
                var url = baseUrl + "/escursioni/" + h.Id + "/" +
                            Pages.Escursioni.IndexModel.MakeSlug(h.Titolo);

                var desc = h.Descrizione ?? "";
                if (desc.Length > 300) desc = desc[..300] + "...";

                var pub = (h.DataEscursione ?? h.CreatedAt).ToUniversalTime();

                return new XElement("item",
                    new XElement("title", h.Titolo),
                    new XElement("link", url),
                    new XElement("guid", url),
                    new XElement("description", desc),
                    new XElement("pubDate", pub.ToString("r"))
                );
            })
        );

        var rss = new XDocument(
            new XDeclaration("1.0", "UTF-8", "yes"),
            new XElement("rss",
                new XAttribute("version", "2.0"),
                channel)
        );

        var xmlString = rss.ToString(SaveOptions.DisableFormatting);
        return Content(xmlString, "application/rss+xml", Encoding.UTF8);
    }
}

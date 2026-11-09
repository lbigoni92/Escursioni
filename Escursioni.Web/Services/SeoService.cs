using Escursioni.Web.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Escursioni.Web.Services;

public class SeoService
{
    private readonly IConfiguration _config;

    public SeoService(IConfiguration config)
    {
        _config = config;
    }

    public void ConfigureForHike(PageModel page, Hike hike)
    {
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://escursionilucabigoni.it").TrimEnd('/');

        var title = !string.IsNullOrWhiteSpace(hike.TitoloSeo) ? hike.TitoloSeo : hike.Titolo;

        // Layout appends " | Escursioni" (14 chars) when title doesn't contain "Escursioni"
        const string layoutSuffix = " | Escursioni";
        const int maxTitleLength = 70;
        var maxLength = title.Contains("Escursioni") ? maxTitleLength : maxTitleLength - layoutSuffix.Length;
        page.ViewData["Title"] = TruncateTitle(title, maxLength);

        var desc = hike.Descrizione ?? string.Empty;
        if (string.IsNullOrWhiteSpace(desc) && !string.IsNullOrWhiteSpace(hike.DescrizioneHtml))
        {
            desc = StripHtml(hike.DescrizioneHtml);
        }

        // Use meta_descrizione if available, otherwise fallback to titolo + descrizione
        var metaDesc = !string.IsNullOrWhiteSpace(hike.MetaDescrizione)
            ? hike.MetaDescrizione
            : $"{hike.Titolo} - {desc}".Trim();
        // Molte meta descrizioni contengono a capo (\r\n): nel meta tag diventano spazi
        metaDesc = System.Text.RegularExpressions.Regex.Replace(metaDesc, @"\s+", " ").Trim();
        // Google mostra circa 160 caratteri: le meta_descrizione stanno sotto, si taglia solo il ripiego dalla descrizione
        const int maxMetaLength = 160;
        if (metaDesc.Length > maxMetaLength)
            metaDesc = TruncateTitle(metaDesc, maxMetaLength - 1) + "…";

        page.ViewData["MetaDescription"] = metaDesc;

        // Canonical URL
        var slug = hike.Slug;
        var canonical = $"{baseUrl}/escursioni/{slug}";
        page.ViewData["CanonicalUrl"] = canonical;

        // Open Graph
        page.ViewData["OgType"] = "article";
        // Stessa copertina di schede e sitemap: la foto "cover", altrimenti la prima
        var cover = (hike.Media.FirstOrDefault(m => m.Tipo == "cover") ?? hike.Media.OrderBy(m => m.Ordine).FirstOrDefault())?.PathRelativo;
        if (!string.IsNullOrWhiteSpace(cover))
        {
            page.ViewData["OgImage"] = $"{baseUrl}/{cover}";
        }

        // JSON-LD TouristTrip + Article
        var pubDate = (hike.DataEscursione ?? hike.DataPubblicazione ?? hike.CreatedAt).ToString("yyyy-MM-dd");
        var modDate = hike.UpdatedAt.ToString("yyyy-MM-dd");
        var headline = !string.IsNullOrWhiteSpace(hike.TitoloSeo) ? hike.TitoloSeo : hike.Titolo;
        var safeHeadline = System.Text.Json.JsonEncodedText.Encode(headline).ToString();
        var safeDesc = System.Text.Json.JsonEncodedText.Encode(metaDesc).ToString();
        var safeLocation = System.Text.Json.JsonEncodedText.Encode(
            !string.IsNullOrWhiteSpace(hike.Comune) ? $"{hike.Comune}, {hike.Provincia}" : hike.Regione ?? "Toscana"
        ).ToString();

        // Build keywords from hike data
        var kwParts = new List<string>();
        kwParts.Add($"escursione {hike.Titolo}");
        if (!string.IsNullOrWhiteSpace(hike.Comune)) kwParts.Add($"trekking {hike.Comune}");
        if (!string.IsNullOrWhiteSpace(hike.Provincia)) kwParts.Add($"sentiero {hike.Provincia}");
        if (!string.IsNullOrWhiteSpace(hike.Difficolta)) kwParts.Add($"difficoltà {hike.Difficolta}");
        var safeKeywords = System.Text.Json.JsonEncodedText.Encode(string.Join(", ", kwParts)).ToString();

        // 1. TouristTrip schema — hiking-specific structured data
        var tripLd = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""TouristTrip"",
  ""name"": ""{safeHeadline}"",
  ""description"": ""{safeDesc}"",
  ""touristType"": ""Escursionisti"",
  ""inLanguage"": ""it-IT"",
  ""url"": ""{canonical}""";

        // Location
        if (hike.CentroidLat.HasValue && hike.CentroidLon.HasValue)
        {
            tripLd += $@",
  ""contentLocation"": {{
    ""@type"": ""Place"",
    ""name"": ""{safeLocation}"",
    ""geo"": {{ ""@type"": ""GeoCoordinates"", ""latitude"": {hike.CentroidLat.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)}, ""longitude"": {hike.CentroidLon.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)} }}
  }}";
        }
        else
        {
            tripLd += $@",
  ""contentLocation"": {{ ""@type"": ""Place"", ""name"": ""{safeLocation}"" }}";
        }

        // Itinerary with hiking details
        var hikeDetails = new List<string>();
        if (hike.DistanzaKm.HasValue)
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Distanza: {hike.DistanzaKm.Value.ToString("0.0", System.Globalization.CultureInfo.InvariantCulture)} km"" }}");
        if (hike.DislivelloM.HasValue)
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Dislivello: +{hike.DislivelloM.Value} m"" }}");
        if (!string.IsNullOrWhiteSpace(hike.Difficolta))
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Difficoltà: {System.Text.Json.JsonEncodedText.Encode(hike.Difficolta)}"" }}");
        if (!string.IsNullOrWhiteSpace(hike.TempoHHMM))
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Durata: {hike.TempoHHMM}"" }}");
        if (hike.QuotaMaxM.HasValue)
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Quota massima: {hike.QuotaMaxM.Value} m"" }}");
        if (!string.IsNullOrWhiteSpace(hike.TipoGiro))
            hikeDetails.Add($@"    {{ ""@type"": ""ListItem"", ""position"": {hikeDetails.Count + 1}, ""name"": ""Tipo: {System.Text.Json.JsonEncodedText.Encode(hike.TipoGiro)}"" }}");

        if (hikeDetails.Count > 0)
        {
            tripLd += $@",
  ""itinerary"": {{
    ""@type"": ""ItemList"",
    ""name"": ""Dati escursione"",
    ""itemListElement"": [
{string.Join(",\n", hikeDetails)}
    ]
  }}";
        }

        // additionalProperty — structured hiking data for Google
        var props = new List<string>();
        if (hike.DistanzaKm.HasValue)
            props.Add($@"    {{ ""@type"": ""PropertyValue"", ""name"": ""Distanza"", ""value"": ""{hike.DistanzaKm.Value.ToString("0.0", System.Globalization.CultureInfo.InvariantCulture)} km"" }}");
        if (hike.DislivelloM.HasValue)
            props.Add($@"    {{ ""@type"": ""PropertyValue"", ""name"": ""Dislivello"", ""value"": ""+{hike.DislivelloM.Value} m"" }}");
        if (!string.IsNullOrWhiteSpace(hike.Difficolta))
            props.Add($@"    {{ ""@type"": ""PropertyValue"", ""name"": ""Difficoltà"", ""value"": ""{System.Text.Json.JsonEncodedText.Encode(hike.Difficolta)}"" }}");
        if (!string.IsNullOrWhiteSpace(hike.TempoHHMM))
            props.Add($@"    {{ ""@type"": ""PropertyValue"", ""name"": ""Durata"", ""value"": ""{hike.TempoHHMM}"" }}");
        if (hike.QuotaMaxM.HasValue)
            props.Add($@"    {{ ""@type"": ""PropertyValue"", ""name"": ""Quota massima"", ""value"": ""{hike.QuotaMaxM.Value} m"" }}");

        if (props.Count > 0)
        {
            tripLd += $@",
  ""additionalProperty"": [
{string.Join(",\n", props)}
  ]";
        }

        // about — main Place subject
        var safeTitolo = System.Text.Json.JsonEncodedText.Encode(hike.Titolo).ToString();
        tripLd += $@",
  ""about"": {{ ""@type"": ""Place"", ""name"": ""{safeTitolo}"" }}";

        if (!string.IsNullOrWhiteSpace(cover))
        {
            tripLd += $@",
  ""image"": ""{baseUrl}/{cover}""";
        }

        tripLd += "\n}";

        // 2. Article schema — for Google article rich results
        var articleLd = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""Article"",
  ""headline"": ""{safeHeadline}"",
  ""description"": ""{safeDesc}"",
  ""inLanguage"": ""it-IT"",
  ""keywords"": ""{safeKeywords}"",
  ""author"": {{ ""@type"": ""Person"", ""@id"": ""{baseUrl}/#luca-bigoni"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""publisher"": {{ ""@type"": ""Person"", ""@id"": ""{baseUrl}/#luca-bigoni"", ""name"": ""Luca Bigoni"" }},
  ""mainEntityOfPage"": {{ ""@type"": ""WebPage"", ""@id"": ""{canonical}"" }},
  ""datePublished"": ""{pubDate}"",
  ""dateModified"": ""{modDate}"",
  ""url"": ""{canonical}""";

        if (!string.IsNullOrWhiteSpace(cover))
        {
            articleLd += $@",
  ""image"": ""{baseUrl}/{cover}""";
        }

        // Fonti dei cenni storici: dicono a Google e agli assistenti AI da dove vengono i fatti citati
        if (hike.Fonti.Count > 0)
        {
            var citations = hike.Fonti.Select(f =>
                $@"    {{ ""@type"": ""CreativeWork"", ""name"": ""{System.Text.Json.JsonEncodedText.Encode(string.IsNullOrWhiteSpace(f.Titolo) ? f.Url : f.Titolo)}"", ""url"": ""{System.Text.Json.JsonEncodedText.Encode(f.Url)}"" }}");
            articleLd += $@",
  ""citation"": [
{string.Join(",\n", citations)}
  ]";
        }

        articleLd += "\n}";

        page.ViewData["JsonLd"] = tripLd;
        page.ViewData["JsonLd2"] = articleLd;

        // Breadcrumbs: Home › Escursioni per zona › Zona › Escursione (il JSON-LD lo genera il layout)
        var breadcrumbs = new List<(string Label, string Url)> { ("Escursioni per zona", "/escursioni") };
        var zone = HikeDisplay.Zone(hike);
        if (zone != null)
            breadcrumbs.Add((zone, $"/escursioni/zona/{TagHelper.ToSlug(zone)}"));
        // Con le varianti il titolo Wikiloc descrive una sola delle volte ("... - Andata"): meglio quello della pagina
        breadcrumbs.Add((hike.AltreVolte.Count > 0 ? HikeDisplay.Title(hike) : hike.Titolo, ""));
        page.ViewData["Breadcrumbs"] = breadcrumbs;
    }

    private static string TruncateTitle(string title, int maxLength)
    {
        if (title.Length <= maxLength)
            return title;

        var truncated = title[..maxLength];
        var lastSpace = truncated.LastIndexOf(' ');
        if (lastSpace > maxLength / 2)
            truncated = truncated[..lastSpace];

        return truncated.TrimEnd(' ', '-', '–', ',');
    }

    private static string StripHtml(string html)
    {
        return System.Text.RegularExpressions.Regex.Replace(html, "<.*?>", " ")
            .Replace("\n", " ")
            .Replace("\r", " ");
    }
}

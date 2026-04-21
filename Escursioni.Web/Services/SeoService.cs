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
        var baseUrl = (_config["Site:BaseUrl"] ?? "https://www.escursionilucabigoni.it").TrimEnd('/');

        page.ViewData["Title"] = !string.IsNullOrWhiteSpace(hike.TitoloSeo) ? hike.TitoloSeo : hike.Titolo;

        var desc = hike.Descrizione ?? string.Empty;
        if (string.IsNullOrWhiteSpace(desc) && !string.IsNullOrWhiteSpace(hike.DescrizioneHtml))
        {
            desc = StripHtml(hike.DescrizioneHtml);
        }

        // Use meta_descrizione if available, otherwise fallback to titolo + descrizione
        var metaDesc = !string.IsNullOrWhiteSpace(hike.MetaDescrizione)
            ? hike.MetaDescrizione
            : $"{hike.Titolo} - {desc}".Trim();
        if (metaDesc.Length > 180)
            metaDesc = metaDesc[..180] + "...";

        page.ViewData["MetaDescription"] = metaDesc;

        // Canonical URL
        var slug = Escursioni.Web.Pages.Escursioni.IndexModel.MakeSlug(hike.Titolo);
        var canonical = $"{baseUrl}/escursioni/{hike.Id}/{slug}";
        page.ViewData["CanonicalUrl"] = canonical;

        // Open Graph
        page.ViewData["OgType"] = "article";
        var cover = hike.Media.OrderBy(m => m.Ordine).FirstOrDefault()?.PathRelativo;
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
  ""author"": {{ ""@type"": ""Person"", ""name"": ""Luca Bigoni"", ""url"": ""{baseUrl}/chi-sono"" }},
  ""publisher"": {{ ""@type"": ""Organization"", ""name"": ""Escursioni Luca Bigoni"", ""url"": ""{baseUrl}/"" }},
  ""mainEntityOfPage"": {{ ""@type"": ""WebPage"", ""@id"": ""{canonical}"" }},
  ""datePublished"": ""{pubDate}"",
  ""dateModified"": ""{modDate}"",
  ""url"": ""{canonical}""";

        if (!string.IsNullOrWhiteSpace(cover))
        {
            articleLd += $@",
  ""image"": ""{baseUrl}/{cover}""";
        }

        articleLd += "\n}";

        page.ViewData["JsonLd"] = tripLd;
        page.ViewData["JsonLd2"] = articleLd;

        // Breadcrumbs
        var breadcrumbs = new List<(string Label, string Url)>
        {
            ("Ricerca", $"{baseUrl}/ricerca"),
            (hike.Titolo, "")
        };
        page.ViewData["Breadcrumbs"] = breadcrumbs;

        var safeTitle2 = System.Text.Json.JsonEncodedText.Encode(hike.Titolo).ToString();
        var breadcrumbJsonLd = $@"{{
  ""@context"": ""https://schema.org"",
  ""@type"": ""BreadcrumbList"",
  ""itemListElement"": [
    {{""@type"": ""ListItem"", ""position"": 1, ""name"": ""Home"", ""item"": ""{baseUrl}/""}},
    {{""@type"": ""ListItem"", ""position"": 2, ""name"": ""Ricerca"", ""item"": ""{baseUrl}/search""}},
    {{""@type"": ""ListItem"", ""position"": 3, ""name"": ""{safeTitle2}"", ""item"": ""{canonical}""}}
  ]
}}";
        page.ViewData["BreadcrumbJsonLd"] = breadcrumbJsonLd;
    }

    private static string StripHtml(string html)
    {
        return System.Text.RegularExpressions.Regex.Replace(html, "<.*?>", " ")
            .Replace("\n", " ")
            .Replace("\r", " ");
    }
}

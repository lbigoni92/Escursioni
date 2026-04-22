namespace Escursioni.Web.Services;

public static class TagHelper
{
    private static readonly Dictionary<string, string> TagToSlug = new(StringComparer.OrdinalIgnoreCase)
    {
        ["Alpi Apuane"] = "alpi-apuane",
        ["Garfagnana"] = "garfagnana",
        ["Versilia e costa toscana"] = "versilia-e-costa-toscana",
        ["Lucchesia e colline toscane"] = "lucchesia-e-colline-toscane",
        ["Appennino Tosco-Emiliano"] = "appennino-tosco-emiliano",
        ["Trentino"] = "trentino",
        ["Estero"] = "estero",
    };

    private static readonly Dictionary<string, string> SlugToTag =
        TagToSlug.ToDictionary(kv => kv.Value, kv => kv.Key, StringComparer.OrdinalIgnoreCase);

    private static readonly Dictionary<string, string> TagDescriptions = new(StringComparer.OrdinalIgnoreCase)
    {
        ["Alpi Apuane"] = "Trekking impegnativi e panorami mozzafiato tra le vette di marmo delle Alpi Apuane.",
        ["Garfagnana"] = "Sentieri nel verde tra borghi medievali e foreste, perfetti per escursioni di mezza giornata.",
        ["Versilia e costa toscana"] = "Percorsi tra mare e montagna lungo la costa toscana, ideali tutto l'anno.",
        ["Lucchesia e colline toscane"] = "Cammini facili e panoramici tra le dolci colline della Toscana.",
        ["Appennino Tosco-Emiliano"] = "Trekking d'alta quota e crinali spettacolari sull'Appennino.",
        ["Trentino"] = "Escursioni tra le Dolomiti e le montagne del Trentino-Alto Adige.",
        ["Estero"] = "Avventure ed escursioni fuori dall'Italia.",
    };

    public static string ToSlug(string tag) =>
        TagToSlug.TryGetValue(tag, out var slug) ? slug : tag.ToLowerInvariant().Replace(" ", "-");

    public static string? FromSlug(string slug) =>
        SlugToTag.TryGetValue(slug, out var tag) ? tag : null;

    public static string GetDescription(string tag) =>
        TagDescriptions.TryGetValue(tag, out var desc) ? desc : "";
}

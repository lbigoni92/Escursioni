namespace Escursioni.Web.Services;

public static class TagHelper
{
    private static readonly Dictionary<string, string> TagToSlug = new(StringComparer.OrdinalIgnoreCase)
    {
        ["Alpi Apuane"] = "alpi-apuane",
        ["Garfagnana"] = "garfagnana",
        ["Livorno e costa toscana"] = "livorno-e-costa-toscana",
        ["Versilia e Massarosa"] = "versilia-e-massarosa",
        ["Versilia e costa toscana"] = "versilia-e-costa-toscana",
        ["Lucchesia e colline toscane"] = "lucchesia-e-colline-toscane",
        ["Firenze e provincia"] = "firenze-e-provincia",
        ["Appennino Tosco-Emiliano"] = "appennino-tosco-emiliano",
        ["Trentino"] = "trentino",
        ["Trentino e Veneto"] = "trentino-e-veneto",
        ["Grosseto e Maremma"] = "grosseto-e-maremma",
        ["Lunigiana"] = "lunigiana",
        ["Monti Pisani"] = "monti-pisani",
        ["Altre zone dell'italia"] = "altre-zone-dell-italia",
        ["Estero"] = "estero",
    };

    private static readonly Dictionary<string, string> SlugToTag =
        TagToSlug.ToDictionary(kv => kv.Value, kv => kv.Key, StringComparer.OrdinalIgnoreCase);

    private static readonly Dictionary<string, string> TagDescriptions = new(StringComparer.OrdinalIgnoreCase)
    {
        ["Alpi Apuane"] = "Trekking impegnativi e panorami mozzafiato tra le vette di marmo delle Alpi Apuane.",
        ["Garfagnana"] = "Sentieri nel verde tra borghi medievali e foreste, perfetti per escursioni di mezza giornata.",
        ["Livorno e costa toscana"] = "Sentieri panoramici lungo la costa livornese da Montenero a Piombino.",
        ["Versilia e Massarosa"] = "Passeggiate tra costa versiliese, colline e Lago di Massaciuccoli.",
        ["Versilia e costa toscana"] = "Percorsi tra mare e montagna lungo la costa toscana, ideali tutto l'anno.",
        ["Lucchesia e colline toscane"] = "Cammini facili e panoramici tra le dolci colline della Toscana.",
        ["Firenze e provincia"] = "Escursioni tra colline, borghi e boschi nella provincia di Firenze.",
        ["Appennino Tosco-Emiliano"] = "Trekking d'alta quota e crinali spettacolari sull'Appennino.",
        ["Trentino"] = "Escursioni tra le Dolomiti e le montagne del Trentino-Alto Adige.",
        ["Trentino e Veneto"] = "Escursioni tra Dolomiti, Lessinia, Monte Grappa e le montagne del Triveneto.",
        ["Grosseto e Maremma"] = "Sentieri nella Maremma toscana tra Vie Cave etrusche, costa e colline metallifere.",
        ["Lunigiana"] = "Escursioni tra borghi e castelli nella valle storica della Lunigiana.",
        ["Monti Pisani"] = "Sentieri tra Pisa e Lucca sul Monte Serra e le colline pisane.",
        ["Altre zone dell'italia"] = "Escursioni in altre regioni italiane fuori dalla Toscana.",
        ["Estero"] = "Avventure ed escursioni fuori dall'Italia.",
    };

    public static string ToSlug(string tag) =>
        TagToSlug.TryGetValue(tag, out var slug) ? slug : tag.ToLowerInvariant().Replace(" ", "-");

    public static string? FromSlug(string slug) =>
        SlugToTag.TryGetValue(slug, out var tag) ? tag : null;

    /// <summary>True se il tag ha una pagina zona (/escursioni/zona/{slug}).</summary>
    public static bool IsKnown(string tag) => TagToSlug.ContainsKey(tag);

    public static string GetDescription(string tag) =>
        TagDescriptions.TryGetValue(tag, out var desc) ? desc : "";
}

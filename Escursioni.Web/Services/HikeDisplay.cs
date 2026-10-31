using System.Text.RegularExpressions;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>Testi e classi CSS comuni a card, dettaglio e indice di ricerca.</summary>
public static class HikeDisplay
{
    public static string Title(Hike h)
        => !string.IsNullOrWhiteSpace(h.TitoloSeo) ? h.TitoloSeo : h.Titolo;

    /// <summary>"Comune (Provincia)", oppure la regione se il comune manca.</summary>
    public static string? Location(Hike h)
    {
        if (!string.IsNullOrWhiteSpace(h.Comune))
            return string.IsNullOrWhiteSpace(h.Provincia) ? h.Comune : $"{h.Comune} ({h.Provincia})";
        return string.IsNullOrWhiteSpace(h.Regione) ? null : h.Regione;
    }

    /// <summary>Zona con pagina dedicata (/escursioni/zona/{slug}), oppure null.</summary>
    public static string? Zone(Hike h)
        => !string.IsNullOrWhiteSpace(h.Tag) && TagHelper.IsKnown(h.Tag) ? h.Tag : null;

    /// <summary>Classe del badge difficoltà: stessa scala di colori su tutto il sito.</summary>
    public static string DifficultyClass(string? difficolta) => difficolta?.Trim().ToLowerInvariant() switch
    {
        "facile" => "diff-easy",
        "medio" => "diff-medium",
        "difficile" => "diff-hard",
        "molto difficile" or "per esperti" => "diff-expert",
        _ => "diff-unknown",
    };

    /// <summary>Zone con pagina dedicata, ordinate per numero di escursioni.</summary>
    public static async Task<List<ZoneSummary>> GetZonesAsync(IHikeRepository repo)
    {
        var zones = new List<ZoneSummary>();
        foreach (var (tag, count) in await repo.GetTagSummaryAsync())
        {
            var hikes = await repo.GetByTagAsync(tag);
            var cover = hikes.Select(Pages.IndexModel.CoverPath).FirstOrDefault(c => !string.IsNullOrWhiteSpace(c));
            zones.Add(new ZoneSummary(tag, TagHelper.ToSlug(tag), count, TagHelper.GetDescription(tag), cover, hikes));
        }
        return zones;
    }

    /// <summary>
    /// Descrizione in testo semplice: molte descrizioni sono in Markdown ("### Descrizione del percorso", **grassetto**).
    /// Le righe titolo vengono tolte, il resto perde la sintassi e gli a capo.
    /// </summary>
    public static string PlainText(string? text)
    {
        var t = Regex.Replace(text ?? "", @"^\s*#{1,6}\s.*$", "", RegexOptions.Multiline);
        t = Regex.Replace(t, @"\[([^\]]*)\]\([^)]*\)", "$1");
        t = Regex.Replace(t, @"(\*\*|__|\*|`)", "");
        t = Regex.Replace(t, @"^\s*[-+]\s+", "", RegexOptions.Multiline);
        return Regex.Replace(t, @"\s+", " ").Trim();
    }

    public static string Excerpt(string? text, int max = 140)
    {
        var t = PlainText(text);
        return t.Length > max ? t[..max].TrimEnd() + "…" : t;
    }
}

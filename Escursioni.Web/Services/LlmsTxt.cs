using System.Text;
using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

/// <summary>
/// /llms.txt (formato llmstxt.org): descrizione del sito in Markdown per assistenti e motori di ricerca AI,
/// con le sezioni principali e tutte le escursioni divise per zona.
/// </summary>
public static class LlmsTxt
{
    public static string Build(IEnumerable<ZoneSummary> zones, string baseUrl, IEnumerable<Place>? placesWithSheets = null, IEnumerable<ThemeGuide>? guides = null)
    {
        var sb = new StringBuilder();
        sb.AppendLine("# Escursioni Luca Bigoni");
        sb.AppendLine();
        sb.AppendLine("> Escursioni e trekking in Toscana (Alpi Apuane, Garfagnana, Versilia, Appennino Tosco-Emiliano) e in altre zone d'Italia, raccontati da Luca Bigoni, escursionista amatoriale. Ogni escursione ha traccia GPS scaricabile, foto, distanza, dislivello, difficoltà e descrizione del percorso.");
        sb.AppendLine();
        sb.AppendLine("Tutti i percorsi sono stati fatti di persona. Le difficoltà sono valutazioni personali: prima di partire controlla meteo, stato dei sentieri e la tua preparazione.");
        sb.AppendLine();
        sb.AppendLine("## Sezioni");
        sb.AppendLine();
        sb.AppendLine($"- [Escursioni per zona]({baseUrl}/escursioni): guida alle zone escursionistiche");
        sb.AppendLine($"- [Mappa]({baseUrl}/mappa): tutte le escursioni su una mappa interattiva");
        sb.AppendLine($"- [Vette]({baseUrl}/vette): cime raggiunte, dalla più alta");
        sb.AppendLine($"- [Rifugi e bivacchi]({baseUrl}/rifugi)");
        sb.AppendLine($"- [Passi e valichi]({baseUrl}/passi)");
        sb.AppendLine($"- [Laghi]({baseUrl}/laghi)");
        sb.AppendLine($"- [Cascate]({baseUrl}/cascate)");
        foreach (var g in guides ?? [])
            sb.AppendLine($"- [{g.Titolo}]({baseUrl}{g.Url}): {g.MetaDescrizione}");
        sb.AppendLine($"- [Chi sono]({baseUrl}/chi-sono)");
        sb.AppendLine($"- [Contatti]({baseUrl}/contatti)");

        foreach (var zone in zones)
        {
            sb.AppendLine();
            sb.AppendLine($"## {zone.Tag}");
            sb.AppendLine();
            sb.AppendLine($"[Tutte le {zone.Count} escursioni: {zone.Tag}]({baseUrl}/escursioni/zona/{zone.Slug})");
            sb.AppendLine();
            foreach (var h in zone.Hikes)
            {
                var details = new[]
                {
                    HikeDisplay.Location(h),
                    h.DistanzaKm is decimal km ? HikeDisplay.Decimal1(km) + " km" : null,
                    h.DislivelloM is int d ? "+" + HikeDisplay.Meters(d) : null,
                    h.Difficolta,
                }.Where(s => !string.IsNullOrWhiteSpace(s));
                sb.AppendLine($"- [{HikeDisplay.Title(h)}]({baseUrl}/escursioni/{h.Slug}): {string.Join(", ", details)}");
            }
        }
        // Schede dei luoghi: descrizione, come arrivare e storia con fonti
        foreach (var group in (placesWithSheets ?? []).GroupBy(p => p.Type.Titolo))
        {
            sb.AppendLine();
            sb.AppendLine($"## {group.Key}: schede con storia e fonti");
            sb.AppendLine();
            foreach (var p in group.OrderBy(p => p.NomeCompleto))
                sb.AppendLine($"- [{p.NomeCompleto}]({baseUrl}{p.Url}): {p.Scheda!.MetaDescrizione}");
        }
        return sb.ToString();
    }
}

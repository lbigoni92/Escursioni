namespace Escursioni.Web.Models;

/// <summary>Zona con pagina dedicata: nome, slug, numero di escursioni e copertina (ultima escursione con foto).</summary>
public record ZoneSummary(string Tag, string Slug, int Count, string Description, string? Cover, List<Hike> Hikes);

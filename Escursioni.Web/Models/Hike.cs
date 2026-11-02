using System.Text.Json.Serialization;

namespace Escursioni.Web.Models;

/// <summary>
/// Escursione letta da Data/hikes/{wikiloc_id}.json (chiavi snake_case, vedi HikeRepository.JsonOptions).
/// </summary>
public class Hike
{
    /// <summary>Id progressivo assegnato al caricamento (non salvato nel JSON).</summary>
    [JsonIgnore]
    public int Id { get; set; }
    /// <summary>Slug dell'URL /escursioni/{slug}, univoco, assegnato da HikeRepository (non salvato nel JSON).</summary>
    [JsonIgnore]
    public string Slug { get; set; } = string.Empty;
    public long WikilocId { get; set; }
    public string Titolo { get; set; } = string.Empty;
    public string? Descrizione { get; set; }
    public string? DescrizioneHtml { get; set; }
    public string? Attivita { get; set; }
    public decimal? DistanzaKm { get; set; }
    public int? DislivelloM { get; set; }
    public int? QuotaMinM { get; set; }
    public int? QuotaMaxM { get; set; }
    public int? TempoMin { get; set; }
    [JsonPropertyName("tempo_hhmm")]
    public string? TempoHHMM { get; set; }
    public int? TempoMovMin { get; set; }
    [JsonPropertyName("tempo_mov_hhmm")]
    public string? TempoMovHHMM { get; set; }
    public int? CoordinateCount { get; set; }
    public string? Difficolta { get; set; }
    public string? TipoGiro { get; set; }
    public string? Superficie { get; set; }
    public string? Regione { get; set; }
    public string? Provincia { get; set; }
    public string? Comune { get; set; }
    public DateTime? DataEscursione { get; set; }
    public DateTime? DataRegistrato { get; set; }
    public DateTime? DataCaricato { get; set; }
    public DateTime? DataPubblicazione { get; set; }
    public string Url { get; set; } = string.Empty;
    public string? Bbox { get; set; }
    public decimal? CentroidLat { get; set; }
    public decimal? CentroidLon { get; set; }
    [JsonPropertyName("geom")]
    public string? GeomWkt { get; set; }
    [JsonPropertyName("sha256_payload")]
    public string? Sha256Payload { get; set; }
    public string? MetaDescrizione { get; set; }
    public string? TitoloSeo { get; set; }
    public string? Tag { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }

    public List<HikeMedia> Media { get; set; } = new();

    /// <summary>Slug scelto a mano (campo "slug"): se presente vince su quello calcolato dal titolo.</summary>
    [JsonPropertyName("slug")]
    public string? SlugFisso { get; set; }

    /// <summary>wikiloc_id delle altre volte in cui l'ho fatta: i loro JSON stanno in Data/hikes-varianti.</summary>
    public List<long> Varianti { get; set; } = new();

    /// <summary>Le altre volte caricate da Data/hikes-varianti, dalla più recente (assegnate da HikeRepository).</summary>
    [JsonIgnore]
    public List<Hike> AltreVolte { get; set; } = new();

    /// <summary>Per una variante: l'escursione principale nella cui pagina è mostrata.</summary>
    [JsonIgnore]
    public Hike? Principale { get; set; }

    /// <summary>HTML della sezione "Come arrivare e parcheggio" (paese, strada, parcheggio).</summary>
    public string? ComeArrivare { get; set; }

    /// <summary>1-2 fatti storici sul luogo, al massimo 100 parole, con le fonti in <see cref="Fonti"/>.</summary>
    public string? CennoStorico { get; set; }

    public List<Fonte> Fonti { get; set; } = new();

    /// <summary>Descrizione riscritta a mano: il WikilocExporter non sovrascrive descrizione_html.</summary>
    public bool DescrizioneRivista { get; set; }
}

/// <summary>Fonte citata da un cenno storico o da una pagina luogo.</summary>
public class Fonte
{
    public string Titolo { get; set; } = string.Empty;
    public string Url { get; set; } = string.Empty;
}

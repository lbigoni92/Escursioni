using System.ComponentModel.DataAnnotations.Schema;

namespace Escursioni.Web.Models;

public class Hike
{
    public int Id { get; set; }
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
    public string? TempoHHMM { get; set; }
    public int? TempoMovMin { get; set; }
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
    public string? GeomWkt { get; set; }
    public string? Sha256Payload { get; set; }
    public string? MetaDescrizione { get; set; }
    public string? TitoloSeo { get; set; }
    public string? Tag { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime UpdatedAt { get; set; }

    public List<HikeMedia> Media { get; set; } = new();
    public List<HikeTag> Tags { get; set; } = new();
}

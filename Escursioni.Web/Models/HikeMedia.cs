namespace Escursioni.Web.Models;

public class HikeMedia
{
    public int Id { get; set; }
    public int HikeId { get; set; }
    public string Tipo { get; set; } = string.Empty;
    public string PathRelativo { get; set; } = string.Empty;
    public int Ordine { get; set; }
    public int? Larghezza { get; set; }
    public int? Altezza { get; set; }
    public string? Sha256 { get; set; }
    public long? FilesizeBytes { get; set; }

    public Hike? Hike { get; set; }
}

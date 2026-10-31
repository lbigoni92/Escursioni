using System.Text.Json.Serialization;

namespace Escursioni.Web.Models;

public class HikeMedia
{
    public string Tipo { get; set; } = string.Empty;
    public string PathRelativo { get; set; } = string.Empty;
    public int Ordine { get; set; }
    public int? Larghezza { get; set; }
    public int? Altezza { get; set; }
    [JsonPropertyName("sha256")]
    public string? Sha256 { get; set; }
    public long? FilesizeBytes { get; set; }
}

namespace Escursioni.Web.Models;

public class HikeRegistry
{
    public long WikilocId { get; set; }
    public string? Url { get; set; }
    public DateTime? LastSeenAt { get; set; }
    public string? HashContenuti { get; set; }
}

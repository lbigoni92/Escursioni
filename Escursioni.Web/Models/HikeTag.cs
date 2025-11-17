namespace Escursioni.Web.Models;

public class HikeTag
{
    public int Id { get; set; }
    public int HikeId { get; set; }
    public string Tag { get; set; } = string.Empty;

    public Hike? Hike { get; set; }
}

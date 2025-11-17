using Escursioni.Web.Models;

namespace Escursioni.Web.Services;

public interface ISearchService
{
    Task<List<Hike>> SearchAsync(string? query);
}

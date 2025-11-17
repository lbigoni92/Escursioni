using Escursioni.Web.Data;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.EntityFrameworkCore;
using Xunit;

namespace Escursioni.Tests;

public class SearchServiceTests
{
    private EscursioniDbContext CreateContext()
    {
        var options = new DbContextOptionsBuilder<EscursioniDbContext>()
            .UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString())
            .Options;

        return new EscursioniDbContext(options);
    }

    [Fact]
    public async Task SearchAsync_FiltersByTitle()
    {
        using var ctx = CreateContext();

        ctx.Hikes.Add(new Hike { Titolo = "Monte Cavallo anello", Regione = "Toscana" });
        ctx.Hikes.Add(new Hike { Titolo = "Passeggiata al mare", Regione = "Toscana" });
        await ctx.SaveChangesAsync();

        var svc = new SearchService(ctx);

        var results = await svc.SearchAsync("Cavallo");

        Assert.Single(results);
        Assert.Equal("Monte Cavallo anello", results[0].Titolo);
    }
}

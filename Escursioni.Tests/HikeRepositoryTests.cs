using Escursioni.Web.Data;
using Escursioni.Web.Models;
using Escursioni.Web.Services;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace Escursioni.Tests;

public class HikeRepositoryTests
{
    private EscursioniDbContext CreateContext()
    {
        var options = new DbContextOptionsBuilder<EscursioniDbContext>()
            .UseInMemoryDatabase(databaseName: Guid.NewGuid().ToString())
            .Options;

        return new EscursioniDbContext(options);
    }

    [Fact]
    public async Task GetLatestAsync_Returns_MostRecentFirst()
    {
        using var ctx = CreateContext();

        ctx.Hikes.Add(new Hike
        {
            Titolo = "Giro vecchio",
            DataEscursione = DateTime.UtcNow.AddDays(-5)
        });
        ctx.Hikes.Add(new Hike
        {
            Titolo = "Giro recente",
            DataEscursione = DateTime.UtcNow
        });
        await ctx.SaveChangesAsync();

        var geocoding = new GeocodingService(new System.Net.Http.HttpClient());
        var repo = new HikeRepository(ctx, geocoding);

        var result = await repo.GetLatestAsync(10);

        Assert.Equal("Giro recente", result.First().Titolo);
    }
}

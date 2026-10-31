using Escursioni.Web.Models;
using Escursioni.Web.Services;
using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Xunit;

namespace Escursioni.Tests;

public class HikeRepositoryTests
{
    [Fact]
    public async Task GetLatestAsync_Returns_MostRecentFirst()
    {
        var repo = new HikeRepository(new[]
        {
            new Hike { Titolo = "Giro vecchio", DataEscursione = DateTime.UtcNow.AddDays(-5) },
            new Hike { Titolo = "Giro recente", DataEscursione = DateTime.UtcNow },
        });

        var result = await repo.GetLatestAsync(10);

        Assert.Equal("Giro recente", result.First().Titolo);
    }

    [Fact]
    public async Task GetBySlugAsync_FindsHike_ByTitleSlug()
    {
        var repo = new HikeRepository(new[] { new Hike { Titolo = "Pizzo d'Uccello da Vinca", WikilocId = 1 } });

        var hike = await repo.GetBySlugAsync("pizzo-d-uccello-da-vinca");

        Assert.NotNull(hike);
        Assert.Equal(1, hike!.WikilocId);
    }

    [Fact]
    public async Task DuplicateTitle_GetsMonthAndYear_FirstKeepsPlainSlug()
    {
        var repo = new HikeRepository(new[]
        {
            new Hike { Titolo = "Calambrone", WikilocId = 2, CreatedAt = new DateTime(2025, 11, 15), DataEscursione = new DateTime(2019, 3, 1) },
            new Hike { Titolo = "Calambrone", WikilocId = 1, CreatedAt = new DateTime(2025, 11, 12), DataEscursione = new DateTime(2023, 8, 1) },
            new Hike { Titolo = "Calambrone", WikilocId = 3, CreatedAt = new DateTime(2025, 11, 16), DataEscursione = new DateTime(2019, 3, 1) },
        });

        Assert.Equal(1, (await repo.GetBySlugAsync("calambrone"))!.WikilocId);
        Assert.Equal(2, (await repo.GetBySlugAsync("calambrone-marzo-2019"))!.WikilocId);
        Assert.Equal(3, (await repo.GetBySlugAsync("calambrone-3"))!.WikilocId);
    }

    [Fact]
    public void LoadFromDirectory_ReadsSnakeCaseJson()
    {
        var dir = Path.Combine(Path.GetTempPath(), "hikes-" + Guid.NewGuid());
        Directory.CreateDirectory(dir);
        try
        {
            File.WriteAllText(Path.Combine(dir, "42.json"), """
                {
                  "wikiloc_id": 42,
                  "titolo": "Monte Forato",
                  "distanza_km": 12.5,
                  "tempo_hhmm": "5:10",
                  "geom": "POINT(10.3 44.0)",
                  "data_escursione": "2025-05-01",
                  "data_caricato": "2025-05-18T00:00:00",
                  "tag": "Alpi Apuane",
                  "media": [ { "tipo": "cover", "path_relativo": "media/images/42/cover.jpg", "ordine": 0 } ]
                }
                """);

            var repo = HikeRepository.LoadFromDirectory(dir);
            var hike = Assert.Single(repo.All);

            Assert.Equal(42, hike.WikilocId);
            Assert.Equal(12.5m, hike.DistanzaKm);
            Assert.Equal("5:10", hike.TempoHHMM);
            Assert.Equal("POINT(10.3 44.0)", hike.GeomWkt);
            Assert.Equal(new DateTime(2025, 5, 1), hike.DataEscursione);
            Assert.Equal("media/images/42/cover.jpg", hike.Media.Single().PathRelativo);
        }
        finally
        {
            Directory.Delete(dir, true);
        }
    }

    [Fact]
    public void LoadFromDirectory_RealDataFiles_AreAllValid()
    {
        var dir = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "..", "Escursioni.Web", "Data", "hikes"));
        Assert.True(Directory.Exists(dir), $"Cartella non trovata: {dir}");

        var repo = HikeRepository.LoadFromDirectory(dir);

        Assert.Equal(Directory.GetFiles(dir, "*.json").Length, repo.All.Count);
        Assert.All(repo.All, h =>
        {
            Assert.True(h.WikilocId > 0);
            Assert.False(string.IsNullOrWhiteSpace(h.Titolo));
        });
        Assert.Equal(repo.All.Count, repo.All.Select(h => h.Slug).Distinct().Count());
    }
}

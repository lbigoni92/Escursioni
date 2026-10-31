using Escursioni.Web.Services;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using Xunit;

namespace Escursioni.Tests;

/// <summary>
/// Controlli sui file reali in Data/hikes e wwwroot/media: bloccano il deploy se WikilocExporter
/// o il MigrationEditor hanno scritto dati incoerenti (es. pagine HTML di Cloudflare al posto dei GPX).
/// </summary>
public class DataIntegrityTests
{
    private static readonly string WebDir = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "..", "Escursioni.Web"));
    private static readonly HikeRepository Repo = HikeRepository.LoadFromDirectory(Path.Combine(WebDir, "Data", "hikes"));
    private static string WebRoot(string relative) => Path.Combine(WebDir, "wwwroot", relative);

    private static void AssertNoFailures(List<string> failures)
        => Assert.True(failures.Count == 0, string.Join("\n", failures.Take(30)));

    [Fact]
    public void Tags_AreKnownZones()
    {
        var failures = Repo.All
            .Where(h => !string.IsNullOrEmpty(h.Tag) && !TagHelper.IsKnown(h.Tag))
            .Select(h => $"{h.WikilocId}: zona \"{h.Tag}\" senza pagina (vedi TagHelper)")
            .ToList();
        AssertNoFailures(failures);
    }

    /// <summary>
    /// Titoli SEO adatti ai motori di ricerca: interi nel &lt;title&gt; (SeoService li taglia a 57 caratteri
    /// più " | Escursioni"), unici, senza troncamenti, a capo o parole tutte maiuscole.
    /// </summary>
    [Fact]
    public void SeoTitles_FollowSearchEngineRules()
    {
        var withTitle = Repo.All.Where(h => !string.IsNullOrWhiteSpace(h.TitoloSeo)).ToList();
        var failures = new List<string>();
        foreach (var h in withTitle)
        {
            var t = h.TitoloSeo!;
            if (t.Length > 57) failures.Add($"{h.WikilocId}: {t.Length} caratteri (max 57): {t}");
            if (t.Length < 20) failures.Add($"{h.WikilocId}: troppo corto: {t}");
            if (t.EndsWith("...") || t.EndsWith('…')) failures.Add($"{h.WikilocId}: titolo troncato: {t}");
            if (t.Contains('\n') || t.Contains('\r')) failures.Add($"{h.WikilocId}: contiene un a capo");
            if (System.Text.RegularExpressions.Regex.IsMatch(t, @"\b\p{Lu}{5,}\b")) failures.Add($"{h.WikilocId}: parola tutta maiuscola: {t}");
        }
        failures.AddRange(withTitle
            .GroupBy(h => h.TitoloSeo!.Trim().ToLowerInvariant())
            .Where(g => g.Count() > 1)
            .Select(g => $"titolo duplicato in {string.Join(", ", g.Select(h => h.WikilocId))}: {g.First().TitoloSeo}"));
        AssertNoFailures(failures);
    }

    [Fact]
    public void Altitudes_AreConsistent()
    {
        var failures = Repo.All
            .Where(h => h.QuotaMinM.HasValue && h.QuotaMaxM.HasValue && h.QuotaMaxM < h.QuotaMinM)
            .Select(h => $"{h.WikilocId}: quota max {h.QuotaMaxM} < quota min {h.QuotaMinM}")
            .ToList();
        // Il vecchio parser leggeva "1.669 m" come 1: un dislivello alto con quota max a una cifra è quel bug
        failures.AddRange(Repo.All
            .Where(h => h.DislivelloM > 300 && h.QuotaMaxM is < 10)
            .Select(h => $"{h.WikilocId}: dislivello {h.DislivelloM} ma quota max {h.QuotaMaxM}"));
        AssertNoFailures(failures);
    }

    [Fact]
    public void EveryHike_HasAValidGpxTrack()
    {
        var failures = new List<string>();
        foreach (var hike in Repo.All)
        {
            var path = WebRoot(Path.Combine("media", "gpx", $"{hike.WikilocId}.gpx"));
            if (!File.Exists(path)) { failures.Add($"{hike.WikilocId}: GPX mancante"); continue; }
            try
            {
                var points = XDocument.Load(path).Descendants().Count(e => e.Name.LocalName is "trkpt" or "rtept");
                if (points == 0) failures.Add($"{hike.WikilocId}: GPX senza punti");
            }
            catch (System.Xml.XmlException)
            {
                failures.Add($"{hike.WikilocId}: il GPX non è XML (pagina di blocco di Cloudflare?)");
            }
        }
        AssertNoFailures(failures);
    }

    [Fact]
    public void EveryPhoto_IsARealImage_WithWebpVariants()
    {
        var failures = new List<string>();
        foreach (var media in Repo.All.SelectMany(h => h.Media))
        {
            var path = WebRoot(media.PathRelativo);
            if (!File.Exists(path)) { failures.Add($"{media.PathRelativo}: mancante"); continue; }

            // Wikiloc a volte serve WebP con estensione .jpg: va bene, i browser lo leggono comunque
            var header = new byte[12];
            using (var stream = File.OpenRead(path))
                stream.ReadExactly(header);
            var isJpeg = header is [0xFF, 0xD8, 0xFF, ..];
            var isPng = header is [0x89, 0x50, 0x4E, 0x47, ..];
            var isWebp = System.Text.Encoding.ASCII.GetString(header, 8, 4) == "WEBP";
            if (!isJpeg && !isPng && !isWebp)
                failures.Add($"{media.PathRelativo}: non è un'immagine (pagina di blocco di Cloudflare?)");

            foreach (var variant in new[] { ImageHelper.ThumbPath(media.PathRelativo), ImageHelper.GalleryPath(media.PathRelativo) })
                if (!File.Exists(WebRoot(variant!)))
                    failures.Add($"{variant}: variante WebP mancante");
        }
        AssertNoFailures(failures);
    }

    [Fact]
    public void FileName_MatchesWikilocId()
    {
        var ids = Repo.All.Select(h => h.WikilocId.ToString()).ToHashSet();
        var failures = Directory.GetFiles(Path.Combine(WebDir, "Data", "hikes"), "*.json")
            .Select(f => Path.GetFileNameWithoutExtension(f))
            .Where(name => !ids.Contains(name))
            .Select(name => $"{name}.json: il nome non corrisponde a nessun wikiloc_id")
            .ToList();
        AssertNoFailures(failures);
    }
}

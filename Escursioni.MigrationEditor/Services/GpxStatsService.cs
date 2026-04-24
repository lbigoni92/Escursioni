using System.Globalization;
using System.Xml.Linq;

namespace Escursioni.MigrationEditor.Services;

public record GpxStats(
    double DistanzaKm,
    int DislivelloM,
    int QuotaMinM,
    int QuotaMaxM,
    int TempoMovMin,
    string TempoMovHhmm,
    int TempoMin,
    string TempoHhmm
);

public class GpxStatsService
{
    private readonly string _gpxDir;

    // Moving time: t = d/v + gain/k
    private const double MovingSpeedKmH = 4.0;
    private const double MovingClimbRateMH = 500.0;

    // Total time adds ~15% for micro-breaks
    private const double TotalTimeMultiplier = 1.15;

    // Threshold to consider recalculated value significantly different
    private const double SignificantDiffThreshold = 0.20;

    public GpxStatsService(string gpxDir)
    {
        _gpxDir = gpxDir;
    }

    public GpxStats? Calculate(int wiklocId)
    {
        var gpxPath = Path.Combine(_gpxDir, $"{wiklocId}.gpx");
        if (!File.Exists(gpxPath)) return null;

        var doc = XDocument.Load(gpxPath);
        var ns = doc.Root?.GetDefaultNamespace() ?? XNamespace.None;

        var points = doc.Descendants(ns + "trkpt")
            .Select(pt =>
            {
                var eleEl = pt.Element(ns + "ele");
                return new
                {
                    Lat = double.Parse(pt.Attribute("lat")!.Value, CultureInfo.InvariantCulture),
                    Lon = double.Parse(pt.Attribute("lon")!.Value, CultureInfo.InvariantCulture),
                    Ele = eleEl != null
                        ? double.Parse(eleEl.Value, CultureInfo.InvariantCulture)
                        : (double?)null
                };
            })
            .ToList();

        if (points.Count < 2) return null;

        double totalDistKm = 0;
        double elevGain = 0;
        double eleMin = double.MaxValue;
        double eleMax = double.MinValue;

        for (int i = 0; i < points.Count; i++)
        {
            if (points[i].Ele is { } ele)
            {
                eleMin = Math.Min(eleMin, ele);
                eleMax = Math.Max(eleMax, ele);
            }

            if (i > 0)
            {
                totalDistKm += Haversine(
                    points[i - 1].Lat, points[i - 1].Lon,
                    points[i].Lat, points[i].Lon);

                if (points[i].Ele is { } curEle && points[i - 1].Ele is { } prevEle)
                {
                    var diff = curEle - prevEle;
                    if (diff > 0) elevGain += diff;
                }
            }
        }

        // Time estimation: t = d/v + gain/k
        var movingTimeH = totalDistKm / MovingSpeedKmH + elevGain / MovingClimbRateMH;
        var totalTimeH = movingTimeH * TotalTimeMultiplier;

        var movMin = (int)Math.Round(movingTimeH * 60);
        var totMin = (int)Math.Round(totalTimeH * 60);

        return new GpxStats(
            DistanzaKm: Math.Round(totalDistKm, 2),
            DislivelloM: (int)Math.Round(elevGain),
            QuotaMinM: eleMin == double.MaxValue ? 0 : (int)Math.Round(eleMin),
            QuotaMaxM: eleMax == double.MinValue ? 0 : (int)Math.Round(eleMax),
            TempoMovMin: movMin,
            TempoMovHhmm: $"{movMin / 60}:{movMin % 60:D2}",
            TempoMin: totMin,
            TempoHhmm: $"{totMin / 60}:{totMin % 60:D2}"
        );
    }

    /// <summary>
    /// Returns true if the calculated value differs from the current value by more than the threshold (20%).
    /// </summary>
    public static bool DiffersSignificantly(double current, double calculated)
    {
        if (current == 0) return calculated != 0;
        return Math.Abs(calculated - current) / Math.Abs(current) > SignificantDiffThreshold;
    }

    private static double Haversine(double lat1, double lon1, double lat2, double lon2)
    {
        const double R = 6371.0; // Earth radius in km
        var dLat = (lat2 - lat1) * Math.PI / 180;
        var dLon = (lon2 - lon1) * Math.PI / 180;
        var a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
                Math.Cos(lat1 * Math.PI / 180) * Math.Cos(lat2 * Math.PI / 180) *
                Math.Sin(dLon / 2) * Math.Sin(dLon / 2);
        var c = 2 * Math.Atan2(Math.Sqrt(a), Math.Sqrt(1 - a));
        return R * c;
    }
}

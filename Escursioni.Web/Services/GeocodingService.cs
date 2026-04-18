using System.Collections.Concurrent;
using System.Text.Json;

namespace Escursioni.Web.Services;

public record GeoPoint(decimal Lat, decimal Lon);

public class GeocodingService
{
    private readonly HttpClient _http;
    private readonly ConcurrentDictionary<string, GeoPoint?> _cache = new(StringComparer.OrdinalIgnoreCase);

    public GeocodingService(HttpClient http)
    {
        _http = http;
    }

    /// <summary>
    /// Geocodifica un nome di comune italiano tramite Nominatim (OpenStreetMap).
    /// I risultati vengono messi in cache per evitare chiamate ripetute.
    /// </summary>
    public async Task<GeoPoint?> GeocodeAsync(string comuneName)
    {
        if (string.IsNullOrWhiteSpace(comuneName))
            return null;

        var key = comuneName.Trim();
        if (_cache.TryGetValue(key, out var cached))
            return cached;

        try
        {
            var encoded = Uri.EscapeDataString(key);
            // Usa query strutturata con city= per evitare che Nominatim restituisca
            // la provincia invece del comune (es. Livorno provincia vs Livorno città)
            var url = $"https://nominatim.openstreetmap.org/search?city={encoded}&country=Italia&format=jsonv2&limit=1&accept-language=it";

            var request = new HttpRequestMessage(HttpMethod.Get, url);
            request.Headers.Add("User-Agent", "Escursioni.Web/1.0");

            var response = await _http.SendAsync(request);
            if (!response.IsSuccessStatusCode)
            {
                _cache[key] = null;
                return null;
            }

            var json = await response.Content.ReadAsStringAsync();
            using var doc = JsonDocument.Parse(json);
            var arr = doc.RootElement;

            if (arr.GetArrayLength() == 0)
            {
                _cache[key] = null;
                return null;
            }

            var first = arr[0];
            if (first.TryGetProperty("lat", out var latProp) &&
                first.TryGetProperty("lon", out var lonProp) &&
                decimal.TryParse(latProp.GetString(), System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out var lat) &&
                decimal.TryParse(lonProp.GetString(), System.Globalization.NumberStyles.Any, System.Globalization.CultureInfo.InvariantCulture, out var lon))
            {
                var point = new GeoPoint(lat, lon);
                _cache[key] = point;
                return point;
            }

            _cache[key] = null;
            return null;
        }
        catch
        {
            _cache[key] = null;
            return null;
        }
    }
}

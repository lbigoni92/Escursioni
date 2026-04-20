// Mappa OpenStreetMap per parcheggio/partenza.
// Legge direttamente il GPX e usa il primo waypoint "Parcheggio",
// con fallback al primo punto traccia se il waypoint non e' presente.

document.addEventListener('DOMContentLoaded', function() {
    if (!window.parkingMapConfig) return;
    var el = document.getElementById(window.parkingMapConfig.elementId);
    if (!el) return;

    var googleMapsLink = window.parkingMapConfig.linkElementId
        ? document.getElementById(window.parkingMapConfig.linkElementId)
        : null;

    function showFallback(msg) {
        el.style.height = 'auto';
        el.innerHTML = '<p style="color:#9ca3af;font-size:0.9rem;">' + msg + '</p>';
    }

    var map = L.map(window.parkingMapConfig.elementId);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 18,
        attribution: '\u00a9 OpenStreetMap contributors'
    }).addTo(map);

    var defaultIcon = L.icon({
        iconUrl: 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-blue.png',
        shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/images/marker-shadow.png',
        iconSize: [25, 41],
        iconAnchor: [12, 41],
        popupAnchor: [1, -34],
        shadowSize: [41, 41]
    });

    fetch(window.parkingMapConfig.gpxUrl)
        .then(function(response) {
            if (!response.ok) {
                throw new Error('Impossibile caricare il GPX (HTTP ' + response.status + ')');
            }
            return response.text();
        })
        .then(function(gpxText) {
            // Quick text check: reject HTML served as GPX (e.g. Cloudflare block pages)
            var trimmed = gpxText.trimStart();
            if (trimmed.startsWith('<!') || trimmed.startsWith('<html')) {
                throw new Error('Risposta HTML, non GPX');
            }
            var xml = new DOMParser().parseFromString(gpxText, 'application/xml');
            if (xml.getElementsByTagName('parsererror').length) {
                throw new Error('Risposta non e\' un GPX valido');
            }
            var waypoint = xml.getElementsByTagName('wpt')[0];
            var trackPoint = xml.getElementsByTagName('trkpt')[0];
            var point = waypoint || trackPoint;

            if (!point) {
                throw new Error('Nessuna coordinata trovata nel GPX');
            }

            var lat = parseFloat(point.getAttribute('lat'));
            var lon = parseFloat(point.getAttribute('lon'));
            var nameNode = point.getElementsByTagName('name')[0];
            var label = nameNode && nameNode.textContent ? nameNode.textContent : 'Parcheggio / Partenza';
            var googleMapsUrl = 'https://www.google.com/maps?q=' + lat + ',' + lon;

            if (Number.isNaN(lat) || Number.isNaN(lon)) {
                throw new Error('Coordinate GPX non valide');
            }

            var marker = L.marker([lat, lon], { icon: defaultIcon }).addTo(map);
            marker.bindPopup(
                label +
                '<br>' + lat.toFixed(6) + ', ' + lon.toFixed(6) +
                '<br><a href="' + googleMapsUrl + '" target="_blank" rel="noopener">Apri su Google Maps</a>'
            ).openPopup();
            map.setView([lat, lon], 15);

            if (googleMapsLink) {
                googleMapsLink.href = googleMapsUrl;
                googleMapsLink.style.display = 'inline-flex';
            }
        })
        .catch(function(error) {
            console.warn('Mappa parcheggio non disponibile:', error.message);
            map.remove();
            showFallback('Posizione parcheggio non disponibile.');
        });
});

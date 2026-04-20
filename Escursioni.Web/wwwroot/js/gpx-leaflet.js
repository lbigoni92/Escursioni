// Carica e disegna una traccia GPX su una mappa Leaflet (OpenStreetMap)
// Richiede leaflet.js, leaflet.css e leaflet-gpx.js

document.addEventListener('DOMContentLoaded', function() {
    if (!window.gpxMapConfig) return;
    var el = document.getElementById(window.gpxMapConfig.elementId);
    if (!el) return;

    function showFallback(msg) {
        el.style.height = 'auto';
        el.innerHTML = '<p style="color:#9ca3af;font-size:0.9rem;">' + msg + '</p>';
    }

    // Pre-validate: fetch the GPX to make sure it exists and is XML
    // before handing it to L.GPX (which crashes on null responseXML).
    fetch(window.gpxMapConfig.gpxUrl)
        .then(function(resp) {
            if (!resp.ok) throw new Error('HTTP ' + resp.status);
            return resp.text();
        })
        .then(function(gpxText) {
            // Quick text check: reject HTML served as GPX (e.g. Cloudflare block pages)
            var trimmed = gpxText.trimStart();
            if (trimmed.startsWith('<!') || trimmed.startsWith('<html')) {
                throw new Error('Risposta HTML, non GPX');
            }
            var xml = new DOMParser().parseFromString(gpxText, 'application/xml');
            if (xml.getElementsByTagName('parsererror').length ||
                (!xml.getElementsByTagName('trk').length &&
                 !xml.getElementsByTagName('rte').length &&
                 !xml.getElementsByTagName('wpt').length)) {
                throw new Error('GPX non valido');
            }

            var map = L.map(window.gpxMapConfig.elementId);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 18,
                attribution: '\u00a9 OpenStreetMap contributors'
            }).addTo(map);

            new L.GPX(window.gpxMapConfig.gpxUrl, {
                async: true,
                marker_options: {
                    startIconUrl: 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-green.png',
                    endIconUrl: 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-red.png',
                    shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/images/marker-shadow.png',
                    wptIconUrls: {
                        '': 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-blue.png'
                    }
                }
            }).on('loaded', function(e) {
                map.fitBounds(e.target.getBounds());
            }).on('error', function() {
                map.remove();
                showFallback('Traccia GPX non disponibile.');
            }).addTo(map);
        })
        .catch(function(err) {
            console.warn('GPX non disponibile:', err.message);
            showFallback('Traccia GPX non disponibile.');
        });
});

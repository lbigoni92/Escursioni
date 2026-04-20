// Carica e disegna una traccia GPX su una mappa Leaflet (OpenStreetMap)
// Richiede leaflet.js, leaflet.css e leaflet-gpx.js

document.addEventListener('DOMContentLoaded', function() {
    if (window.gpxMapConfig) {
        var el = document.getElementById(window.gpxMapConfig.elementId);
        if (!el) return;
        var map = L.map(window.gpxMapConfig.elementId);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 18,
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);
        var gpx = new L.GPX(window.gpxMapConfig.gpxUrl, {
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
        }).on('error', function(e) {
            console.warn('GPX non disponibile:', e);
            map.remove();
            el.style.height = 'auto';
            el.innerHTML = '<p style="color:#9ca3af;font-size:0.9rem;">Traccia GPX non disponibile.</p>';
        }).addTo(map);
    }
});

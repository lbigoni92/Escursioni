// Carica e disegna una traccia GPX su una mappa Leaflet (OpenStreetMap)
// Richiede leaflet.js, leaflet.css e leaflet-gpx.js

document.addEventListener('DOMContentLoaded', function() {
    if (!window.gpxMapConfig) return;
    var el = document.getElementById(window.gpxMapConfig.elementId);
    if (!el) return;

    function showFallback(msg) {
        el.style.height = 'auto';
        el.innerHTML = '<p class="panel-note">' + msg + '</p>';
    }

    // Colore della traccia preso dalla palette del sito (--primary del tema attivo)
    var trackColor = getComputedStyle(document.body).getPropertyValue('--primary').trim() || '#2a7a51';

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

            // Altre volte in cui ho fatto l'escursione: sotto la principale, senza marker.
            // Le tracce arrivano in ordine sparso: a ogni caricamento la principale torna in primo piano.
            var main = null;
            var bounds = null;
            function extend(b) {
                if (!b || !b.isValid()) return;
                bounds = bounds ? bounds.extend(b) : L.latLngBounds(b.getSouthWest(), b.getNorthEast());
                map.fitBounds(bounds);
            }
            (window.gpxMapConfig.extraTracks || []).forEach(function(t) {
                new L.GPX(t.url, {
                    async: true,
                    gpx_options: { parseElements: ['track', 'route'] },
                    polyline_options: { color: t.color, weight: 3, opacity: 0.85 },
                    marker_options: { startIconUrl: null, endIconUrl: null, shadowUrl: null }
                }).on('loaded', function(e) {
                    extend(e.target.getBounds());
                    if (main) main.bringToFront();
                }).addTo(map);
            });

            // Il GPX è già stato scaricato per controllarlo: si passa il testo, senza riscaricarlo
            main = new L.GPX(gpxText, {
                async: true,
                polyline_options: { color: trackColor, weight: 4, opacity: 0.9 },
                marker_options: {
                    startIconUrl: '/images/markers/marker-icon-green.png',
                    endIconUrl: '/images/markers/marker-icon-red.png',
                    shadowUrl: '/images/markers/marker-shadow.png',
                    // Punti foto e note: piccoli pallini, per non coprire la traccia
                    wptIcons: {
                        '': L.divIcon({ className: 'gpx-wpt', iconSize: [12, 12] })
                    }
                }
            }).on('loaded', function(e) {
                extend(e.target.getBounds());
                e.target.bringToFront();
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

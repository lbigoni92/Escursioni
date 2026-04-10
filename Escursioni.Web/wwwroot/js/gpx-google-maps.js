// Carica e disegna una traccia GPX su Google Maps
// Richiede l'inclusione delle Google Maps JS API e di togeojson.js

function initMapWithGpx(gpxUrl, mapElementId) {
    const map = new google.maps.Map(document.getElementById(mapElementId), {
        zoom: 13,
        center: { lat: 44.0, lng: 10.0 }, // Default, sarà aggiornato
        mapTypeId: 'terrain',
    });

    fetch(gpxUrl)
        .then(response => response.text())
        .then(gpxText => {
            const parser = new DOMParser();
            const gpxDoc = parser.parseFromString(gpxText, 'application/xml');
            const tracks = gpxDoc.getElementsByTagName('trkseg');
            let path = [];
            for (let i = 0; i < tracks.length; i++) {
                const pts = tracks[i].getElementsByTagName('trkpt');
                for (let j = 0; j < pts.length; j++) {
                    const lat = parseFloat(pts[j].getAttribute('lat'));
                    const lng = parseFloat(pts[j].getAttribute('lon'));
                    path.push({ lat, lng });
                }
            }
            if (path.length > 0) {
                const polyline = new google.maps.Polyline({
                    path: path,
                    geodesic: true,
                    strokeColor: '#FF0000',
                    strokeOpacity: 1.0,
                    strokeWeight: 3
                });
                polyline.setMap(map);
                map.setCenter(path[0]);
                map.fitBounds(getBounds(path));
            }
        });
}

function getBounds(path) {
    const bounds = new google.maps.LatLngBounds();
    path.forEach(p => bounds.extend(p));
    return bounds;
}

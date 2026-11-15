// Service worker: le schede già aperte restano consultabili anche senza campo.
// - Pagine: prima la rete (contenuto sempre aggiornato), se manca la connessione la copia salvata.
// - CSS/JS con ?v=: dalla cache (l'URL cambia a ogni modifica).
// - Foto, GPX e riquadri della mappa: dalla cache se ci sono, altrimenti dalla rete e poi salvati.
// Ogni cache ha un limite di elementi: le più vecchie vengono tolte.
var VERSION = 'v1';
var PAGES = 'pagine-' + VERSION;
var STATIC = 'statici-' + VERSION;
var MEDIA = 'media-' + VERSION;
var TILES = 'mappa-' + VERSION;
var LIMITS = {};
LIMITS[PAGES] = 60;
LIMITS[MEDIA] = 400;
LIMITS[TILES] = 600;

var OFFLINE_HTML = '<!doctype html><html lang="it"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">' +
    '<title>Sei offline</title><body style="font-family:system-ui,sans-serif;background:#0f1a15;color:#e9f0eb;padding:2rem;line-height:1.5">' +
    '<h1>Sei offline</h1><p>Questa pagina non è tra quelle salvate sul telefono. Le schede che hai già aperto con la connessione restano consultabili anche senza campo.</p>' +
    '<p><a href="/" style="color:#5cc98d">Torna alla home</a></p></body></html>';

self.addEventListener('install', function (e) {
    self.skipWaiting();
    e.waitUntil(caches.open(PAGES).then(function (c) { return c.add('/').catch(function () { }); }));
});

self.addEventListener('activate', function (e) {
    e.waitUntil(caches.keys().then(function (keys) {
        return Promise.all(keys.filter(function (k) { return [PAGES, STATIC, MEDIA, TILES].indexOf(k) < 0; })
            .map(function (k) { return caches.delete(k); }));
    }).then(function () { return self.clients.claim(); }));
});

function trim(cacheName) {
    var max = LIMITS[cacheName];
    if (!max) return;
    caches.open(cacheName).then(function (c) {
        c.keys().then(function (keys) {
            for (var i = 0; i < keys.length - max; i++) c.delete(keys[i]);
        });
    });
}

function put(cacheName, req, res) {
    if (!res || (!res.ok && res.type !== 'opaque')) return res;
    var copy = res.clone();
    caches.open(cacheName).then(function (c) { return c.put(req, copy); }).then(function () { trim(cacheName); });
    return res;
}

function networkFirst(req) {
    return fetch(req).then(function (res) { return put(PAGES, req, res); }).catch(function () {
        return caches.match(req).then(function (hit) {
            return hit || new Response(OFFLINE_HTML, { headers: { 'Content-Type': 'text/html; charset=utf-8' } });
        });
    });
}

function cacheFirst(cacheName, req) {
    return caches.match(req).then(function (hit) {
        return hit || fetch(req).then(function (res) { return put(cacheName, req, res); });
    });
}

self.addEventListener('fetch', function (e) {
    var req = e.request;
    if (req.method !== 'GET') return;
    var url = new URL(req.url);

    if (req.mode === 'navigate') {
        e.respondWith(networkFirst(req));
        return;
    }
    if (url.origin === self.location.origin) {
        if (/^\/(css|js)\//.test(url.pathname) || url.pathname === '/data/search-index.json') {
            e.respondWith(url.search ? cacheFirst(STATIC, req) : fetch(req).then(function (r) { return put(STATIC, req, r); }).catch(function () { return caches.match(req); }));
        } else if (/^\/(media|images)\//.test(url.pathname)) {
            e.respondWith(cacheFirst(MEDIA, req));
        }
        return;
    }
    // Leaflet e plugin dai CDN, riquadri della mappa di OpenStreetMap
    if (/tile\.openstreetmap\.org$/.test(url.hostname)) {
        e.respondWith(cacheFirst(TILES, req));
    } else if (url.hostname === 'unpkg.com' || url.hostname === 'cdnjs.cloudflare.com') {
        e.respondWith(cacheFirst(STATIC, req));
    }
});

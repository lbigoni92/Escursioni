// Ricerca escursioni lato browser.
// Legge /data/search-index.json (generato dall'export statico) e applica gli stessi
// filtri/ordinamenti che prima faceva il server: parametri URL Q, Comune, RaggioKm,
// Difficolta, OrdinaPer, PageNumber.
(function () {
    var PAGE_SIZE = 8;
    var summaryEl = document.getElementById('search-summary');
    var resultsEl = document.getElementById('search-results');
    var paginationEl = document.getElementById('search-pagination');
    if (!resultsEl) return;

    var params = new URLSearchParams(window.location.search);
    var q = (params.get('Q') || '').trim();
    var comune = (params.get('Comune') || '').trim();
    var difficolta = (params.get('Difficolta') || '').trim();
    var ordinaPer = params.get('OrdinaPer') || 'data_desc';
    var raggioKm = parseInt(params.get('RaggioKm'), 10) || 0;
    var pageNumber = Math.max(1, parseInt(params.get('PageNumber'), 10) || 1);

    function esc(s) {
        var d = document.createElement('div');
        d.appendChild(document.createTextNode(s == null ? '' : String(s)));
        return d.innerHTML;
    }

    function lower(s) { return (s || '').toLowerCase(); }

    // Geocodifica del comune via Nominatim (OpenStreetMap), come faceva il server
    function geocode(name) {
        var url = 'https://nominatim.openstreetmap.org/search?city=' + encodeURIComponent(name) +
            '&country=Italia&format=jsonv2&limit=1&accept-language=it';
        return fetch(url)
            .then(function (r) { return r.ok ? r.json() : []; })
            .then(function (arr) {
                if (!arr || !arr.length) return null;
                var lat = parseFloat(arr[0].lat), lon = parseFloat(arr[0].lon);
                return isNaN(lat) || isNaN(lon) ? null : { lat: lat, lon: lon };
            })
            .catch(function () { return null; });
    }

    function byNumberDesc(key) {
        return function (a, b) {
            var x = a[key], y = b[key];
            if (x == null && y == null) return 0;
            if (x == null) return 1;
            if (y == null) return -1;
            return y - x;
        };
    }

    function compareText(a, b) { return (a || '').localeCompare(b || '', 'it'); }

    function sortItems(items, order, center) {
        var sorters = {
            data_asc: function (a, b) { return a.data < b.data ? -1 : a.data > b.data ? 1 : 0; },
            nome_asc: function (a, b) { return compareText(a.titolo, b.titolo); },
            nome_desc: function (a, b) { return compareText(b.titolo, a.titolo); },
            comune_asc: function (a, b) { return compareText(a.comune, b.comune) || compareText(a.provincia, b.provincia); },
            dislivello_desc: byNumberDesc('dislivello'),
            distanza_desc: byNumberDesc('km'),
            data_desc: function (a, b) { return a.data < b.data ? 1 : a.data > b.data ? -1 : 0; }
        };
        if (order === 'distanza_asc' && center) {
            return items.sort(function (a, b) {
                var da = Math.pow(a.lat - center.lat, 2) + Math.pow(a.lon - center.lon, 2);
                var db = Math.pow(b.lat - center.lat, 2) + Math.pow(b.lon - center.lon, 2);
                return da - db;
            });
        }
        return items.sort(sorters[order] || sorters.data_desc);
    }

    function searchByComune(all) {
        var radius = raggioKm > 0 ? raggioKm : 20;
        var comuneLower = lower(comune);
        return geocode(comune).then(function (center) {
            if (!center) {
                // Fallback: centroide medio delle escursioni di quel comune
                var same = all.filter(function (h) { return lower(h.comune) === comuneLower && h.lat != null && h.lon != null; });
                if (same.length) {
                    center = {
                        lat: same.reduce(function (s, h) { return s + h.lat; }, 0) / same.length,
                        lon: same.reduce(function (s, h) { return s + h.lon; }, 0) / same.length
                    };
                }
            }
            if (!center) {
                return { items: sortItems(all.filter(function (h) { return lower(h.comune) === comuneLower; }), 'data_desc'), radius: radius };
            }
            var dLat = radius / 111;
            var dLon = radius / (111 * Math.cos(center.lat * Math.PI / 180));
            var items = all.filter(function (h) {
                return h.lat != null && h.lon != null &&
                    Math.abs(h.lat - center.lat) <= dLat && Math.abs(h.lon - center.lon) <= dLon;
            });
            return { items: sortItems(items, 'distanza_asc', center), radius: radius };
        });
    }

    function searchByText(all) {
        var qLower = lower(q);
        var items = all.filter(function (h) {
            if (difficolta && h.difficolta !== difficolta) return false;
            if (!qLower) return true;
            return lower(h.titolo).indexOf(qLower) >= 0 ||
                lower(h.descrizione).indexOf(qLower) >= 0 ||
                lower(h.comune).indexOf(qLower) >= 0 ||
                lower(h.provincia).indexOf(qLower) >= 0 ||
                lower(h.regione).indexOf(qLower) >= 0;
        });
        return Promise.resolve({ items: sortItems(items, ordinaPer), radius: 0 });
    }

    // Stessa classe di HikeDisplay.DifficultyClass
    function difficultyClass(d) {
        switch ((d || '').trim().toLowerCase()) {
            case 'facile': return 'diff-easy';
            case 'medio': return 'diff-medium';
            case 'difficile': return 'diff-hard';
            case 'molto difficile':
            case 'per esperti': return 'diff-expert';
            default: return 'diff-unknown';
        }
    }

    // Stesse regole di HikeDisplay.PlainText: niente titoli né sintassi Markdown nell'anteprima
    function plainText(s) {
        return (s || '')
            .replace(/^\s*#{1,6}\s.*$/gm, '')
            .replace(/\[([^\]]*)\]\([^)]*\)/g, '$1')
            .replace(/(\*\*|__|\*|`)/g, '')
            .replace(/^\s*[-+]\s+/gm, '')
            .replace(/\s+/g, ' ')
            .trim();
    }

    // Stessa struttura di Pages/Shared/_HikeCard.cshtml
    function card(h) {
        var url = '/escursioni/' + h.slug;
        var title = h.titoloSeo || h.titolo;
        var html = '<article class="hike-card"><div class="hike-card-media">';
        if (h.cover) {
            html += '<picture>' +
                (h.thumb ? '<source srcset="/' + esc(h.thumb) + '" type="image/webp" />' : '') +
                '<img src="/' + esc(h.cover) + '" alt="' + esc(title) + '" loading="lazy" decoding="async" width="400" height="225" />' +
                '</picture>';
        } else {
            html += '<div class="hike-card-placeholder" role="img" aria-label="Foto non disponibile per ' + esc(title) + '">' +
                '<svg viewBox="0 0 120 60" aria-hidden="true"><path d="M0 60 L32 22 L48 38 L70 12 L120 60 Z" /><circle cx="94" cy="16" r="6" /></svg>' +
                '<span>Foto in arrivo</span></div>';
        }
        if (h.zona) html += '<span class="hike-card-zone">' + esc(h.zona) + '</span>';
        html += '</div>';

        var meta = '';
        if (h.luogo) meta += '<span>' + esc(h.luogo) + '</span>';
        if (h.dataEscursione) meta += '<time>' + esc(h.dataEscursione) + '</time>';
        var desc = plainText(h.descrizione);
        if (desc.length > 140) desc = desc.substring(0, 140).trim() + '…';
        var stats = '';
        if (h.km != null) stats += '<li><span class="stat-label">Distanza</span> ' + Number(h.km).toFixed(1) + ' km</li>';
        if (h.dislivello != null) stats += '<li><span class="stat-label">Dislivello</span> +' + h.dislivello + ' m</li>';
        if (h.difficolta) stats += '<li class="badge ' + difficultyClass(h.difficolta) + '"><span class="stat-label">Difficoltà</span> ' + esc(h.difficolta) + '</li>';

        html += '<div class="hike-card-body">' +
            '<h2 class="hike-card-title"><a href="' + url + '" class="stretched-link">' + esc(title) + '</a></h2>' +
            '<p class="hike-card-meta">' + meta + '</p>' +
            '<p class="hike-card-desc">' + esc(desc) + '</p>' +
            '</div>' +
            '<ul class="hike-card-stats" aria-label="Dati principali">' + stats + '</ul></article>';
        return html;
    }

    function pageUrl(page) {
        var p = new URLSearchParams(window.location.search);
        p.set('PageNumber', page);
        return '/ricerca?' + p.toString();
    }

    function render(result) {
        var total = result.items.length;
        var totalPages = Math.ceil(total / PAGE_SIZE);
        var page = totalPages === 0 ? 1 : Math.min(pageNumber, totalPages);

        if (total > 0) {
            var s = 'Trovate ' + total + ' escursioni.';
            if (comune) {
                s += ' Località: <strong>' + esc(comune) + '</strong>';
                if (result.radius > 0) s += ' (entro ' + result.radius + ' km)';
                s += '.';
            }
            if (difficolta) s += ' Difficoltà: <strong>' + esc(difficolta) + '</strong>.';
            summaryEl.innerHTML = s;
        } else if (q || comune || difficolta) {
            summaryEl.textContent = 'Nessun risultato per i filtri selezionati.';
        } else {
            summaryEl.textContent = '';
        }

        var start = (page - 1) * PAGE_SIZE;
        resultsEl.innerHTML = result.items.slice(start, start + PAGE_SIZE).map(card).join('');

        if (totalPages > 1) {
            var nav = '';
            if (page > 1) nav += '<a class="pagination-link" href="' + esc(pageUrl(page - 1)) + '" title="Pagina precedente">« Pagina precedente</a>';
            nav += '<span class="pagination-info">Pagina ' + page + ' di ' + totalPages + '</span>';
            if (page < totalPages) nav += '<a class="pagination-link" href="' + esc(pageUrl(page + 1)) + '" title="Pagina successiva">Pagina successiva »</a>';
            paginationEl.innerHTML = nav;
            paginationEl.hidden = false;
        } else {
            paginationEl.hidden = true;
        }
    }

    summaryEl.textContent = 'Caricamento...';
    fetch('/data/search-index.json')
        .then(function (r) { return r.json(); })
        .then(function (all) { return comune ? searchByComune(all) : searchByText(all); })
        .then(render)
        .catch(function () {
            summaryEl.textContent = 'Impossibile caricare la ricerca. Riprova più tardi.';
        });
})();

// Ricerca escursioni lato browser.
// Legge /data/search-index.json (generato dall'export statico). Parametri URL:
// Q (testo), Comune (località), Lat/Lon (posizione dell'utente), RaggioKm, Difficolta,
// OrdinaPer, PageNumber. I risultati si aggiornano mentre si scrive, senza ricaricare la pagina.
(function () {
    var PAGE_SIZE = 8;
    var form = document.getElementById('search-form');
    var summaryEl = document.getElementById('search-summary');
    var resultsEl = document.getElementById('search-results');
    var paginationEl = document.getElementById('search-pagination');
    if (!resultsEl) return;

    var qInput = document.getElementById('q');
    var comuneInput = document.getElementById('comune');
    var latInput = document.getElementById('lat');
    var lonInput = document.getElementById('lon');
    var raggioSelect = document.getElementById('raggio');
    var ordinaSelect = document.getElementById('ordina');
    var pageInput = document.getElementById('page-number');
    var placeChip = document.getElementById('place-chip');
    var placeChipName = document.getElementById('place-chip-name');
    var sugList = document.getElementById('search-suggestions');
    var geoBtn = document.getElementById('use-position');

    var all = null;
    var comuni = null;
    var geoCache = {};

    // --- utilità ---
    function esc(s) {
        var d = document.createElement('div');
        d.appendChild(document.createTextNode(s == null ? '' : String(s)));
        return d.innerHTML;
    }
    // minuscolo e senza accenti: "Montemagno" trova anche "montemàgno"
    function norm(s) { return (s || '').toLowerCase().normalize('NFD').replace(/[̀-ͯ]/g, ''); }

    function geocode(name) {
        if (geoCache[name] !== undefined) return Promise.resolve(geoCache[name]);
        var url = 'https://nominatim.openstreetmap.org/search?city=' + encodeURIComponent(name) +
            '&country=Italia&format=jsonv2&limit=1&accept-language=it';
        return fetch(url)
            .then(function (r) { return r.ok ? r.json() : []; })
            .then(function (arr) {
                var c = null;
                if (arr && arr.length) {
                    var lat = parseFloat(arr[0].lat), lon = parseFloat(arr[0].lon);
                    if (!isNaN(lat) && !isNaN(lon)) c = { lat: lat, lon: lon };
                }
                geoCache[name] = c;
                return c;
            })
            .catch(function () { return null; });
    }

    // --- stato dal form / dall'URL ---
    function readState() {
        var diff = form.querySelector('input[name="Difficolta"]:checked');
        return {
            q: qInput.value.trim(),
            comune: comuneInput.value.trim(),
            lat: parseFloat(latInput.value),
            lon: parseFloat(lonInput.value),
            raggio: parseInt(raggioSelect.value, 10) || 20,
            difficolta: diff ? diff.value : '',
            ordina: ordinaSelect.value || 'data_desc',
            page: Math.max(1, parseInt(pageInput.value, 10) || 1)
        };
    }

    function fillFromUrl() {
        var p = new URLSearchParams(window.location.search);
        qInput.value = p.get('Q') || '';
        comuneInput.value = p.get('Comune') || '';
        latInput.value = p.get('Lat') || '';
        lonInput.value = p.get('Lon') || '';
        setSelect(raggioSelect, p.get('RaggioKm'));
        setSelect(ordinaSelect, p.get('OrdinaPer'));
        pageInput.value = p.get('PageNumber') || '1';
        var d = p.get('Difficolta') || '';
        var radio = form.querySelector('input[name="Difficolta"][value="' + (window.CSS && CSS.escape ? CSS.escape(d) : d) + '"]');
        (radio || form.querySelector('input[name="Difficolta"][value=""]')).checked = true;
        updatePlaceChip();
    }

    function setSelect(sel, value) {
        if (!value) return;
        for (var i = 0; i < sel.options.length; i++) {
            if (sel.options[i].value === value) { sel.value = value; return; }
        }
    }

    function writeUrl(s) {
        var p = new URLSearchParams();
        if (s.q) p.set('Q', s.q);
        if (s.comune) {
            p.set('Comune', s.comune);
            if (!isNaN(s.lat) && !isNaN(s.lon)) { p.set('Lat', s.lat.toFixed(4)); p.set('Lon', s.lon.toFixed(4)); }
            p.set('RaggioKm', s.raggio);
        }
        if (s.difficolta) p.set('Difficolta', s.difficolta);
        if (s.ordina !== 'data_desc') p.set('OrdinaPer', s.ordina);
        if (s.page > 1) p.set('PageNumber', s.page);
        var qs = p.toString();
        history.replaceState(null, '', '/ricerca' + (qs ? '?' + qs : ''));
    }

    function updatePlaceChip() {
        var has = !!comuneInput.value.trim();
        placeChip.hidden = !has;
        placeChipName.textContent = comuneInput.value.trim();
        raggioSelect.disabled = !has;
        form.classList.toggle('has-place', has);
    }

    // --- ricerca ---
    function sortItems(items, order, center) {
        function num(key, dir) {
            return function (a, b) {
                var x = a[key], y = b[key];
                if (x == null && y == null) return 0;
                if (x == null) return 1;
                if (y == null) return -1;
                return (x - y) * dir;
            };
        }
        var sorters = {
            data_desc: function (a, b) { return a.data < b.data ? 1 : a.data > b.data ? -1 : 0; },
            data_asc: function (a, b) { return a.data < b.data ? -1 : a.data > b.data ? 1 : 0; },
            distanza_asc: num('km', 1),
            distanza_desc: num('km', -1),
            dislivello_asc: num('dislivello', 1),
            dislivello_desc: num('dislivello', -1),
            nome_asc: function (a, b) { return (a.titoloSeo || a.titolo).localeCompare(b.titoloSeo || b.titolo, 'it'); },
            vicine: function (a, b) {
                return (Math.pow(a.lat - center.lat, 2) + Math.pow(a.lon - center.lon, 2)) -
                    (Math.pow(b.lat - center.lat, 2) + Math.pow(b.lon - center.lon, 2));
            }
        };
        return items.sort(sorters[order] || sorters.data_desc);
    }

    // Ogni parola deve comparire (in titolo, descrizione, luogo, zona...): "lago apuane" trova i laghi delle Apuane
    function matchesText(h, words) {
        if (!words.length) return true;
        var hay = h._hay || (h._hay = norm([h.titolo, h.titoloSeo, h.descrizione, h.comune, h.provincia, h.regione, h.zona, h.luogo].join(' ')));
        return words.every(function (w) { return hay.indexOf(w) >= 0; });
    }

    function search(s) {
        var words = norm(s.q).split(/\s+/).filter(Boolean);
        var base = all.filter(function (h) {
            return (!s.difficolta || h.difficolta === s.difficolta) && matchesText(h, words);
        });
        if (!s.comune) return Promise.resolve({ items: sortItems(base, s.ordina), radius: 0 });

        var centerP = !isNaN(s.lat) && !isNaN(s.lon) ? Promise.resolve({ lat: s.lat, lon: s.lon }) : geocode(s.comune);
        return centerP.then(function (center) {
            var cLower = norm(s.comune);
            if (!center) {
                var same = all.filter(function (h) { return norm(h.comune) === cLower && h.lat != null; });
                if (same.length) center = {
                    lat: same.reduce(function (t, h) { return t + h.lat; }, 0) / same.length,
                    lon: same.reduce(function (t, h) { return t + h.lon; }, 0) / same.length
                };
            }
            if (!center) return { items: sortItems(base.filter(function (h) { return norm(h.comune) === cLower; }), s.ordina), radius: s.raggio };
            var dLat = s.raggio / 111;
            var dLon = s.raggio / (111 * Math.cos(center.lat * Math.PI / 180));
            var items = base.filter(function (h) {
                return h.lat != null && h.lon != null && Math.abs(h.lat - center.lat) <= dLat && Math.abs(h.lon - center.lon) <= dLon;
            });
            // Con una località l'ordine predefinito è "più vicine"
            return { items: sortItems(items, s.ordina === 'data_desc' ? 'vicine' : s.ordina, center), radius: s.raggio };
        });
    }

    // --- card (stessa struttura di Pages/Shared/_HikeCard.cshtml) ---
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
    function plainText(s) {
        return (s || '').replace(/^\s*#{1,6}\s.*$/gm, '').replace(/\[([^\]]*)\]\([^)]*\)/g, '$1')
            .replace(/(\*\*|__|\*|`)/g, '').replace(/^\s*[-+]\s+/gm, '').replace(/\s+/g, ' ').trim();
    }
    function card(h) {
        var url = '/escursioni/' + h.slug;
        var title = h.titoloSeo || h.titolo;
        var html = '<article class="hike-card"><div class="hike-card-media">';
        if (h.cover) {
            html += '<picture>' + (h.thumb ? '<source srcset="/' + esc(h.thumb) + '" type="image/webp" />' : '') +
                '<img src="/' + esc(h.cover) + '" alt="' + esc(title) + '" loading="lazy" decoding="async" width="400" height="225" /></picture>';
        } else {
            html += '<div class="hike-card-placeholder" role="img" aria-label="Foto non disponibile per ' + esc(title) + '">' +
                '<svg viewBox="0 0 120 60" aria-hidden="true"><path d="M0 60 L32 22 L48 38 L70 12 L120 60 Z" /><circle cx="94" cy="16" r="6" /></svg>' +
                '<span>Foto in arrivo</span></div>';
        }
        if (h.zona) html += '<span class="hike-card-zone">' + esc(h.zona) + '</span>';
        html += '</div>';
        var meta = (h.luogo ? '<span>' + esc(h.luogo) + '</span>' : '') + (h.dataEscursione ? '<time>' + esc(h.dataEscursione) + '</time>' : '');
        var desc = plainText(h.riassunto || h.descrizione);
        if (desc.length > 140) desc = desc.substring(0, 140).trim() + '…';
        var stats = '';
        if (h.km != null) stats += '<li><span class="stat-label">Distanza</span> ' + Number(h.km).toFixed(1) + ' km</li>';
        if (h.dislivello != null) stats += '<li><span class="stat-label">Dislivello</span> +' + h.dislivello + ' m</li>';
        if (h.difficolta) stats += '<li class="badge ' + difficultyClass(h.difficolta) + '"><span class="stat-label">Difficoltà</span> ' + esc(h.difficolta) + '</li>';
        return html + '<div class="hike-card-body"><h2 class="hike-card-title"><a href="' + url + '" class="stretched-link">' + esc(title) + '</a></h2>' +
            '<p class="hike-card-meta">' + meta + '</p><p class="hike-card-desc">' + esc(desc) + '</p></div>' +
            '<ul class="hike-card-stats" aria-label="Dati principali">' + stats + '</ul></article>';
    }

    function render(result, s) {
        var total = result.items.length;
        var totalPages = Math.ceil(total / PAGE_SIZE);
        var page = totalPages === 0 ? 1 : Math.min(s.page, totalPages);

        if (total > 0) {
            var t = 'Trovate ' + total + ' escursioni.';
            if (s.comune) t += ' Vicino a <strong>' + esc(s.comune) + '</strong>' + (result.radius > 0 ? ' (entro ' + result.radius + ' km)' : '') + '.';
            if (s.difficolta) t += ' Difficoltà: <strong>' + esc(s.difficolta) + '</strong>.';
            summaryEl.innerHTML = t;
        } else {
            summaryEl.innerHTML = 'Nessuna escursione trovata.' +
                (s.comune ? ' Prova ad allargare il raggio o a togliere qualche filtro.' : ' Prova con un\'altra parola, una località o togli qualche filtro.') +
                ' <a href="/ricerca">Azzera la ricerca</a>';
        }

        var start = (page - 1) * PAGE_SIZE;
        resultsEl.innerHTML = result.items.slice(start, start + PAGE_SIZE).map(card).join('');

        if (totalPages > 1) {
            var nav = '';
            if (page > 1) nav += '<a class="pagination-link" href="#" data-page="' + (page - 1) + '" title="Pagina precedente">« Pagina precedente</a>';
            nav += '<span class="pagination-info">Pagina ' + page + ' di ' + totalPages + '</span>';
            if (page < totalPages) nav += '<a class="pagination-link" href="#" data-page="' + (page + 1) + '" title="Pagina successiva">Pagina successiva »</a>';
            paginationEl.innerHTML = nav;
            paginationEl.hidden = false;
        } else {
            paginationEl.hidden = true;
        }
    }

    var runId = 0;
    function run(resetPage) {
        if (!all) return;
        if (resetPage) pageInput.value = '1';
        var s = readState();
        writeUrl(s);
        var id = ++runId;
        search(s).then(function (r) { if (id === runId) render(r, s); });
    }

    // --- suggerimenti: località e escursioni nello stesso elenco ---
    var highlight = -1;
    function loadComuni() {
        if (comuni) return Promise.resolve(comuni);
        return fetch('/data/comuni-italiani.json').then(function (r) { return r.json(); })
            .then(function (d) { comuni = d; return d; }).catch(function () { comuni = []; return comuni; });
    }
    function closeSug() { sugList.innerHTML = ''; sugList.hidden = true; highlight = -1; qInput.setAttribute('aria-expanded', 'false'); }
    function showSug(text) {
        var v = norm(text);
        if (v.length < 2) { closeSug(); return; }
        loadComuni().then(function (list) {
            // Prima i nomi che iniziano con il testo, e tra questi prima Toscana e province vicine
            var near = { AR: 0, FI: 0, GR: 0, LI: 0, LU: 0, MS: 0, PI: 0, PO: 0, PT: 0, SI: 0, SP: 1, MO: 1, BO: 1, RE: 1, PR: 1 };
            var found = [];
            for (var i = 0; i < list.length; i++) {
                var n = norm(list[i].n), at = n.indexOf(v);
                if (at >= 0) found.push({ c: list[i], score: (at === 0 ? 0 : 10) + (near[list[i].s] !== undefined ? near[list[i].s] : 5) });
            }
            // I paesi da cui partono le mie escursioni (anche frazioni come Cardoso) vengono per primi
            var seen = {};
            (all || []).forEach(function (h) {
                if (!h.comune || seen[norm(h.comune)]) return;
                var at = norm(h.comune).indexOf(v);
                if (at < 0) return;
                seen[norm(h.comune)] = true;
                found.push({ c: { n: h.comune, s: h.provincia || '' }, score: at === 0 ? -2 : -1 });
            });
            found.sort(function (a, b) { return a.score - b.score || a.c.n.localeCompare(b.c.n, 'it'); });
            var places = [], names = {};
            for (var k = 0; k < found.length && places.length < 5; k++) {
                var key = norm(found[k].c.n);
                if (names[key]) continue;
                names[key] = true;
                places.push(found[k].c);
            }
            var hikes = all ? all.filter(function (h) { return norm(h.titoloSeo || h.titolo).indexOf(v) >= 0; }).slice(0, 5) : [];
            var html = '';
            if (places.length) {
                html += '<li class="sug-head" role="presentation">Escursioni vicino a</li>';
                places.forEach(function (m) {
                    html += '<li class="autocomplete-item" role="option" data-kind="place" data-value="' + esc(m.n) + '">' +
                        '<span class="sug-icon" aria-hidden="true">📍</span><strong>' + esc(m.n) + '</strong>' + (m.s ? ' <span class="autocomplete-prov">(' + esc(m.s) + ')</span>' : '') + '</li>';
                });
            }
            if (hikes.length) {
                html += '<li class="sug-head" role="presentation">Escursioni</li>';
                hikes.forEach(function (h) {
                    html += '<li class="autocomplete-item" role="option" data-kind="hike" data-value="' + esc(h.slug) + '">' +
                        '<span class="sug-icon" aria-hidden="true">🥾</span>' + esc(h.titoloSeo || h.titolo) + '</li>';
                });
            }
            sugList.innerHTML = html;
            sugList.hidden = !html;
            qInput.setAttribute('aria-expanded', html ? 'true' : 'false');
            highlight = -1;
        });
    }
    function pick(li) {
        if (li.getAttribute('data-kind') === 'hike') {
            window.location.href = '/escursioni/' + li.getAttribute('data-value');
            return;
        }
        comuneInput.value = li.getAttribute('data-value');
        latInput.value = ''; lonInput.value = '';
        qInput.value = '';
        closeSug();
        updatePlaceChip();
        run(true);
    }

    // --- eventi ---
    var timer;
    qInput.addEventListener('input', function () {
        clearTimeout(timer);
        timer = setTimeout(function () { run(true); showSug(qInput.value); }, 180);
    });
    qInput.addEventListener('keydown', function (e) {
        var items = sugList.querySelectorAll('.autocomplete-item');
        if (e.key === 'ArrowDown' && items.length) { e.preventDefault(); highlight = Math.min(highlight + 1, items.length - 1); }
        else if (e.key === 'ArrowUp' && items.length) { e.preventDefault(); highlight = Math.max(highlight - 1, 0); }
        else if (e.key === 'Enter' && highlight >= 0 && items[highlight]) { e.preventDefault(); pick(items[highlight]); return; }
        else if (e.key === 'Escape') { closeSug(); return; }
        else return;
        items.forEach(function (it, i) { it.classList.toggle('autocomplete-item--active', i === highlight); });
        if (items[highlight]) items[highlight].scrollIntoView({ block: 'nearest' });
    });
    qInput.addEventListener('blur', function () { setTimeout(closeSug, 200); });
    sugList.addEventListener('mousedown', function (e) {
        var li = e.target.closest('.autocomplete-item');
        if (li) { e.preventDefault(); pick(li); }
    });

    document.getElementById('place-chip-remove').addEventListener('click', function () {
        comuneInput.value = ''; latInput.value = ''; lonInput.value = '';
        updatePlaceChip();
        run(true);
        qInput.focus();
    });

    if (geoBtn && 'geolocation' in navigator) {
        geoBtn.hidden = false;
        geoBtn.addEventListener('click', function () {
            geoBtn.disabled = true;
            geoBtn.textContent = 'Cerco la tua posizione…';
            navigator.geolocation.getCurrentPosition(function (pos) {
                comuneInput.value = 'La tua posizione';
                latInput.value = pos.coords.latitude;
                lonInput.value = pos.coords.longitude;
                geoBtn.disabled = false;
                geoBtn.textContent = 'Vicino a me';
                updatePlaceChip();
                run(true);
            }, function () {
                geoBtn.disabled = false;
                geoBtn.textContent = 'Vicino a me';
                summaryEl.textContent = 'Non riesco a leggere la tua posizione: scrivi il nome di una località.';
            }, { timeout: 10000, maximumAge: 600000 });
        });
    }

    form.addEventListener('change', function (e) {
        if (e.target === qInput) return;
        run(true);
    });
    form.addEventListener('submit', function (e) {
        e.preventDefault();
        closeSug();
        run(true);
    });
    paginationEl.addEventListener('click', function (e) {
        var a = e.target.closest('[data-page]');
        if (!a) return;
        e.preventDefault();
        pageInput.value = a.getAttribute('data-page');
        run(false);
        document.getElementById('search-summary').scrollIntoView({ behavior: 'smooth', block: 'start' });
    });

    // --- avvio ---
    fillFromUrl();
    summaryEl.textContent = 'Caricamento...';
    fetch('/data/search-index.json')
        .then(function (r) { return r.json(); })
        .then(function (data) { all = data; run(false); })
        .catch(function () { summaryEl.textContent = 'Impossibile caricare la ricerca. Riprova più tardi.'; });
})();

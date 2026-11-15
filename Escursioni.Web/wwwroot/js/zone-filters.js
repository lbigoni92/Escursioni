// Filtri e ordinamento delle escursioni nella pagina di una zona.
// Le card portano i dati in data-* (Pages/Shared/_HikeCard.cshtml): tutto avviene nel browser.
(function () {
    var form = document.getElementById('hike-filters');
    var grid = document.getElementById('hike-grid');
    if (!form || !grid) return;
    var cards = Array.prototype.slice.call(grid.querySelectorAll('.hike-card'));
    if (cards.length < 6) return; // con poche escursioni i filtri non servono
    var count = document.getElementById('hike-filter-count');
    var empty = document.getElementById('hike-filter-empty');
    form.hidden = false;

    function num(card, key) {
        var v = parseFloat(card.getAttribute('data-' + key));
        return isNaN(v) ? null : v;
    }

    function apply() {
        var diffs = Array.prototype.map.call(form.querySelectorAll('input[name="diff"]:checked'), function (i) { return i.value; });
        var len = (form.querySelector('input[name="len"]:checked') || {}).value || '';
        var onlyLoop = form.querySelector('input[name="loop"]').checked;
        var sort = form.querySelector('select[name="sort"]').value;
        var range = len ? len.split('-').map(Number) : null;
        var shown = 0;

        cards.forEach(function (c) {
            var km = num(c, 'km');
            var ok = (diffs.length === 0 || diffs.indexOf(c.getAttribute('data-diff')) >= 0)
                && (!range || (km !== null && km >= range[0] && km < range[1]))
                && (!onlyLoop || c.getAttribute('data-loop') === '1');
            c.hidden = !ok;
            if (ok) shown++;
        });

        var sorted = cards.slice().sort(function (a, b) {
            if (sort === 'date') return (b.getAttribute('data-date') || '').localeCompare(a.getAttribute('data-date') || '');
            var key = sort.indexOf('gain') === 0 ? 'gain' : 'km';
            var dir = sort.slice(-4) === 'desc' ? -1 : 1;
            var x = num(a, key), y = num(b, key);
            if (x === null) return 1;
            if (y === null) return -1;
            return (x - y) * dir;
        });
        sorted.forEach(function (c) { grid.appendChild(c); });

        count.textContent = shown === cards.length ? cards.length + ' escursioni' : shown + ' di ' + cards.length + ' escursioni';
        empty.hidden = shown > 0;
    }

    form.addEventListener('change', apply);
    form.addEventListener('submit', function (e) { e.preventDefault(); });
    form.addEventListener('reset', function () { setTimeout(apply, 0); });
    var resetBtn = empty.querySelector('[data-filter-reset]');
    if (resetBtn) resetBtn.addEventListener('click', function () { form.reset(); });
    apply();
})();

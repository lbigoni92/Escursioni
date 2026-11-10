// Chiede conferma e mostra le avvertenze di sicurezza prima di scaricare una traccia GPX.
// Il download parte solo dopo che l'utente ha spuntato la casella e premuto "Scarica la traccia".
(function () {
    var dialog = document.getElementById('gpx-avviso');
    if (!dialog || typeof dialog.showModal !== 'function') return;
    var check = document.getElementById('gpx-avviso-ok');
    var scarica = document.getElementById('gpx-avviso-scarica');
    var link = null;

    check.addEventListener('change', function () { scarica.disabled = !check.checked; });

    document.addEventListener('click', function (e) {
        var a = e.target.closest && e.target.closest('a[href$=".gpx"]');
        if (!a || a.dataset.gpxConfermato === '1') return;
        e.preventDefault();
        link = a;
        check.checked = false;
        scarica.disabled = true;
        dialog.showModal();
    });

    dialog.addEventListener('close', function () {
        if (dialog.returnValue === 'scarica' && check.checked && link) {
            link.dataset.gpxConfermato = '1';
            link.click();
            delete link.dataset.gpxConfermato;
        }
        link = null;
        dialog.returnValue = '';
    });
})();

// GPX map initialization for Blazor interop (no waypoints)
window.initGpxMap = function (elementId, gpxUrl) {
    // Retry until DOM element is available (Blazor SSR timing)
    var attempts = 0;
    function tryInit() {
        var el = document.getElementById(elementId);
        if (!el) {
            if (attempts++ < 20) setTimeout(tryInit, 100);
            return;
        }

        // Prevent double-init
        if (el._leafletMap) {
            el._leafletMap.remove();
        }

        var map = L.map(elementId);
        el._leafletMap = map;

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 18,
            attribution: '&copy; OpenStreetMap contributors'
        }).addTo(map);

        new L.GPX(gpxUrl, {
            async: true,
            marker_options: {
                startIconUrl: 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-green.png',
                endIconUrl: 'https://cdn.jsdelivr.net/gh/pointhi/leaflet-color-markers@master/img/marker-icon-red.png',
                shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.9.4/images/marker-shadow.png',
                wptIconUrls: false
            }
        }).on('loaded', function (e) {
            map.fitBounds(e.target.getBounds());
        }).on('error', function (e) {
            el.innerHTML = '<p style="color:#999;padding:1rem;">GPX non disponibile.</p>';
        }).addTo(map);
    }
    tryInit();
};
 
// Speech-to-text dictation for Blazor interop
window._speechRecognition = null;
window._speechStopping = false;
window._speechDotnet = null;
window.startDictation = function (dotnetHelper) {
    var SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    if (!SpeechRecognition) {
        dotnetHelper.invokeMethodAsync('OnDictationError', 'Il browser non supporta il riconoscimento vocale.');
        return;
    }
    if (window._speechRecognition) {
        window.stopDictation();
        return;
    }
    window._speechStopping = false;
    window._speechDotnet = dotnetHelper;

    function createRecognition() {
        var recognition = new SpeechRecognition();
        recognition.lang = 'it-IT';
        recognition.continuous = true;
        recognition.interimResults = true;

        recognition.onresult = function (event) {
            var text = '';
            for (var i = event.resultIndex; i < event.results.length; i++) {
                if (event.results[i].isFinal) {
                    text += event.results[i][0].transcript;
                }
            }
            if (text) {
                dotnetHelper.invokeMethodAsync('OnDictationResult', text);
            }
        };
        recognition.onerror = function (event) {
            // 'no-speech' and 'network' are transient — auto-restart
            if (event.error === 'no-speech' || event.error === 'network' || event.error === 'aborted') {
                return; // onend will handle restart
            }
            // Fatal errors: not-allowed, service-not-allowed, etc.
            dotnetHelper.invokeMethodAsync('OnDictationError', event.error);
            window._speechRecognition = null;
            window._speechDotnet = null;
            dotnetHelper.invokeMethodAsync('OnDictationStopped');
        };
        recognition.onend = function () {
            // Auto-restart unless user explicitly stopped
            if (!window._speechStopping && window._speechRecognition) {
                try {
                    window._speechRecognition = createRecognition();
                    window._speechRecognition.start();
                } catch (e) {
                    window._speechRecognition = null;
                    window._speechDotnet = null;
                    dotnetHelper.invokeMethodAsync('OnDictationStopped');
                }
                return;
            }
            window._speechRecognition = null;
            window._speechDotnet = null;
            dotnetHelper.invokeMethodAsync('OnDictationStopped');
        };
        return recognition;
    }

    window._speechRecognition = createRecognition();
    window._speechRecognition.start();
};
window.stopDictation = function () {
    window._speechStopping = true;
    if (window._speechRecognition) {
        window._speechRecognition.stop();
        window._speechRecognition = null;
    }
    if (window._speechDotnet) {
        window._speechDotnet.invokeMethodAsync('OnDictationStopped');
        window._speechDotnet = null;
    }
};

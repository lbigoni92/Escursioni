BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  230866244,
  'Rifugio Marmolada - Passo Fedaia - Passo Fedaia - Ciamp dello Stanzon',
  'Passeggiata semplice ai piedi della Marmolada lungo le rive del Lago di Fedaia. Itinerario lineare (andata e ritorno) con fondo comodo e dislivello minimo, ideale per godersi da vicino la parete e il ghiacciaio della Regina delle Dolomiti. Punti toccati: Rifugio Marmolada – partenza Passo Fedaia / diga (1,3 km) Ciamp de lo Stanzon – riva nord, belvedere sul ghiacciaio Passo Fedaia / diga (4,0 km) – rientro Dal Rifugio Marmolada si raggiunge la diga del Lago di Fedaia e si prosegue costeggiando la riva nord su traccia ampia e pianeggiante. L’acqua del lago, bacino artificiale posto a circa 2.050 metri, cambia colore con la luce, passando dal verde smeraldo all’azzurro profondo e riflettendo le pareti dolomitiche sovrastanti. A Ciamp de lo Stanzon si apre la veduta più completa: in primo piano il lago e, subito sopra, la Marmolada con la sua parete settentrionale e i resti del ghiacciaio ben visibili nelle giornate limpide. Il rientro avviene sul medesimo percorso, riattraversando la diga fino al punto di partenza.',
  '<h2 id="rifugio-marmolada-passo-fedaia-passo-fedaia-ciamp-dello-stanzon">Rifugio Marmolada - Passo Fedaia - Passo Fedaia - Ciamp dello Stanzon</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa splendida escursione è il <strong >Passo Fedaia</strong>, facilmente raggiungibile in auto o con i mezzi pubblici. Da qui, si dirama verso la <strong >diga del Lago di Fedaia</strong>, da dove inizia il sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo itinerario è un''escursione lineare, perfetta per una giornata dedicata alla natura. Partendo dalla <strong >diga del Lago di Fedaia</strong>, si segue un sentiero pianeggiante che costeggia la riva nord del lago. Il percorso è molto comodo, con un dislivello minimo, ideale per godersi appieno la vista sulla <strong >Marmolada</strong> e sul <strong >ghiacciaio</strong>. Dopo circa 4 km si raggiunge il <strong >Ciamp de lo Stanzon</strong>, da cui si gode di una vista panoramica mozzafiato sul lago e sulla montagna. Il ritorno avviene seguendo lo stesso sentiero, riattraversando la diga fino al punto di partenza. Un''escursione facile e adatta a tutta la famiglia!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong >escursione</strong> è classificata come <strong >medio</strong>, grazie alla lunghezza del percorso (5.77 km) e alla presenza di un sentiero ben tracciato. Non presenta ostacoli particolari, ma è consigliabile indossare scarpe da trekking e portare con sé acqua e snack. Preparatevi ad ammirare panorami spettacolari sulla <strong >Marmolada</strong> e sul <strong >ghiacciaio</strong>.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<ul class="list">
    <li><strong >Distanza:</strong> Circa 5.77 km (andata e ritorno)</li>
    <li><strong >Dislivello:</strong> Circa 0 metri</li>
    <li><strong >Difficoltà:</strong> Medio</li>
    <li><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong >Punto di partenza:</strong> Passo Fedaia (accessibile in auto/mezzi pubblici)</li>
    <li><strong >Comune:</strong> Ciamp dello Stanzon, Veneto, Italia</li>
    <li><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul class="list">
    <li><strong>Distanza:</strong> Circa 5.77 km (andata e ritorno)</li>
    <li><strong>Dislivello:</strong> Circa 0 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Passo Fedaia (accessibile in auto / a piedi)</li>
    <li><strong>Comune:</strong> Ciamp dello Stanzon, Veneto</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  5.77,
  0,
  1862,
  1800,
  99,
  '1:39',
  87,
  '1:27',
  436,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Veneto',
  'Ciamp dello Stanzon',
  '2025-09-01',
  '2025-09-01',
  '2025-09-09 00:00:00',
  '2025-09-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/rifugio-marmolada-passo-fedaia-passo-fedaia-ciamp-dello-stanzon-230866244',
  NULL,
  46.463962,
  11.861516,
  'POINT(11.861516 46.463962)',
  '33c7f18f732955e2461cffffeea89f6e287a733900efefbbebd7ce6750569162',
  'Escursione Marmolada: facile giro al Lago di Fedaia (Passo Fedaia - Ciamp dello Stanzon) | Veneto, Italia. 5.77km, +0m, ideale per famiglie!',
  'Marmolada: Escursione da Passo Fedaia (Lago di Fedaia)',
  'Trentino e Veneto',
  NOW(),
  NOW()
)
ON CONFLICT (wikiloc_id) DO UPDATE SET
  titolo = EXCLUDED.titolo,
  descrizione = EXCLUDED.descrizione,
  descrizione_html = EXCLUDED.descrizione_html,
  attivita = EXCLUDED.attivita,
  distanza_km = EXCLUDED.distanza_km,
  dislivello_m = EXCLUDED.dislivello_m,
  quota_min_m = EXCLUDED.quota_min_m,
  quota_max_m = EXCLUDED.quota_max_m,
  tempo_min = EXCLUDED.tempo_min,
  tempo_hhmm = EXCLUDED.tempo_hhmm,
  tempo_mov_min = EXCLUDED.tempo_mov_min,
  tempo_mov_hhmm = EXCLUDED.tempo_mov_hhmm,
  coordinate_count = EXCLUDED.coordinate_count,
  difficolta = EXCLUDED.difficolta,
  tipo_giro = EXCLUDED.tipo_giro,
  superficie = EXCLUDED.superficie,
  regione = EXCLUDED.regione,
  provincia = EXCLUDED.provincia,
  comune = EXCLUDED.comune,
  data_escursione = EXCLUDED.data_escursione,
  data_registrato = EXCLUDED.data_registrato,
  data_caricato = EXCLUDED.data_caricato,
  data_pubblicazione = EXCLUDED.data_pubblicazione,
  url = EXCLUDED.url,
  bbox = EXCLUDED.bbox,
  centroid_lat = EXCLUDED.centroid_lat,
  centroid_lon = EXCLUDED.centroid_lon,
  geom = EXCLUDED.geom,
  sha256_payload = EXCLUDED.sha256_payload,
  meta_descrizione = EXCLUDED.meta_descrizione,
  titolo_seo = EXCLUDED.titolo_seo,
  tag = EXCLUDED.tag,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (230866244, 'https://it.wikiloc.com/percorsi-escursionismo/rifugio-marmolada-passo-fedaia-passo-fedaia-ciamp-dello-stanzon-230866244', NOW(), '33c7f18f732955e2461cffffeea89f6e287a733900efefbbebd7ce6750569162')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230866244);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230866244/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230866244;

COMMIT;

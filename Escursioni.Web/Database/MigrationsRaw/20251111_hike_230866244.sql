BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  230866244,
  'Rifugio Marmolada - Passo Fedaia - Passo Fedaia - Ciamp dello Stanzon',
  'Passeggiata semplice ai piedi della Marmolada lungo le rive del Lago di Fedaia. Itinerario lineare (andata e ritorno) con fondo comodo e dislivello minimo, ideale per godersi da vicino la parete e il ghiacciaio della Regina delle Dolomiti. Punti toccati: Rifugio Marmolada – partenza Passo Fedaia / diga (1,3 km) Ciamp de lo Stanzon – riva nord, belvedere sul ghiacciaio Passo Fedaia / diga (4,0 km) – rientro Dal Rifugio Marmolada si raggiunge la diga del Lago di Fedaia e si prosegue costeggiando la riva nord su traccia ampia e pianeggiante. L’acqua del lago, bacino artificiale posto a circa 2.050 metri, cambia colore con la luce, passando dal verde smeraldo all’azzurro profondo e riflettendo le pareti dolomitiche sovrastanti. A Ciamp de lo Stanzon si apre la veduta più completa: in primo piano il lago e, subito sopra, la Marmolada con la sua parete settentrionale e i resti del ghiacciaio ben visibili nelle giornate limpide. Il rientro avviene sul medesimo percorso, riattraversando la diga fino al punto di partenza.',
  '<h2>Rifugio Marmolada – Passo Fedaia – Ciamp dello Stanzon: Escursione Trekking in Montagna</h2>

<h3>Il Percorso: Trekking Facile ai Piedi della Marmolada</h3>

<p>Questo <strong>sentiero di trekking</strong> offre un''esperienza indimenticabile ai piedi della maestosa <strong>Marmolada</strong>, una delle vette più alte delle <strong>Dolomiti</strong>.  È un''<strong>escursione facile</strong>, perfetta per famiglie e per chi cerca una <strong>passeggiata in montagna</strong> senza particolari difficoltà.  L''itinerario lineare, di andata e ritorno, è lungo circa 8 chilometri e presenta un <strong>dislivello minimo</strong>, rendendolo ideale per un''esperienza di <strong>trekking</strong> rilassante e piacevole nella natura.</p>

<h3>Cosa Aspettarsi: Un''Escursione per Ammirare la Regina delle Dolomiti</h3>

<p>Preparatevi a una giornata all''insegna della <strong>natura</strong> e del panorama mozzafiato. Questo <strong>sentiero escursionistico</strong> vi permetterà di ammirare da vicino la parete e il <strong>ghiacciaio della Marmolada</strong>, un''esperienza unica in un ambiente alpino incontaminato.  Il percorso è stato studiato per garantire la massima sicurezza e comfort, con un <strong>fondo comodo</strong> e una traccia ampia e ben definita.  Potrete godervi la tranquillità della <strong>montagna</strong> e l''aria fresca e pulita, mentre ammirate i colori del <strong>Lago di Fedaia</strong>.</p>

<h3>Informazioni Utili: Dettagli dell''Escursione</h3>

<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 8 km (andata e ritorno)</li>
    <li><strong>Dislivello:</strong> Minimo (circa 100 metri)</li>
    <li><strong>Tempo di percorrenza:</strong> 2-3 ore (a seconda del passo)</li>
    <li><strong>Punti di Interesse:</strong> Rifugio Marmolada, Lago di Fedaia, Ciamp de lo Stanzon (belvedere sul ghiacciaio)</li>
    <li><strong>Località:</strong> Passo Fedaia, Trentino Alto Adige, Italia –  Ideale per <strong>trekking in Italia</strong>.</li>
</ul>

<p>Partenza dal <strong>Passo Fedaia</strong>, direttamente dai giardini della <strong>diga del Lago di Fedaia</strong>. Il <strong>sentiero</strong> vi condurrà lungo la riva nord del lago, costeggiando le rive fino a raggiungere il pittoresco <strong>Ciamp dello Stanzon</strong>, dove potrete ammirare un panorama mozzafiato sulla <strong>Marmolada</strong> e sul <strong>ghiacciaio</strong>. Il rientro avviene lungo lo stesso percorso, offrendovi un''ulteriore opportunità per godervi la bellezza di questo incantevole <strong>sentiero di montagna</strong>. Questa <strong>escursione di trekking</strong> è un''esperienza imperdibile per chi visita il Trentino e desidera esplorare le meraviglie delle <strong>Dolomiti</strong>.</p>',
  'Tutte le Attività e Paesi',
  5.77,
  50,
  1,
  1800,
  28,
  '00:28',
  28,
  '00:28',
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
  'Trentino',
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

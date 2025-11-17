BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita,
  distanza_km, dislivello_m, quota_min_m, quota_max_m,
  tempo_min, tempo_hhmm,
  tempo_mov_min, tempo_mov_hhmm, coordinate_count,
  difficolta, tipo_giro, superficie,
  regione, provincia, comune,
  data_escursione, data_registrato, data_caricato, data_pubblicazione,
  url, bbox, centroid_lat, centroid_lon, geom,
  sha256_payload, created_at, updated_at
)
VALUES (
  230866244,
  'Rifugio Marmolada - Passo Fedaia - Passo Fedaia - Ciamp dello Stanzon',
  'Passeggiata semplice ai piedi della Marmolada lungo le rive del Lago di Fedaia. Itinerario lineare (andata e ritorno) con fondo comodo e dislivello minimo, ideale per godersi da vicino la parete e il ghiacciaio della Regina delle Dolomiti. Punti toccati: Rifugio Marmolada – partenza Passo Fedaia / diga (1,3 km) Ciamp de lo Stanzon – riva nord, belvedere sul ghiacciaio Passo Fedaia / diga (4,0 km) – rientro Dal Rifugio Marmolada si raggiunge la diga del Lago di Fedaia e si prosegue costeggiando la riva nord su traccia ampia e pianeggiante. L’acqua del lago, bacino artificiale posto a circa 2.050 metri, cambia colore con la luce, passando dal verde smeraldo all’azzurro profondo e riflettendo le pareti dolomitiche sovrastanti. A Ciamp de lo Stanzon si apre la veduta più completa: in primo piano il lago e, subito sopra, la Marmolada con la sua parete settentrionale e i resti del ghiacciaio ben visibili nelle giornate limpide. Il rientro avviene sul medesimo percorso, riattraversando la diga fino al punto di partenza.',
  'Passeggiata semplice ai piedi della Marmolada lungo le rive del Lago di Fedaia. Itinerario lineare (andata e ritorno) con fondo comodo e dislivello minimo, ideale per godersi da vicino la parete e il ghiacciaio della Regina delle Dolomiti. <br> <br>Punti toccati: <br> <br>Rifugio Marmolada – partenza <br> <br>Passo Fedaia / diga (1,3 km) <br> <br>Ciamp de lo Stanzon – riva nord, belvedere sul ghiacciaio <br> <br>Passo Fedaia / diga (4,0 km) – rientro <br> <br>Dal Rifugio Marmolada si raggiunge la diga del Lago di Fedaia e si prosegue costeggiando la riva nord su traccia ampia e pianeggiante. L’acqua del lago, bacino artificiale posto a circa 2.050 metri, cambia colore con la luce, passando dal verde smeraldo all’azzurro profondo e riflettendo le pareti dolomitiche sovrastanti. <br> <br>A Ciamp de lo Stanzon si apre la veduta più completa: in primo piano il lago e, subito sopra, la Marmolada con la sua parete settentrionale e i resti del ghiacciaio ben visibili nelle giornate limpide. Il rientro avviene sul medesimo percorso, riattraversando la diga fino al punto di partenza.',
  'Tutte le Attività e Paesi',
  5.77,
  0,
  1,
  2,
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
  NOW(), NOW()
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

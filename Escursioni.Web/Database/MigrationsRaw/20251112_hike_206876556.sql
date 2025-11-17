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
  206876556,
  'Castello Orsini da Borgo di celleno',
  'Percorso da Borgo di Celleno passando per: Castello Orsini (0.2 km) Abbiamo parcheggiato nei pressi del cimitero, dove poco dopo si trova una panchina gigante che offre un bellissimo panorama sulla valle circostante. Dal cimitero al paesino di Castello Orsini da Acquaforte ci vogliono circa 15 minuti a piedi. Il percorso è semplice e piacevole, lo consiglio vivamente perché regala scorci panoramici suggestivi. Inoltre, davanti al Monastero si possono ammirare splendidi dipinti esterni, testimoni della storia artistica e religiosa della zona. Borgo di Celleno: tra storia e fascino medievale Il Borgo fantasma di Celleno è un vero gioiello storico. Le sue origini risalgono all''epoca etrusca, ma il castello e le strutture attuali si svilupparono principalmente nel Medioevo. Il cuore del borgo è il Castello Orsini, risalente all''XI secolo, che fu dimora della potente famiglia Orsini e, successivamente, teatro di lotte tra nobili famiglie rivali. Oggi Celleno è un borgo abbandonato ma perfettamente conservato, con un’atmosfera unica che lo rende una meta imperdibile per gli amanti della storia e della fotografia. L''ingresso è gratuito, e si possono visitare diverse parti del castello normalmente inaccessibili nei castelli a pagamento. Il borgo è stato trasformato in un vero e proprio museo a cielo aperto, dove si respira ancora l’antico fascino medievale.',
  'Percorso da Borgo di Celleno passando per: <br> <br>Castello Orsini (0.2 km) <br> <br>Abbiamo parcheggiato nei pressi del cimitero, dove poco dopo si trova una panchina gigante che offre un bellissimo panorama sulla valle circostante. <br> <br>Dal cimitero al paesino di Castello Orsini da Acquaforte ci vogliono circa 15 minuti a piedi. Il percorso è semplice e piacevole, lo consiglio vivamente perché regala scorci panoramici suggestivi. Inoltre, davanti al Monastero si possono ammirare splendidi dipinti esterni, testimoni della storia artistica e religiosa della zona. <br> <br>Borgo di Celleno: tra storia e fascino medievale <br>Il Borgo fantasma di Celleno è un vero gioiello storico. Le sue origini risalgono all''epoca etrusca, ma il castello e le strutture attuali si svilupparono principalmente nel Medioevo. Il cuore del borgo è il Castello Orsini, risalente all''XI secolo, che fu dimora della potente famiglia Orsini e, successivamente, teatro di lotte tra nobili famiglie rivali. <br> <br>Oggi Celleno è un borgo abbandonato ma perfettamente conservato, con un’atmosfera unica che lo rende una meta imperdibile per gli amanti della storia e della fotografia. L''ingresso è gratuito, e si possono visitare diverse parti del castello normalmente inaccessibili nei castelli a pagamento. Il borgo è stato trasformato in un vero e proprio museo a cielo aperto, dove si respira ancora l’antico fascino medievale.',
  'Tutte le Attività e Paesi',
  1.67,
  20,
  333,
  362,
  18,
  '00:18',
  18,
  '00:18',
  206,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Lazio',
  'Acquaforte',
  '2025-03-01',
  '2025-03-01',
  '2025-03-30 00:00:00',
  '2025-03-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castello-orsini-da-borgo-di-celleno-206876556',
  NULL,
  42.562428,
  12.142827,
  'POINT(12.142827 42.562428)',
  '10e4dac8b94c7fea848304e3993f1fd857041df009e9ce4f685e2ada75163ef8',
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
VALUES (206876556, 'https://it.wikiloc.com/percorsi-escursionismo/castello-orsini-da-borgo-di-celleno-206876556', NOW(), '10e4dac8b94c7fea848304e3993f1fd857041df009e9ce4f685e2ada75163ef8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 206876556);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/206876556/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

COMMIT;

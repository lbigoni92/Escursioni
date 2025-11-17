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
  110637494,
  'Pania verde',
  'La salita alla pania verde non presenta problemi di segnali almeno al punto in cui ci si presenta davanti una grande pietraia... Li abbiamo sbagliato e scalato la pietra presi in inganno da alcuni omini... Non fatelo.... Il percorso corretto parte dall''inizio della pietra subito a dx... E segnato male ma aggira il punto critico.Anche nel bosco la segnaletica lascia a desiderare e abbiamo trovato difficoltà a ritrovare il sentiero.Ma una volta in cresta il panorama è unico e magnifico ne vale la pena.Non abbiamo fatto un anello ma andati e tornati dal solito punto perché uno dei nostri si era fermato, ma in percorso mertita',
  'La salita alla pania verde non presenta problemi di segnali almeno al punto in cui ci si presenta davanti una grande pietraia... Li abbiamo sbagliato e scalato la pietra presi in inganno da alcuni omini... Non fatelo.... Il percorso corretto parte dall''inizio della pietra subito a dx... E segnato male ma aggira il punto critico.<br>Anche nel bosco la segnaletica lascia a desiderare e abbiamo trovato difficoltà a ritrovare il sentiero.<br>Ma una volta in cresta il panorama è unico e magnifico ne vale la pena.<br><br>Non abbiamo fatto un anello ma andati e tornati dal solito punto perché uno dei nostri si era fermato, ma in percorso mertita',
  'Tutte le Attività e Paesi',
  3.53,
  417,
  1,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  534,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2022-08-01',
  '2022-08-01',
  '2022-08-14 00:00:00',
  '2022-08-14 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pania-verde-110637494',
  NULL,
  44.049697,
  10.350692,
  'POINT(10.350692 44.049697)',
  'e8d694a4e97a90c56cc4147be0d6e8eeb8ea9e5e7d432d5dd3f084ed4a98cc81',
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
VALUES (110637494, 'https://it.wikiloc.com/percorsi-escursionismo/pania-verde-110637494', NOW(), 'e8d694a4e97a90c56cc4147be0d6e8eeb8ea9e5e7d432d5dd3f084ed4a98cc81')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110637494);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110637494/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

COMMIT;

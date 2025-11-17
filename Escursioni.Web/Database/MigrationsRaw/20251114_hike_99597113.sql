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
  99597113,
  'Calambrone - Passeggiata nel verde - Picnic',
  'Con la mia ragazza abbiamo fatto una camminata molto molto tranquilla, nel luogo dove abbiamo parcheggiato (inizio percorso) c''è tanto parcheggio e inoltre la zona è adatta fare picnic, non vi sono dislivelli è TUTTO in piano, sentieri larghi e ben tenuti. Abbiamo trovato persone a cavallo (c''è un maneggio vicino) e qualche anatra, in passato ho visto daini e volpi. Il luogo è tranquillo e adatto a passeggiate tranquille, non vi sono fontanelle. Nelle vicinanze vi sono: - il centro sportivo del CONI - Un campeggio ben attrezzato - Il mare ad appena 15 min a piedi.',
  'Con la mia ragazza abbiamo fatto una camminata molto molto tranquilla, nel luogo dove abbiamo parcheggiato (inizio percorso) c''è tanto parcheggio e inoltre la zona è adatta fare picnic, non vi sono dislivelli è TUTTO in piano, sentieri larghi e ben tenuti. <br> <br>Abbiamo trovato persone a cavallo (c''è un maneggio vicino) e qualche anatra, in passato ho visto daini e volpi. <br> <br>Il luogo è tranquillo e adatto a passeggiate tranquille, non vi sono fontanelle. <br> <br>Nelle vicinanze vi sono: <br> - il centro sportivo del CONI <br>- Un campeggio ben attrezzato <br>- Il mare ad appena 15 min a piedi.',
  'Tutte le Attività e Paesi',
  7.7,
  43,
  11,
  36,
  NULL,
  NULL,
  NULL,
  NULL,
  969,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Azienda Agricola Tirrenia',
  '2022-04-01',
  '2022-04-01',
  '2022-04-10 00:00:00',
  '2022-04-10 00:00:00',
  'https://it.wikiloc.com/percorsi-cammino/calambrone-passeggiata-nel-verde-picnic-99597113',
  NULL,
  43.599993,
  10.302403,
  'POINT(10.302403 43.599993)',
  '27c17826ebfb9859efa3ca3dba8a80e282e30b17fe9fe30e2aa5969e384ac127',
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
VALUES (99597113, 'https://it.wikiloc.com/percorsi-cammino/calambrone-passeggiata-nel-verde-picnic-99597113', NOW(), '27c17826ebfb9859efa3ca3dba8a80e282e30b17fe9fe30e2aa5969e384ac127')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 99597113);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/99597113/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

COMMIT;

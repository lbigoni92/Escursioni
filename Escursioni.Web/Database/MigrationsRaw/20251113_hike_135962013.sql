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
  135962013,
  'Fibialla -Geocaching',
  'Percorso nei pressi di Fibialla, alla ricerca di geocache, si passa su una strada privata quindi non è proprio un vero trekking . Vi sono dei mulini abbandonati e dei ruscelletti. La strada diventa ad un certo punto sterrato, è carino e adatto a famiglie va bene per persone alle prime armi, non richiede scarpe o attrezzature particolari. Su questo percorso sono presenti numerose geocache: https://www.geocaching.com/geocache/GC5WZBX https://www.geocaching.com/geocache/GC5WZB8 https://www.geocaching.com/geocache/GC4EM4K https://www.geocaching.com/geocache/GC5W0E4 https://www.geocaching.com/geocache/GC5W0DH https://www.geocaching.com/geocache/GC5W0DT https://www.geocaching.com/geocache/GC5WZ8Z https://www.geocaching.com/play/map?lat=43.8856&lng=10.3778&zoom=15&asc=true&sort=distance&st=N+43%C2%B0+53.021%27+E+10%C2%B0+22.884%27&ot=coords&ho=1',
  'Percorso nei pressi di Fibialla, alla ricerca di geocache, si passa su una strada privata quindi non è proprio un vero trekking . <br> <br>Vi sono dei mulini abbandonati e dei ruscelletti. <br> <br>La strada diventa ad un certo punto sterrato, è carino e adatto a famiglie va bene per persone alle prime armi, non richiede scarpe o attrezzature particolari. <br> <br>Su questo percorso sono presenti numerose geocache: <br>https://www.geocaching.com/geocache/GC5WZBX <br>https://www.geocaching.com/geocache/GC5WZB8 <br>https://www.geocaching.com/geocache/GC4EM4K <br>https://www.geocaching.com/geocache/GC5W0E4 <br>https://www.geocaching.com/geocache/GC5W0DH <br>https://www.geocaching.com/geocache/GC5W0DT <br>https://www.geocaching.com/geocache/GC5WZ8Z <br> <br>https://www.geocaching.com/play/map?lat=43.8856&lng=10.3778&zoom=15&asc=true&sort=distance&st=N+43%C2%B0+53.021%27+E+10%C2%B0+22.884%27&ot=coords&ho=1',
  'Tutte le Attività e Paesi',
  4.64,
  130,
  82,
  209,
  49,
  '00:49',
  49,
  '00:49',
  606,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Stabbiano',
  '2023-05-01',
  '2023-05-01',
  '2023-05-27 00:00:00',
  '2023-05-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/fibialla-135962013',
  NULL,
  43.8856,
  10.3778,
  'POINT(10.3778 43.8856)',
  'b8a4a8056c6275611e3980d6f432013d5e1b86716dc1e767be47f7ffd61514b4',
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
VALUES (135962013, 'https://it.wikiloc.com/percorsi-escursionismo/fibialla-135962013', NOW(), 'b8a4a8056c6275611e3980d6f432013d5e1b86716dc1e767be47f7ffd61514b4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 135962013);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/135962013/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135962013/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135962013/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135962013/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135962013/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135962013/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135962013;

COMMIT;

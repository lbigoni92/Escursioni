BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87371842,
  'Buca dei banditi - Val di Chioma',
  'Per chi vuole fare un giro nelle colline livornesi alla scoperta dei luoghi storici della 2°guerra mondiale. Al km 3.9 s''arriva al punto dove si trova la grotta, non è sul sentiero principale ma dietro e segnato male quindi mi raccomando State attenti! Un paio di tratti tagliano dei sentieri quindi sono un pò selvaggi, consiglio pantaloni lunghi',
  'Per chi vuole fare un giro nelle colline livornesi alla scoperta dei luoghi storici della 2°guerra mondiale. <br> <br>Al km 3.9 s''arriva al punto dove si trova la grotta, non è sul sentiero principale ma dietro e segnato male quindi mi raccomando State attenti! <br> <br>Un paio di tratti tagliano dei sentieri quindi sono un pò selvaggi, consiglio pantaloni lunghi',
  'Tutte le Attività e Paesi',
  17.7,
  443,
  64,
  334,
  188,
  '03:08',
  NULL,
  NULL,
  1037,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842',
  NULL,
  43.49502,
  10.35976,
  'POINT(10.35976 43.49502)',
  '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373',
  'Escursione Buca dei Banditi Val di Chioma: Storia e natura tra colline livornesi. Percorso selvaggio e suggestivo! ⛰️',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87371842, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842', NOW(), '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371842);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371842/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371842;

COMMIT;

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
  87371489,
  'Matanna - Nona',
  'il percorso è faticoso in due tratti: Salita del nona Salita dal rifugio Massa fino al Callare del Matanna. Per il resto è ben segnalato e fattibile i punti panoramici più belli sono : Monte Nona - cima Monte Matanna - cima Sentieri 109-5-121-3-109 +(2 creste) sul percorso vediamo se siamo fortunati mufloni e cavalli selvatici.',
  'il percorso è faticoso in due tratti: <br>Salita del nona <br>Salita dal rifugio Massa fino al Callare del Matanna. <br> <br>Per il resto è ben segnalato e fattibile <br> <br>i punti panoramici più belli sono : <br> <br>Monte Nona - cima <br>Monte Matanna - cima <br> <br> Sentieri 109-5-121-3-109 +(2 creste) <br> <br>sul percorso vediamo se siamo fortunati mufloni e cavalli selvatici.',
  'Tutte le Attività e Paesi',
  11.58,
  1,
  851,
  1,
  442,
  '07:22',
  NULL,
  NULL,
  665,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Palagnana',
  '2021-10-01',
  '2021-10-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/matanna-nona-con-lupus-in-trekking-87371489',
  NULL,
  43.987355,
  10.344456,
  'POINT(10.344456 43.987355)',
  '72487475ef2dd8e424df334edb52ea511700bb32db5a100a9c11f5c3e94348ce',
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
VALUES (87371489, 'https://it.wikiloc.com/percorsi-escursionismo/matanna-nona-con-lupus-in-trekking-87371489', NOW(), '72487475ef2dd8e424df334edb52ea511700bb32db5a100a9c11f5c3e94348ce')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371489);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371489/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371489;

COMMIT;

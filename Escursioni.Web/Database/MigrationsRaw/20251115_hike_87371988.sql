BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87371988,
  'montemagno Calci',
  'Percorso alla portata di tutti. Non vi sono difficoltà d''alcun tipo, se non in forma può risultare impegnativo il tratto finale della salita. Sentieri: 141 -139 - 143 Il panorama che si vede dalla rocca è meraviglioso, si vede da Livorno a Massa',
  'Percorso alla portata di tutti. <br>Non vi sono difficoltà d''alcun tipo, se non in forma può risultare impegnativo il tratto finale della salita. <br> <br> Sentieri: 141 -139 - 143 <br> <br>Il panorama che si vede dalla rocca è meraviglioso, si vede da Livorno a Massa',
  'Tutte le Attività e Paesi',
  10.44,
  476,
  13,
  408,
  934,
  '15:34',
  NULL,
  NULL,
  2805,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Paduletto',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988',
  NULL,
  43.71621,
  10.51131,
  'POINT(10.51131 43.71621)',
  '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181',
  'Escursione al Monte Magno Calci: vista mozzafiato su Livorno & Massa! Facile percorso 141m, ideale per tutti. Goditi la roccia e l''aria fresca!',
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
VALUES (87371988, 'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988', NOW(), '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371988);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371988/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371988;

COMMIT;

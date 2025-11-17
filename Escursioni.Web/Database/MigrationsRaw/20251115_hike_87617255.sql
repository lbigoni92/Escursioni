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
  87617255,
  'Livorno Escursionismo - Colognole',
  'Giro molto semplice e carino, semplice e da fare con bambini e familiari, ottimo per piknic domenicale. Punti panoramici ai km 0.4 - 1.9 Al km 2.1 inizia il percorso dell'' acquedotto di Colognole e finisce al km 4 Molto bello e suggestivo, consiglio di fermarsi al km 2.8 pe una pausa e mangiare qualcosa. Le salite sono molto dolci tranne il tratto che scende all''acquedotto intorno km 2.0, è molto facile vedere anfibi. Non ci sono fontanelle , portate l''acqua',
  'Giro molto semplice e carino, semplice e da fare con bambini e familiari, ottimo per piknic domenicale. <br>Punti panoramici ai km 0.4 - 1.9 <br> <br>Al km 2.1 inizia il percorso dell'' acquedotto di Colognole e finisce al km 4 <br> <br>Molto bello e suggestivo, consiglio di fermarsi al km 2.8 pe una pausa e mangiare qualcosa. <br> <br>Le salite sono molto dolci tranne il tratto che scende all''acquedotto intorno km 2.0, è molto facile vedere anfibi. <br> <br>Non ci sono fontanelle , portate l''acqua',
  'Tutte le Attività e Paesi',
  7.32,
  285,
  203,
  412,
  160,
  '02:40',
  NULL,
  NULL,
  2002,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-05-01',
  '2021-05-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/livorno-escursionismo-colognole-87617255',
  NULL,
  43.523062,
  10.416098,
  'POINT(10.416098 43.523062)',
  '280fb21450177fa9dc70c93e84a83edf044435f0723fcf4f68a7a92c65d57c1a',
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
VALUES (87617255, 'https://it.wikiloc.com/percorsi-escursionismo/livorno-escursionismo-colognole-87617255', NOW(), '280fb21450177fa9dc70c93e84a83edf044435f0723fcf4f68a7a92c65d57c1a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617255);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617255/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617255;

COMMIT;

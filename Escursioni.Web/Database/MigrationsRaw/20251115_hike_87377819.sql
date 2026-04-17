BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87377819,
  'Sanbuca Livornese - Notturno',
  'Percorso fatto in notturna, prevalentemente sul sentiero 00, molto facile l''ho segutio andando a memoria, abbiamo cenato ai tavolini davanti alla Sanbuca Livornese. Non abbiamo trovato animali e ci siamo fermati a vedere le stelle in una notte stupenda al km 9.1. Poco umido e pieno di lucciole. Lo spettacolo dato dalle luci della città è fenomenale. Portate le torce frontali',
  'Percorso fatto in notturna, prevalentemente sul sentiero 00, molto facile l''ho segutio andando a memoria, abbiamo cenato ai tavolini davanti alla Sanbuca Livornese. <br> <br>Non abbiamo trovato animali e ci siamo fermati a vedere le stelle in una notte stupenda al km 9.1. <br> <br>Poco umido e pieno di lucciole. <br> <br>Lo spettacolo dato dalle luci della città è fenomenale. <br> <br>Portate le torce frontali',
  'Tutte le Attività e Paesi',
  11.83,
  307,
  129,
  322,
  242,
  '04:02',
  NULL,
  NULL,
  2659,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sanbuca-livornese-notturno-con-lupus-in-trekking-87377819',
  NULL,
  43.526069,
  10.412709,
  'POINT(10.412709 43.526069)',
  '4023f4c9e50eeda04c4b0cd219cb33a519c6e99bbdfded93542957237e304fc1',
  'Escursione notturna Sanbuca Livornese: sentiero 00, luci della città e stelle! Percorso facile, lucciole e cena sotto le stelle. Scopri il lato nascosto di L...',
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
VALUES (87377819, 'https://it.wikiloc.com/percorsi-escursionismo/sanbuca-livornese-notturno-con-lupus-in-trekking-87377819', NOW(), '4023f4c9e50eeda04c4b0cd219cb33a519c6e99bbdfded93542957237e304fc1')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87377819);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87377819/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87377819;

COMMIT;

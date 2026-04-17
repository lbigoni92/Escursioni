BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87617083,
  'Da Castellaccio a Quercianella',
  'Percorso d sola andata da Castellaccio a Quercianella ho fatto dei nuovi sentieri in solitaria, molto suggestivo, lo coniglio per chi deve fare quel tragitto. Non vi sono problemi, ma punti panoramici che ogni Livornese deve vedere infatti è possibile godere dell''intero ponte di calafuria da una roggia che non ha alberi difronte (foto allegata) In primavere il tratto sopra calafuria è pregno di rovi, è fattibile ma portate dei pantaloni lunghi. Non ci sono fontanelle.',
  'Percorso d sola andata da Castellaccio a Quercianella ho fatto dei nuovi sentieri in solitaria, molto suggestivo, lo coniglio per chi deve fare quel tragitto. <br> <br>Non vi sono problemi, ma punti panoramici che ogni Livornese deve vedere infatti è possibile godere dell''intero ponte di calafuria da una roggia che non ha alberi difronte (foto allegata) <br> <br>In primavere il tratto sopra calafuria è pregno di rovi, è fattibile ma portate dei pantaloni lunghi. <br> <br>Non ci sono fontanelle.',
  'Tutte le Attività e Paesi',
  11.69,
  285,
  12,
  253,
  231,
  '03:51',
  NULL,
  NULL,
  2739,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2018-11-01',
  '2018-11-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/da-castellaccio-a-quercianella-con-lupus-in-trekking-87617083',
  NULL,
  43.48149,
  10.35986,
  'POINT(10.35986 43.48149)',
  '1db3fd0f374209638edefb3d6543285d6ea4cfd4914e5854aa59a723ad769f2a',
  'Escursione Castellaccio-Quercianella: sentiero suggestivo con vista Ponte di Calafuria! Panorami mozzafiato, consigliato per Livorno. Porta pantaloni lunghi!',
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
VALUES (87617083, 'https://it.wikiloc.com/percorsi-escursionismo/da-castellaccio-a-quercianella-con-lupus-in-trekking-87617083', NOW(), '1db3fd0f374209638edefb3d6543285d6ea4cfd4914e5854aa59a723ad769f2a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617083);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617083/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617083;

COMMIT;

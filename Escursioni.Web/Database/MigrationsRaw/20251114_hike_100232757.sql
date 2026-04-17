BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  100232757,
  'Marina di Pisa',
  'Il percorso sarebbe stato ad anello, se non fosse per il fatto che c''ha preso la pioggia e siamo scappati alla macchina.Il percorso in realtà non è niente di più di una passeggiata nella pineta, non so perché segni 400mt di dislivello, in realtà è tutto piano.La pineta presenta percorsi larghi e ben segnati, lo consiglio come passeggiata post abbuffata o come passeggiata domenicale.Non ci sono fontanelle.Non importa usare scarpe da trekking.',
  'Il percorso sarebbe stato ad anello, se non fosse per il fatto che c''ha preso la pioggia e siamo scappati alla macchina.<br><br>Il percorso in realtà non è niente di più di una passeggiata nella pineta, non so perché segni 400mt di dislivello, in realtà è tutto piano.<br><br>La pineta presenta percorsi larghi e ben segnati, lo consiglio come passeggiata post abbuffata o come passeggiata domenicale.<br><br>Non ci sono fontanelle.<br>Non importa usare scarpe da trekking.',
  'Tutte le Attività e Paesi',
  7.9,
  7,
  66,
  40,
  59,
  '00:59',
  59,
  '00:59',
  959,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Marina di Pisa',
  '2022-04-01',
  '2022-04-01',
  '2022-04-16 00:00:00',
  '2022-04-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/marina-di-pisa-100232757',
  NULL,
  43.672442,
  10.277847,
  'POINT(10.277847 43.672442)',
  '200c793fb4760fab456d03d8714ae3d5baeb4ca17303e5576d3f33cf26bcf199',
  'Escursione a Marina di Pisa: passeggiata facile nella pineta! Percorso piano, ideale per una passeggiata domenicale o dopo pranzo. Scopri la pineta di Pisa!',
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
VALUES (100232757, 'https://it.wikiloc.com/percorsi-escursionismo/marina-di-pisa-100232757', NOW(), '200c793fb4760fab456d03d8714ae3d5baeb4ca17303e5576d3f33cf26bcf199')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100232757);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100232757/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

COMMIT;

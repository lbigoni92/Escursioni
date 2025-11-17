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
  96964761,
  'Vicopisano - Rocca della Verruca',
  'Partenza da Vicopisano, abbiamo parcheggiato nella piazza principale del paese (il sabato non potete parcheggiare). I sentieri sono molto molto semplici adatti a tutti, l''unica parte più difficile è la salita, che in un breve tratto presenta delle pietre alle quali si dev''essere attenti. Non vi sono fontane lungo il percorso Dalla verruca potrete vedere un panorama unico nel suo genere, La Rocca stessa non è tenuta benissimo ma è comunque un luogo storico più ogni Toscano dovrebbe vedere almeno una volta nella propria vita, la salita alla verruca comporta aiutarsi con le mani nel salire, ma ne vale la pena. Il ritorno non comporta difficoltà abbiamo fatto la direttissima dalla verruca a Vicopisano il percorso era molto molto semplice, percorribile anche in auto, vicino alla verruca vi sono anche i tavolini da picnic',
  'Partenza da Vicopisano, abbiamo parcheggiato nella piazza principale del paese (il sabato non potete parcheggiare). <br> <br>I sentieri sono molto molto semplici adatti a tutti, l''unica parte più difficile è la salita, che in un breve tratto presenta delle pietre alle quali si dev''essere attenti. <br> <br> <br>Non vi sono fontane lungo il percorso <br> <br>Dalla verruca potrete vedere un panorama unico nel suo genere, La Rocca stessa non è tenuta benissimo ma è comunque un luogo storico più ogni Toscano dovrebbe vedere almeno una volta nella propria vita, la salita alla verruca comporta aiutarsi con le mani nel salire, ma ne vale la pena. <br> <br>Il ritorno non comporta difficoltà abbiamo fatto la direttissima dalla verruca a Vicopisano il percorso era molto molto semplice, percorribile anche in auto, vicino alla verruca vi sono anche i tavolini da picnic',
  'Tutte le Attività e Paesi',
  12.96,
  506,
  14,
  517,
  202,
  '03:22',
  202,
  '03:22',
  2274,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2022-03-01',
  '2022-03-01',
  '2022-03-06 00:00:00',
  '2022-03-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-rocca-della-verruca-96964761',
  NULL,
  43.699385,
  10.582933,
  'POINT(10.582933 43.699385)',
  '85e4c3d73e154c7a5cc5096e3e19f0e9eb2b9cbb73b8bb2709ca79f1f3294c9d',
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
VALUES (96964761, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-rocca-della-verruca-96964761', NOW(), '85e4c3d73e154c7a5cc5096e3e19f0e9eb2b9cbb73b8bb2709ca79f1f3294c9d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 96964761);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/96964761/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

COMMIT;

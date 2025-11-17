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
  92463110,
  'Lago della Gherardesca',
  'Noto anche con i nomi "lago di Sesto" (icino ad esso sorgeva un castello che prese il nome dalla sesta pietra miliare esistita sulla vicina strada maestra che da Lucca guida nel Valdarno inferiore) o "lago di Bientina" Durante la Seconda Guerra Mondiale, nel 1941, fu costruito un campo di concentramento per più di 3000 prigionieri inglesi, civili, politici, ebrei: il P.G n° 60, in una località detta “Il Pollino”. Classica passeggiata per amanti del le fotografie, passeggiate con ik cane o pic nik con la famiglia. Ci passano anche a cavallo. Vi sono numerosi punti per fare foto a uccelli di vario tipo. Lungo il percorso possiamo trovare anche un monumento alla memoria. Non ci sono fontanelle Consiglio scarponcini se ha piovuto di recente',
  'Noto anche con i nomi "lago di Sesto" (icino ad esso sorgeva un castello che prese il nome dalla sesta pietra miliare esistita sulla vicina strada maestra che da Lucca guida nel Valdarno inferiore) o "lago di Bientina" <br> <br>Durante la Seconda Guerra Mondiale, nel 1941, fu costruito un campo di concentramento per più di 3000 prigionieri inglesi, civili, politici, ebrei: il P.G n° 60, in una località detta “Il Pollino”. <br> <br>Classica passeggiata per amanti del le fotografie, passeggiate con ik cane o pic nik con la famiglia. <br> <br>Ci passano anche a cavallo. <br> <br>Vi sono numerosi punti per fare foto a uccelli di vario tipo. <br>Lungo il percorso possiamo trovare anche un monumento alla memoria. <br> <br>Non ci sono fontanelle <br>Consiglio scarponcini se ha piovuto di recente',
  'Tutte le Attività e Paesi',
  3.52,
  7,
  8,
  46,
  NULL,
  NULL,
  NULL,
  NULL,
  627,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Colle di Compito',
  '2022-01-01',
  '2022-01-01',
  '2022-01-09 00:00:00',
  '2022-01-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lago-della-gherardesca-92463110',
  NULL,
  43.780647,
  10.60673,
  'POINT(10.60673 43.780647)',
  'e5a198f1169cfa7f2f35020eae8a4a689dadc76750700342aac1a41e3388e74f',
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
VALUES (92463110, 'https://it.wikiloc.com/percorsi-escursionismo/lago-della-gherardesca-92463110', NOW(), 'e5a198f1169cfa7f2f35020eae8a4a689dadc76750700342aac1a41e3388e74f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92463110);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92463110/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

COMMIT;

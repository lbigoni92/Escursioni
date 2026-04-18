BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  91571972,
  'Salivoli - Punta Falcone',
  'In questa passeggiata ho visitato la località chiamata Punta Falcone, a Salivoli. Sentieri sono semplici da percorrere e i sentieri sono quasi obligati, non ci si può perdere... Interessanti sono i punti che possiamo visitare : - Osservatorio astronomico - Vari Bunker della 2° guerra mondiale (museo all''aperto) - Calette Varie (dove abbiamo pranzato). Possiamo osservare numerose piante sulle quali vi è apposta una targhetta per riconoscere che pianta sia. Per altre informazioni chiedetemi e Seguitemi!',
  'In questa passeggiata ho visitato la località chiamata Punta Falcone, a Salivoli. <br> <br>Sentieri sono semplici da percorrere e i sentieri sono quasi obligati, non ci si può perdere... <br>Interessanti sono i punti che possiamo visitare : <br>- Osservatorio astronomico <br>- Vari Bunker della 2° guerra mondiale (museo all''aperto) <br>- Calette Varie (dove abbiamo pranzato). <br> <br>Possiamo osservare numerose piante sulle quali vi è apposta una targhetta per riconoscere che pianta sia. <br>Per altre informazioni chiedetemi e Seguitemi!',
  'Tutte le Attività e Paesi',
  1.38,
  54,
  27,
  93,
  25,
  '00:25',
  25,
  '00:25',
  237,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Salivoli',
  '2021-12-01',
  '2021-12-01',
  '2021-12-29 00:00:00',
  '2021-12-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/salivoli-punta-falcone-91571972',
  NULL,
  42.934217,
  10.499638,
  'POINT(10.499638 42.934217)',
  'c1a79841165814baf8b7b9237a8d67f74ea4ec0f36b8dc60c140376dc4f7e1fa',
  'Escursione a Salivoli: Punta Falcone, sentiero facile e affascinante! Osservatorio, bunker WWII & calette per il pranzo. Natura e storia ti aspettano!',
  NULL,
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
  titolo_seo = EXCLUDED.titolo_seo,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (91571972, 'https://it.wikiloc.com/percorsi-escursionismo/salivoli-punta-falcone-91571972', NOW(), 'c1a79841165814baf8b7b9237a8d67f74ea4ec0f36b8dc60c140376dc4f7e1fa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 91571972);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/91571972/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

COMMIT;

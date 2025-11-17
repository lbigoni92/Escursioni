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
  126197856,
  'Asciano - Mirteto - Faeta - Buca delle fate (Sughereta)',
  'Bel giro a partire da Asciano con una bella salita fino al Fateta con una tappa al Mirteto, Fino al Faeta è una bella salita, ma la vista, se non c''è nebbia ripaga gli sforzi. In seguito ci siamo diretti a Campo di Croce e Foce di Caci... per poi proseguire verso la Buca delle fate con rientro ad Asciano. Il Mirteto è un borgo monastico situato sui Monti Pisani in Toscana, Italia. Si trova nel comune di San Giuliano Terme, ad un''altitudine di circa 282 m s.l.m. sopra il paese di Asciano. Il complesso comprende una chiesa romanica del XII secolo, dedicata a Santa Maria di Mirteto, e altri edifici come abitazioni, forni e cantine. Il complesso è in stato di degrado e pericolante e l''accesso è vietato. Il toponimo "Mirteto" deriva dalla presenza di piante di mirto nell''area, almeno durante il periodo in cui il monastero era ancora abitato. La chiesa era dipendente dalla Badia di San Michele alla Verruca, ma fu danneggiata durante una guerra locale nel 1432. I monaci si trasferirono altrove e l''edificio religioso divenne un oratorio privato nel 1712. Il complesso fu abbandonato nel corso del XX secolo.',
  'Bel giro a partire da Asciano con una bella salita fino al Fateta con una tappa al Mirteto, Fino al Faeta è una bella salita, ma la vista, se non c''è nebbia ripaga gli sforzi. <br>In seguito ci siamo diretti a Campo di Croce e Foce di Caci... per poi proseguire verso la Buca delle fate con rientro ad Asciano. <br> <br>Il Mirteto è un borgo monastico situato sui Monti Pisani in Toscana, Italia. Si trova nel comune di San Giuliano Terme, ad un''altitudine di circa 282 m s.l.m. sopra il paese di Asciano. Il complesso comprende una chiesa romanica del XII secolo, dedicata a Santa Maria di Mirteto, e altri edifici come abitazioni, forni e cantine. <br> <br>Il complesso è in stato di degrado e pericolante e l''accesso è vietato. Il toponimo "Mirteto" deriva dalla presenza di piante di mirto nell''area, almeno durante il periodo in cui il monastero era ancora abitato. La chiesa era dipendente dalla Badia di San Michele alla Verruca, ma fu danneggiata durante una guerra locale nel 1432. I monaci si trasferirono altrove e l''edificio religioso divenne un oratorio privato nel 1712. Il complesso fu abbandonato nel corso del XX secolo.',
  'Tutte le Attività e Paesi',
  16.73,
  1,
  11,
  832,
  221,
  '03:41',
  221,
  '03:41',
  2532,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Il Prato',
  '2023-02-01',
  '2023-02-01',
  '2023-02-18 00:00:00',
  '2023-02-18 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/asciano-mirteto-faeta-buca-delle-fate-sughereta-126197856',
  NULL,
  43.749488,
  10.468505,
  'POINT(10.468505 43.749488)',
  '73cb3b4f2227685335e26627716e8e8749666cb1dba5c3630c3ff4d1c04c1694',
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
VALUES (126197856, 'https://it.wikiloc.com/percorsi-escursionismo/asciano-mirteto-faeta-buca-delle-fate-sughereta-126197856', NOW(), '73cb3b4f2227685335e26627716e8e8749666cb1dba5c3630c3ff4d1c04c1694')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 126197856);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/126197856/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

COMMIT;

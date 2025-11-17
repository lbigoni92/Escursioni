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
  87727616,
  'Anello: Livorno - Montenero - Castellaccio',
  'Il Percorso è alla portata di tutti e non presenta problemi tecnici, praticabile con ogni condizione meteo e in ogni periodo dell''anno. Per effettuarlo d''estate basta un litro d''acqua e magari qualche top alle fontanelle, d''inverno lo faccio con meno di mezzo litro. Le fontanelle d''acqua sono sempre aperte in ogni periodo dell''anno. Lungo il percorso si passa davanti a due sue luoghi storici: Il monumento ai caduti e il Santuario di Montenero. Consiglio il percorso a principianti o a chi ha solo un pio d''ore per fare un giro in bici, carino ma non esaltante. Punti storici : Monumento ai caduti e Monastero di Montenero',
  'Il Percorso è alla portata di tutti e non presenta problemi tecnici, praticabile con ogni condizione meteo e in ogni periodo dell''anno. <br> <br>Per effettuarlo d''estate basta un litro d''acqua e magari qualche top alle fontanelle, d''inverno lo faccio con meno di mezzo litro. <br> <br>Le fontanelle d''acqua sono sempre aperte in ogni periodo dell''anno. <br> <br>Lungo il percorso si passa davanti a due sue luoghi storici: Il monumento ai caduti e il Santuario di Montenero. <br> <br>Consiglio il percorso a principianti o a chi ha solo un pio d''ore per fare un giro in bici, carino ma non esaltante. <br> <br>Punti storici : Monumento ai caduti e Monastero di Montenero',
  'Tutte le Attività e Paesi',
  28.68,
  366,
  13,
  333,
  135,
  '02:15',
  135,
  '02:15',
  3753,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fiume, Bagni',
  '2021-10-01',
  '2021-10-01',
  '2021-10-30 00:00:00',
  '2021-10-30 00:00:00',
  'https://it.wikiloc.com/percorsi-mountain-bike/anello-livorno-montenero-castellaccio-87727616',
  NULL,
  43.548205,
  10.304442,
  'POINT(10.304442 43.548205)',
  '8e9b41c54d53d961b8f76709cb3f37431dddef5c58a8c3dff1c7b938183a6227',
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
VALUES (87727616, 'https://it.wikiloc.com/percorsi-mountain-bike/anello-livorno-montenero-castellaccio-87727616', NOW(), '8e9b41c54d53d961b8f76709cb3f37431dddef5c58a8c3dff1c7b938183a6227')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87727616);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87727616/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87727616/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87727616;

COMMIT;

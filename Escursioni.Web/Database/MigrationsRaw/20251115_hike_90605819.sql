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
  90605819,
  'Vorno - Campo croce - Monte Faeta - Verruchino - Spuntone - Santallago',
  'Sentieri seguiti : Da Vorno abbiamo imbucato il 124 fino a Campo croce da li abbiamo proseguito sul sentiero 00 al Monte Faeta all''andata abbiamo preso la direttissima mentre al rientro abbiamo fatto un anello più dolce abbiamo proseguito in direzione del Verrichino e rientrati a Campo Croce e riabbiamo proseguito sullo 00 fino Sant''allago (facendo una tappa allo Spuntone dove possiamo vedere un Croce)da li abbiamo proseguito su una strada sterrata fino quasi al monte Zano dove abbiamo deviato per un sentiero CAI(non ricordo il numero). Percorso non proprio banale specialmente in 2 punti: Tratto finale (ultimo km di sentiero) l''abbiamo fatto al buio e era scivoloso. attacco da campo a croce in direzione Spuntone (una bella salita) Per il resto non ci sono difficoltà tecniche. Abbiamo trovato la neve a Santallago ma niente di problematico, anzi è stato piacevole. Non provate a seguire dei sentieri non battiti come abbiamo fatto noi i sentieri che riportano al 124 dalla strada del ritorno sono completamente abbandonati. Per altre informazioni chiedetemi e Seguitemi!',
  'Sentieri seguiti : <br>Da Vorno abbiamo imbucato il 124 fino a Campo croce da li abbiamo proseguito sul sentiero 00 al Monte Faeta all''andata abbiamo preso la direttissima mentre al rientro abbiamo fatto un anello più dolce abbiamo proseguito in direzione del Verrichino e rientrati a Campo Croce e riabbiamo proseguito sullo 00 fino Sant''allago (facendo una tappa allo Spuntone dove possiamo vedere un Croce)da li abbiamo proseguito su una strada sterrata fino quasi al monte Zano dove abbiamo deviato per un sentiero CAI(non ricordo il numero). <br> <br> <br>Percorso non proprio banale specialmente in 2 punti: <br>Tratto finale (ultimo km di sentiero) l''abbiamo fatto al buio e era scivoloso. <br>attacco da campo a croce in direzione Spuntone (una bella salita) <br> <br>Per il resto non ci sono difficoltà tecniche. <br> <br>Abbiamo trovato la neve a Santallago ma niente di problematico, anzi è stato piacevole. <br> <br> <br>Non provate a seguire dei sentieri non battiti come abbiamo fatto noi i sentieri che riportano al 124 dalla strada del ritorno sono completamente abbandonati. <br>Per altre informazioni chiedetemi e Seguitemi!',
  'Tutte le Attività e Paesi',
  20.59,
  1,
  77,
  875,
  135,
  '02:15',
  135,
  '02:15',
  2520,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vorno',
  '2021-12-01',
  '2021-12-01',
  '2021-12-11 00:00:00',
  '2021-12-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vorno-campo-croce-monte-faeta-verruchino-spuntone-santallago-90605819',
  NULL,
  43.785107,
  10.512348,
  'POINT(10.512348 43.785107)',
  '2ccd5a138f125fe2b4ad8311d927af18349c9fae22f46e3e42a15bc0cc76769e',
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
VALUES (90605819, 'https://it.wikiloc.com/percorsi-escursionismo/vorno-campo-croce-monte-faeta-verruchino-spuntone-santallago-90605819', NOW(), '2ccd5a138f125fe2b4ad8311d927af18349c9fae22f46e3e42a15bc0cc76769e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 90605819);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/90605819/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

COMMIT;

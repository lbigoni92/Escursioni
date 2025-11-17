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
  156445141,
  'Vecchiano - Monte Spazzavento - Monte del Legnaio - Friends In Trekking',
  'Percorso che nella sua interezza è turistico, tranne la parte escursionistica che riguarda l''appendice (opzionale) che porta allo Spazzavento. Abbiamo parcheggiato nei pressi del sentiero così da imboccarlo subito il sentiero 103 (Anello di Vecchiano https://hiking.waymarkedtrails.org/#route?id=3567833&map=15.0/43.7936/10.3952) si presenta quasi sempre largo e due persone possono passare affianco il percorso seguito dalla traccia allontana il sentiero cai in tre punti: 1) appendice per arrivare al Santuario di Santa Maria in Castello 2)per arrivare al monte Spazzavento, parte che se si vuole possiamo evitare c''è un pò di ghiaia e in dicesa si deve prestare attenzione 3) Il tratto che porta al Monte del Legnaio. Il dislivello non impegna mai il fisico tranne forse nel tratto che porta al Monte del Legnaio a sono pochi metri, sicuramente un no nulla per qualcuno abituato a camminare. Abbiamo toccato i seguenti Punti: - La chiesa di Santa Maria in Castello si trova a Vecchiano, la chiesa risulta esistente fin dal 1136, compresa nell''antico castello di Vecchiano citato già nel 1120 nei documenti della cattedrale pisana.La chiesa, divenuta santuario durante il Giubileo del 2000, ha l''uso liturgico riservato al pievano di Vecchiano - Monte Spazzavento (156mt) - Monte Legnaio (183mt)',
  'Percorso che nella sua interezza è turistico, tranne la parte escursionistica che riguarda l''appendice (opzionale) che porta allo Spazzavento. <br> <br>Abbiamo parcheggiato nei pressi del sentiero così da imboccarlo subito il sentiero 103 (Anello di Vecchiano https://hiking.waymarkedtrails.org/#route?id=3567833&map=15.0/43.7936/10.3952) si presenta quasi sempre largo e due persone possono passare affianco il percorso seguito dalla traccia allontana il sentiero cai in tre punti: <br>1) appendice per arrivare al Santuario di Santa Maria in Castello <br>2)per arrivare al monte Spazzavento, parte che se si vuole possiamo evitare c''è un pò di ghiaia e in dicesa si deve prestare attenzione <br>3) Il tratto che porta al Monte del Legnaio. <br>Il dislivello non impegna mai il fisico tranne forse nel tratto che porta al Monte del Legnaio a sono pochi metri, sicuramente un no nulla per qualcuno abituato a camminare. <br> <br>Abbiamo toccato i seguenti Punti: <br>- La chiesa di Santa Maria in Castello si trova a Vecchiano, la chiesa risulta esistente fin dal <br> 1136, compresa nell''antico castello di Vecchiano citato già nel 1120 nei documenti della <br> cattedrale pisana.La chiesa, divenuta santuario durante il Giubileo del 2000, ha l''uso <br> liturgico riservato al pievano di Vecchiano <br>- Monte Spazzavento (156mt) <br>- Monte Legnaio (183mt)',
  'Tutte le Attività e Paesi',
  10.63,
  475,
  20,
  180,
  159,
  '02:39',
  159,
  '02:39',
  1805,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2023-12-01',
  '2023-12-01',
  '2023-12-24 00:00:00',
  '2023-12-24 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-spazzavento-monte-del-legnaio-friends-in-trekking-156445141',
  NULL,
  43.78511,
  10.384847,
  'POINT(10.384847 43.78511)',
  '0b4f0625d48c28062bb3e19047d4b1dd6c8b45177e65d8925b1e1db3ac894af3',
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
VALUES (156445141, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-spazzavento-monte-del-legnaio-friends-in-trekking-156445141', NOW(), '0b4f0625d48c28062bb3e19047d4b1dd6c8b45177e65d8925b1e1db3ac894af3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 156445141);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/156445141/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

COMMIT;

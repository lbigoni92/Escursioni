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
  204197595,
  'Ciaspolata ~ Passo della Calanca, Lago Scaffaiolo e Monte Spigolino da Doganaccia',
  'Percorso ad anello da Doganaccia con tappe suggestive lungo il tragitto: Chiesetta della Doganaccia (0,2 km) Passo della Calanca (2,9 km) Lago Scaffaiolo (4,2 km) Lago d''Acqua Marcia (4,8 km) Monte Spigolino (6,0 km) L’escursione è generalmente facile, ma in alcuni tratti abbiamo dovuto deviare dal sentiero a causa delle condizioni della neve. Con le ciaspole, alcune zone normalmente percorribili risultavano impraticabili, mentre altre diventavano più accessibili. Non ci sono salite particolarmente impegnative, ad eccezione della salita verso lo Spigolino, che con un po'' di calma si affronta senza problemi. In estate, il percorso risulta ancora più agevole. Sentieri seguiti: 66 e Sentiero Italia all''andata 286 al ritorno Si tratta di sentieri semplici ed escursionistici, ma è bene fare attenzione perché in un paio di punti attraversano delle piste da sci. Abbiamo pranzato al Rifugio Duca degli Abruzzi, dove ci siamo trovati benissimo: cibo buono, prezzi contenuti e un’accoglienza calorosa. La neve variava molto lungo il percorso: in alcuni punti raggiungeva i 2-3 metri, mentre in altri era sorprendentemente scarsa. Il Lago Scaffaiolo, invece, era completamente sommerso dalla neve, risultando praticamente invisibile.',
  'Percorso ad anello da Doganaccia con tappe suggestive lungo il tragitto: <br> <br>Chiesetta della Doganaccia (0,2 km) <br>Passo della Calanca (2,9 km) <br>Lago Scaffaiolo (4,2 km) <br>Lago d''Acqua Marcia (4,8 km) <br>Monte Spigolino (6,0 km) <br>L’escursione è generalmente facile, ma in alcuni tratti abbiamo dovuto deviare dal sentiero a causa delle condizioni della neve. Con le ciaspole, alcune zone normalmente percorribili risultavano impraticabili, mentre altre diventavano più accessibili. <br> <br>Non ci sono salite particolarmente impegnative, ad eccezione della salita verso lo Spigolino, che con un po'' di calma si affronta senza problemi. In estate, il percorso risulta ancora più agevole. <br> <br>Sentieri seguiti: <br> <br>66 e Sentiero Italia all''andata <br>286 al ritorno <br>Si tratta di sentieri semplici ed escursionistici, ma è bene fare attenzione perché in un paio di punti attraversano delle piste da sci. <br> <br>Abbiamo pranzato al Rifugio Duca degli Abruzzi, dove ci siamo trovati benissimo: cibo buono, prezzi contenuti e un’accoglienza calorosa. <br> <br>La neve variava molto lungo il percorso: in alcuni punti raggiungeva i 2-3 metri, mentre in altri era sorprendentemente scarsa. Il Lago Scaffaiolo, invece, era completamente sommerso dalla neve, risultando praticamente invisibile.',
  'Tutte le Attività e Paesi',
  9.46,
  409,
  1,
  1,
  193,
  '03:13',
  193,
  '03:13',
  1694,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Doganaccia',
  '2025-03-01',
  '2025-03-01',
  '2025-03-08 00:00:00',
  '2025-03-08 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/ciaspolata-passo-della-calanca-lago-scaffaiolo-e-monte-spigolino-da-doganaccia-204197595',
  NULL,
  44.121525,
  10.77653,
  'POINT(10.77653 44.121525)',
  '5f61767092b6d65b7c703ff90bee98bafcf9ed10e6bb51d19e840f483db0928c',
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
VALUES (204197595, 'https://it.wikiloc.com/percorsi-escursionismo/ciaspolata-passo-della-calanca-lago-scaffaiolo-e-monte-spigolino-da-doganaccia-204197595', NOW(), '5f61767092b6d65b7c703ff90bee98bafcf9ed10e6bb51d19e840f483db0928c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 204197595);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/204197595/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/204197595/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 204197595;

COMMIT;

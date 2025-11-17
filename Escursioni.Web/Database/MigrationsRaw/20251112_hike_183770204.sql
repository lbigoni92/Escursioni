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
  183770204,
  'Castle of Karlštejn - Castello di Karlštejn',
  'Castle reached by train from Prague, trains run approximately every 30 minutes and cost about 2.5 euros per person there and 2.5 euros back, quite cheap, the cost for the visit to the castle is 12 EURO PER PERSON! and the visit is necessarily guided, decide for yourself whether to go, we probably wouldn''t go back. Castello raggiunto in treno da Praga, i treni ci sono circa ogni 30 minuti e corstano sui 2.5 euro a persona andata e 2.5 ritorno, abbastanza economico,il costo per la visita al castello è 12 EURO A TESTA!e la visita è per forza guidata valutate voi de andare, noi forse non ci si ritornerebbe. Carlo IV di Lussemburgo commissionò, nell''arco del suo periodo a capo del Regno di Boemia, l''edificazione di vari castelli: tra questi spicca il complesso del Karlštejn, da lui voluto allo scopo primario di avere un luogo sicuro per riporre i gioielli della corona, gli archivi di Stato e la biblioteca, che sarebbero rimasti in quella sede per quasi duecento anni. La costruzione del castello prese avvio nel 1348 per ordine di Carlo IV; l''edificio era sostanzialmente terminato nel 1365, quando venne dedicata la cappella della Santa Croce nella torre maggiore. Nel corso dei secoli, il castello venne rimaneggiato più volte: nel 1480 in stile gotico, nel XVI secolo in stile rinascimentale e tra il 1887 e il 1899 in stile neogotico. Negli anni 1520-1530 fu edificato il palazzo del Burgravio. Nel 1620, durante la guerra dei trent''anni, fu conquistato dal Feldmaresciallo Karel Bonaventura Buquoy e sottoposto all''autorità imperiale di Ferdinando II.',
  'Castle reached by train from Prague, trains run approximately every 30 minutes and cost about 2.5 euros per person there and 2.5 euros back, quite cheap, the cost for the visit to the castle is 12 EURO PER PERSON! and the visit is necessarily guided, decide for yourself whether to go, we probably wouldn''t go back. <br> <br>Castello raggiunto in treno da Praga, i treni ci sono circa ogni 30 minuti e corstano sui 2.5 euro a persona andata e 2.5 ritorno, abbastanza economico,il costo per la visita al castello è 12 EURO A TESTA!e la visita è per forza guidata valutate voi de andare, noi forse non ci si ritornerebbe. <br> <br> <br>Carlo IV di Lussemburgo commissionò, nell''arco del suo periodo a capo del Regno di Boemia, l''edificazione di vari castelli: tra questi spicca il complesso del Karlštejn, da lui voluto allo scopo primario di avere un luogo sicuro per riporre i gioielli della corona, gli archivi di Stato e la biblioteca, che sarebbero rimasti in quella sede per quasi duecento anni. <br> <br>La costruzione del castello prese avvio nel 1348 per ordine di Carlo IV; l''edificio era sostanzialmente terminato nel 1365, quando venne dedicata la cappella della Santa Croce nella torre maggiore. <br> <br>Nel corso dei secoli, il castello venne rimaneggiato più volte: nel 1480 in stile gotico, nel XVI secolo in stile rinascimentale e tra il 1887 e il 1899 in stile neogotico. <br> <br>Negli anni 1520-1530 fu edificato il palazzo del Burgravio. <br> <br>Nel 1620, durante la guerra dei trent''anni, fu conquistato dal Feldmaresciallo Karel Bonaventura Buquoy e sottoposto all''autorità imperiale di Ferdinando II.',
  'Tutte le Attività e Paesi',
  5.2,
  175,
  80,
  349,
  NULL,
  NULL,
  NULL,
  NULL,
  765,
  'Medio',
  'Anello',
  NULL,
  'Repubblica Ceca',
  'Středočeský Kraj',
  'Poučník',
  '2024-09-01',
  '2024-09-01',
  '2024-09-05 00:00:00',
  '2024-09-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castle-of-karlstejn-castello-di-karlstejn-183770204',
  NULL,
  49.932073,
  14.175143,
  'POINT(14.175143 49.932073)',
  '7381107d62343f3a24371cb308d8c2faaf54f0521dd5e26615a02d19d94c5ef5',
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
VALUES (183770204, 'https://it.wikiloc.com/percorsi-escursionismo/castle-of-karlstejn-castello-di-karlstejn-183770204', NOW(), '7381107d62343f3a24371cb308d8c2faaf54f0521dd5e26615a02d19d94c5ef5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183770204);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183770204/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

COMMIT;

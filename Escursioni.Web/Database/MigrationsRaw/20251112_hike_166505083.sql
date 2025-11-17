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
  166505083,
  'Bargana - Monte Brugiana - La Rocchetta - Bergiola Maggiore',
  'Percorso ad anello anche se nel primo tratto non ha registrato. Premetto che non tutti i percorsi che abbiamo non sono sulle cartine perchè sono nuovi. Sismo partiti da Bergiola e da li abbiamo proseguito sino al memoriale, passando per Via Bergiola e tagliando per sentieri laterali sino ad arrivare al Memoriale. Dal Memoriale Abbiamo proseguito via bergiola sino a un cancello(segnato dal cai) che abbiamo aperto e richiuso per l''attacco vero e proprio al monte Bergiola. La salita è un pò ripida ma niente di che per chi è abituato porta all''attacco del 152( c''è dei piccoli tratti stretti con una lieve esposizione ma niente di particolare). Il monte con la sua croce regalano un panorama mozzafiato che va dalla liguria all''elba. Da qua abbiamo proseguito per la seconda vetta del monte (152 EE) che presenta solo una piccola discesa a cui si deve fare attenzione. Dalal seconda vetta si voleva fare la Ferratina di Brugiana ma non abbiamo trovato l''attacco in discesa e abbiamo deciso di proseguire per il151. (tornando in dietro abbiamo visto da dov''era l''attacco ma il cavo non è ben messo forse è meglio non averla fatta). Abbiamo proseguito fino alla sella della Rocchetta da li abbiamo attaccato la cresta della Rocchetta. La cresta è forse più semplice di quanto non sembri... ma presenta un tratto di scalatina di 7 metri da fare cn attenzione in quanto delle pietre sono friabili e se non si è attenti rimangono in mano, il resto è percorribile su un sentiero molto stretto laterale PRESTATE MOLTA ATTENZIONE! La croce delle scalette non è sul monte segnato dalla cartina ma sulla cima accanto. Il rientro è stato semplice e siamo passati per Bergiola maggiore dove abbiamo visitato il paese. Sentiero non per principianti e a tratti Impegnativo prestare attenzione.',
  'Percorso ad anello anche se nel primo tratto non ha registrato. <br>Premetto che non tutti i percorsi che abbiamo non sono sulle cartine perchè sono nuovi. <br>Sismo partiti da Bergiola e da li abbiamo proseguito sino al memoriale, passando per Via Bergiola e tagliando per sentieri laterali sino ad arrivare al Memoriale. <br>Dal Memoriale Abbiamo proseguito via bergiola sino a un cancello(segnato dal cai) che abbiamo aperto e richiuso per l''attacco vero e proprio al monte Bergiola. <br>La salita è un pò ripida ma niente di che per chi è abituato porta all''attacco del 152( c''è dei piccoli tratti stretti con una lieve esposizione ma niente di particolare). <br>Il monte con la sua croce regalano un panorama mozzafiato che va dalla liguria all''elba. <br>Da qua abbiamo proseguito per la seconda vetta del monte (152 EE) che presenta solo una piccola discesa a cui si deve fare attenzione. <br>Dalal seconda vetta si voleva fare la Ferratina di Brugiana ma non abbiamo trovato l''attacco in discesa e abbiamo deciso di proseguire per il151. (tornando in dietro abbiamo visto da dov''era l''attacco ma il cavo non è ben messo forse è meglio non averla fatta). <br>Abbiamo proseguito fino alla sella della Rocchetta da li abbiamo attaccato la cresta della Rocchetta. <br>La cresta è forse più semplice di quanto non sembri... ma presenta un tratto di scalatina di 7 metri da fare cn attenzione in quanto delle pietre sono friabili e se non si è attenti rimangono in mano, il resto è percorribile su un sentiero molto stretto laterale PRESTATE MOLTA ATTENZIONE! <br> <br>La croce delle scalette non è sul monte segnato dalla cartina ma sulla cima accanto. <br> <br>Il rientro è stato semplice e siamo passati per Bergiola maggiore dove abbiamo visitato il paese. <br> <br>Sentiero non per principianti e a tratti Impegnativo prestare attenzione.',
  'Tutte le Attività e Paesi',
  12.79,
  779,
  407,
  978,
  202,
  '03:22',
  202,
  '03:22',
  2128,
  'Difficile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Bargana',
  '2024-04-01',
  '2024-04-01',
  '2024-04-07 00:00:00',
  '2024-04-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/bargana-monte-brugiana-la-rocchetta-bergiola-maggiore-166505083',
  NULL,
  44.053918,
  10.152148,
  'POINT(10.152148 44.053918)',
  '8d3f037dc02eae857d29163f19795b5920dbd1cf5dd5963d8928d06af13973b4',
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
VALUES (166505083, 'https://it.wikiloc.com/percorsi-escursionismo/bargana-monte-brugiana-la-rocchetta-bergiola-maggiore-166505083', NOW(), '8d3f037dc02eae857d29163f19795b5920dbd1cf5dd5963d8928d06af13973b4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 166505083);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/166505083/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/166505083/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 166505083;

COMMIT;

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
  233734502,
  'Anello del Monte dei Ronchi, Monte delle Tavole e Monte Altissimo dalle Cave del Cipollaio',
  'Bellissimo anello sulle Apuane settentrionali, con panorami spettacolari lungo tutto il percorso. L’itinerario non presenta difficoltà tecniche particolari ma richiede passo sicuro, attenzione ai tratti umidi e un minimo di orientamento. Siamo partiti dal parcheggio subito dopo la Galleria del Cipollaio (840 m, strada provinciale di Arni). Subito attraversiamo un ponte con qualche buca da affrontare con cautela, quindi proseguiamo verso una cava abbandonata. Poco dopo deviamo a sinistra su un sentiero ripido, segnalato da ometti e segni blu, che ci accompagneranno nella salita al Monte dei Ronchi. La cresta non è difficile, ma faticosa e con molte roccette dove serve attenzione: non ci sono punti particolarmente esposti; la discesa dal Ronchi è piuttosto insidiosa se il terreno è umido. Raggiunta la strada marmifera, il percorso diventa più semplice fino al Passo del Vaso Tondo (1382 m). Da qui abbiamo deciso di salire anche al Monte Altissimo (200 m di dislivello circa dal passo): il tratto non presenta ostacoli o passaggi esposti e in vetta ci ha accolto una splendida visuale e persino un caffè offerto dagli amici del CAI di La Spezia. Dopo essere tornati al passo, abbiamo proseguito in direzione delle Cave delle Cervaiole. Abbiamo salito il monte dal versante est fino alla cima del Monte delle Tavole (1463 m). Anche questa cima regala belle vedute, con solo qualche tratto roccioso e alcune buche lungo il percorso. Abbiamo aggiunto qualche ometto per rendere più chiara la traccia, anche se rimane ancora un po’ poco segnata. Dalla Cava delle Cervaiole, un sentiero di cavatori riporta allo stradello asfaltato. Superata la sbarra, deviamo a sinistra nel bosco e scendiamo seguendo il Rio Freddone fino a ritornare al piazzale accanto alla galleria del Cipollaio, chiudendo così l’anello dopo qualche facile roccetta. Note: giro lungo e vario, con continui saliscendi, ambienti spettacolari e panorami su tutta la catena apuana. Consigliato aggiungere ometti nei tratti poco segnati.',
  'Bellissimo anello sulle Apuane settentrionali, con panorami spettacolari lungo tutto il percorso. L’itinerario non presenta difficoltà tecniche particolari ma richiede passo sicuro, attenzione ai tratti umidi e un minimo di orientamento. <br> <br>Siamo partiti dal parcheggio subito dopo la Galleria del Cipollaio (840 m, strada provinciale di Arni). Subito attraversiamo un ponte con qualche buca da affrontare con cautela, quindi proseguiamo verso una cava abbandonata. Poco dopo deviamo a sinistra su un sentiero ripido, segnalato da ometti e segni blu, che ci accompagneranno nella salita al Monte dei Ronchi. La cresta non è difficile, ma faticosa e con molte roccette dove serve attenzione: non ci sono punti particolarmente esposti; la discesa dal Ronchi è piuttosto insidiosa se il terreno è umido. <br> <br>Raggiunta la strada marmifera, il percorso diventa più semplice fino al Passo del Vaso Tondo (1382 m). Da qui abbiamo deciso di salire anche al Monte Altissimo (200 m di dislivello circa dal passo): il tratto non presenta ostacoli o passaggi esposti e in vetta ci ha accolto una splendida visuale e persino un caffè offerto dagli amici del CAI di La Spezia. <br> <br>Dopo essere tornati al passo, abbiamo proseguito in direzione delle Cave delle Cervaiole. Abbiamo salito il monte dal versante est fino alla cima del Monte delle Tavole (1463 m). Anche questa cima regala belle vedute, con solo qualche tratto roccioso e alcune buche lungo il percorso. Abbiamo aggiunto qualche ometto per rendere più chiara la traccia, anche se rimane ancora un po’ poco segnata. <br> <br>Dalla Cava delle Cervaiole, un sentiero di cavatori riporta allo stradello asfaltato. Superata la sbarra, deviamo a sinistra nel bosco e scendiamo seguendo il Rio Freddone fino a ritornare al piazzale accanto alla galleria del Cipollaio, chiudendo così l’anello dopo qualche facile roccetta. <br> <br>Note: giro lungo e vario, con continui saliscendi, ambienti spettacolari e panorami su tutta la catena apuana. Consigliato aggiungere ometti nei tratti poco segnati.',
  'Tutte le Attività e Paesi',
  12.11,
  1,
  826,
  1,
  180,
  '03:00',
  180,
  '03:00',
  2004,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Campagrina',
  '2025-09-01',
  '2025-09-01',
  '2025-09-28 00:00:00',
  '2025-09-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/anello-del-monte-dei-ronchi-monte-delle-tavole-e-monte-altissimo-dalle-cave-del-cipollaio-233734502',
  NULL,
  44.04742,
  10.262018,
  'POINT(10.262018 44.04742)',
  '808685a47f24c6b51ce44a7c56c74696ab602e04ea0c98d29018853e3dbdf733',
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
VALUES (233734502, 'https://it.wikiloc.com/percorsi-escursionismo/anello-del-monte-dei-ronchi-monte-delle-tavole-e-monte-altissimo-dalle-cave-del-cipollaio-233734502', NOW(), '808685a47f24c6b51ce44a7c56c74696ab602e04ea0c98d29018853e3dbdf733')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 233734502);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/233734502/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/233734502/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 233734502;

COMMIT;

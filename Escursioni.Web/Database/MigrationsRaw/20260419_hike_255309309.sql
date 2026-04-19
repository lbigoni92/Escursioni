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
  255309309,
  'Monte Forato Sud, Monte Forato e Foce di Petrosciana da Orzale',
  'Escursione ad anello nelle Alpi Apuane con partenza da Cardoso, in una tipica giornata primaverile. Il percorso si sviluppa in direzione Monte Forato, attraversando ambienti molto vari e panoramici. La prima tappa è il suggestivo Santuario di San Leonardo, raggiunto passando dalla caratteristica Casa Cava Casalina, un luogo particolarmente scenografico e molto fotogenico nelle giornate di sole. Si prosegue poi in direzione del Monte Forato transitando nei pressi di Casa Colombara e successivamente Casa Puccio, fino a raggiungere la Foce di Petrosciana, uno dei punti più belli dell’escursione. Da qui si gode di un doppio panorama, sia verso ovest che verso est, probabilmente uno dei migliori punti panoramici dell’intero itinerario. Dalla foce si continua in salita lungo il sentiero CAI 110. Una parte del gruppo ha deviato sulla via ferrata Salvadori, che conduce al Monte Forato Sud. Successivamente si raggiunge anche la vetta nord del Monte Forato e, per chi lo desidera, è possibile attraversare il celebre arco naturale. Il panorama lungo tutto il percorso è spettacolare, con viste sui principali rilievi delle Apuane, tra cui Pania della Croce,Monte Altissimo e numerose vette minori. La discesa avviene nuovamente passando dalla Foce di Petrosciana, proseguendo poi verso Fonte Moscoso e rientrando infine verso Cardoso. Dati tecnici e consigli Percorso impegnativo, adatto a escursionisti con un minimo di esperienza: * Lunghezza: circa 12 km * Dislivello: circa 1000 m * Pendenza: distribuita lungo il percorso, con tratti ripidi Si consiglia l’utilizzo di scarpe da trekking adeguate e una buona preparazione fisica.',
  'Escursione ad anello nelle Alpi Apuane con partenza da Cardoso, in una tipica giornata primaverile. Il percorso si sviluppa in direzione Monte Forato, attraversando ambienti molto vari e panoramici. <br> <br>La prima tappa è il suggestivo Santuario di San Leonardo, raggiunto passando dalla caratteristica Casa Cava Casalina, un luogo particolarmente scenografico e molto fotogenico nelle giornate di sole. <br> <br>Si prosegue poi in direzione del Monte Forato transitando nei pressi di Casa Colombara e successivamente Casa Puccio, fino a raggiungere la Foce di Petrosciana, uno dei punti più belli dell’escursione. Da qui si gode di un doppio panorama, sia verso ovest che verso est, probabilmente uno dei migliori punti panoramici dell’intero itinerario. <br> <br>Dalla foce si continua in salita lungo il sentiero CAI 110. Una parte del gruppo ha deviato sulla via ferrata Salvadori, che conduce al Monte Forato Sud. Successivamente si raggiunge anche la vetta nord del Monte Forato e, per chi lo desidera, è possibile attraversare il celebre arco naturale. <br> <br>Il panorama lungo tutto il percorso è spettacolare, con viste sui principali rilievi delle Apuane, tra cui Pania della Croce,Monte Altissimo e numerose vette minori. <br> <br>La discesa avviene nuovamente passando dalla Foce di Petrosciana, proseguendo poi verso Fonte Moscoso e rientrando infine verso Cardoso. <br> <br>Dati tecnici e consigli <br> <br>Percorso impegnativo, adatto a escursionisti con un minimo di esperienza: <br> <br>* Lunghezza: circa 12 km <br>* Dislivello: circa 1000 m <br>* Pendenza: distribuita lungo il percorso, con tratti ripidi <br> <br>Si consiglia l’utilizzo di scarpe da trekking adeguate e una buona preparazione fisica.',
  'Tutte le Attività e Paesi',
  11.88,
  975,
  280,
  1,
  163,
  '02:43',
  163,
  '02:43',
  1962,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Orzale',
  '2026-03-01',
  '2026-03-01',
  '2026-03-21 00:00:00',
  '2026-03-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-sud-monte-forato-e-foce-di-petrosciana-da-orzale-255309309',
  NULL,
  44.007817,
  10.317656,
  'POINT(10.317656 44.007817)',
  'c96f6faa33b851619ca5d03cebb848c9053483f83585d9a4c40affd66cedc14b',
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
VALUES (255309309, 'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-sud-monte-forato-e-foce-di-petrosciana-da-orzale-255309309', NOW(), 'c96f6faa33b851619ca5d03cebb848c9053483f83585d9a4c40affd66cedc14b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 255309309);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/255309309/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/255309309/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 255309309;

COMMIT;

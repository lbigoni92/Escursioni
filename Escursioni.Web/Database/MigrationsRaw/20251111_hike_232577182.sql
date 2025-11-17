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
  232577182,
  'Monte Procinto, Monte Nona e Foce delle Porchette da Stazzema',
  'Descrizione del percorso Partenza da Stazzema, dove abbiamo lasciato l’auto poco prima del parcheggio di Palamento. Da qui abbiamo imboccato il sentiero CAI 6, che ci ha condotti fino alle case Giorgini. Invece di proseguire come al solito sul tracciato principale, abbiamo scelto di esplorare un piccolo sentierino più in basso, mai percorso prima. Questo passa accanto a due vecchie cave, un tempo utilizzate probabilmente per estrarre materiale destinato alla produzione di tegole e materiali da costruzione. Il sentiero ci ha portati fino alla Fonte Moscoso. Poco dopo, nei pressi di una piccola edicola votiva, abbiamo imboccato un tracciato secondario non ben segnato: una sorta di “direttissima” che sale verso la Foce del Procinto. La pendenza in alcuni punti raggiunge i 40°, ma il percorso è molto suggestivo: attraversa una gola e passa sotto il ponte del Procinto. Sicuramente un’alternativa interessante per chi cerca qualcosa di diverso dal solito accesso. Raggiunta la foce, abbiamo intrapreso la Ferrata del Monte Procinto, considerata la più antica d’Italia. È un itinerario particolare: all’inizio può risultare un po’ noioso se ci sono escursionisti in senso opposto (trattandosi di un’unica via di salita e discesa), ma rimane comunque un’esperienza consigliata, soprattutto per chi affronta la sua prima ferrata. Dalla cima del Procinto siamo scesi lungo la via normale e abbiamo proseguito verso il Monte Nona, vetta facile e panoramica, senza particolari difficoltà. La discesa è avvenuta lungo la cresta nord del Nona, un percorso semplice se si ha un po’ di familiarità con il terreno apuano. Da qui abbiamo raggiunto la Foce delle Porchette e ci siamo ricongiunti con il sentiero CAI 6, che ci ha riportati al punto di partenza. Un anello impegnativo ma molto appagante: oltre 1000 m di dislivello, presenza di una via ferrata e tratti con pendenze marcate. È un itinerario che richiede buon allenamento, passo sicuro e un po’ di esperienza in montagna. In cambio regala varietà di paesaggi, scorci suggestivi e tanta avventura. Lo consiglio a chi vuole vivere un’escursione completa sulle Apuane, tra storia, panorami e adrenalina.',
  'Descrizione del percorso <br> <br>Partenza da Stazzema, dove abbiamo lasciato l’auto poco prima del parcheggio di Palamento. Da qui abbiamo imboccato il sentiero CAI 6, che ci ha condotti fino alle case Giorgini. <br> <br>Invece di proseguire come al solito sul tracciato principale, abbiamo scelto di esplorare un piccolo sentierino più in basso, mai percorso prima. Questo passa accanto a due vecchie cave, un tempo utilizzate probabilmente per estrarre materiale destinato alla produzione di tegole e materiali da costruzione. <br> <br>Il sentiero ci ha portati fino alla Fonte Moscoso. Poco dopo, nei pressi di una piccola edicola votiva, abbiamo imboccato un tracciato secondario non ben segnato: una sorta di “direttissima” che sale verso la Foce del Procinto. La pendenza in alcuni punti raggiunge i 40°, ma il percorso è molto suggestivo: attraversa una gola e passa sotto il ponte del Procinto. Sicuramente un’alternativa interessante per chi cerca qualcosa di diverso dal solito accesso. <br> <br>Raggiunta la foce, abbiamo intrapreso la Ferrata del Monte Procinto, considerata la più antica d’Italia. È un itinerario particolare: all’inizio può risultare un po’ noioso se ci sono escursionisti in senso opposto (trattandosi di un’unica via di salita e discesa), ma rimane comunque un’esperienza consigliata, soprattutto per chi affronta la sua prima ferrata. <br> <br>Dalla cima del Procinto siamo scesi lungo la via normale e abbiamo proseguito verso il Monte Nona, vetta facile e panoramica, senza particolari difficoltà. La discesa è avvenuta lungo la cresta nord del Nona, un percorso semplice se si ha un po’ di familiarità con il terreno apuano. <br> <br>Da qui abbiamo raggiunto la Foce delle Porchette e ci siamo ricongiunti con il sentiero CAI 6, che ci ha riportati al punto di partenza. <br> <br>Un anello impegnativo ma molto appagante: oltre 1000 m di dislivello, presenza di una via ferrata e tratti con pendenze marcate. È un itinerario che richiede buon allenamento, passo sicuro e un po’ di esperienza in montagna. In cambio regala varietà di paesaggi, scorci suggestivi e tanta avventura. <br> <br>Lo consiglio a chi vuole vivere un’escursione completa sulle Apuane, tra storia, panorami e adrenalina.',
  'Tutte le Attività e Paesi',
  10.88,
  1,
  516,
  1,
  156,
  '02:36',
  156,
  '02:36',
  1784,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Stazzema',
  '2025-09-01',
  '2025-09-01',
  '2025-09-20 00:00:00',
  '2025-09-20 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-procinto-monte-nona-e-foce-delle-porchette-da-stazzema-232577182',
  NULL,
  43.995964,
  10.318222,
  'POINT(10.318222 43.995964)',
  'da5a1618ecdee2f094d2b3734c0c01e597bdb571185e764530b8ac09aafd0f3a',
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
VALUES (232577182, 'https://it.wikiloc.com/percorsi-escursionismo/monte-procinto-monte-nona-e-foce-delle-porchette-da-stazzema-232577182', NOW(), 'da5a1618ecdee2f094d2b3734c0c01e597bdb571185e764530b8ac09aafd0f3a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 232577182);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/232577182/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/232577182/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 232577182;

COMMIT;

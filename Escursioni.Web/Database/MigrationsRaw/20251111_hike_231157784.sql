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
  231157784,
  'Anello Alba–Penia: Baita Locia de Contrin, Passo San Nicolò e Rifugio Contrin',
  'Percorso ad anello con partenza da Alba–Penia. L’avvio attraversa un ponticello su acque limpide e turchesi, quindi prosegue su strada sterrata alternata a sentiero fino alla Baita Locia de Contrin: qui la salita è costante ma regolare. Superato il km 1,8 il tracciato si fa più scorrevole e quasi pianeggiante, tra pascoli dove non è raro incontrare mucche, cavalli e asini. Al km 4 si raggiunge un bivio: prendendo a destra si affronta la rampa più decisa dell’itinerario, che porta verso il Passo San Nicolò. L’ascesa mette un po’ alla prova ma resta sempre su buon fondo; lungo questo tratto sono frequenti gli avvistamenti di marmotte (prime osservazioni attorno al km 5,7). Proseguendo si arriva al Passo San Nicolò (6,7 km), con ampi panorami d’alta quota. Si scende quindi verso il Rifugio Contrin (10,3 km) su sentiero comodo, immerso nei pascoli. Da qui il rientro chiude l’anello passando per Baita Cianci (11,5 km) e riconnettendosi al bivio dell’andata, per poi tornare ad Alba–Penia. Nel complesso è un itinerario semplice e ben segnalato, senza passaggi tecnici; la parte più impegnativa è la salita al Passo San Nicolò e la discesa finale, lunga e da fare con passo regolare. Percorso molto gradevole per scenari di pascolo alpino e numerosi incontri con la fauna locale, in particolare marmotte lungo la fascia alta.',
  'Percorso ad anello con partenza da Alba–Penia. L’avvio attraversa un ponticello su acque limpide e turchesi, quindi prosegue su strada sterrata alternata a sentiero fino alla Baita Locia de Contrin: qui la salita è costante ma regolare. Superato il km 1,8 il tracciato si fa più scorrevole e quasi pianeggiante, tra pascoli dove non è raro incontrare mucche, cavalli e asini. <br> <br>Al km 4 si raggiunge un bivio: prendendo a destra si affronta la rampa più decisa dell’itinerario, che porta verso il Passo San Nicolò. L’ascesa mette un po’ alla prova ma resta sempre su buon fondo; lungo questo tratto sono frequenti gli avvistamenti di marmotte (prime osservazioni attorno al km 5,7). Proseguendo si arriva al Passo San Nicolò (6,7 km), con ampi panorami d’alta quota. <br> <br>Si scende quindi verso il Rifugio Contrin (10,3 km) su sentiero comodo, immerso nei pascoli. Da qui il rientro chiude l’anello passando per Baita Cianci (11,5 km) e riconnettendosi al bivio dell’andata, per poi tornare ad Alba–Penia. <br> <br>Nel complesso è un itinerario semplice e ben segnalato, senza passaggi tecnici; la parte più impegnativa è la salita al Passo San Nicolò e la discesa finale, lunga e da fare con passo regolare. Percorso molto gradevole per scenari di pascolo alpino e numerosi incontri con la fauna locale, in particolare marmotte lungo la fascia alta.',
  'Tutte le Attività e Paesi',
  16.16,
  896,
  1,
  2,
  234,
  '03:54',
  234,
  '03:54',
  2773,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Trentino-Alto Adige',
  'Penia',
  '2025-09-01',
  '2025-09-01',
  '2025-09-11 00:00:00',
  '2025-09-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/anello-alba-penia-baita-locia-de-contrin-passo-san-nicolo-e-rifugio-contrin-231157784',
  NULL,
  46.457277,
  11.793003,
  'POINT(11.793003 46.457277)',
  '1e669cb466f0a8b1b3fea0453f7d5120ee316f14306f45fc0f5c4ff6f794f0ec',
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
VALUES (231157784, 'https://it.wikiloc.com/percorsi-escursionismo/anello-alba-penia-baita-locia-de-contrin-passo-san-nicolo-e-rifugio-contrin-231157784', NOW(), '1e669cb466f0a8b1b3fea0453f7d5120ee316f14306f45fc0f5c4ff6f794f0ec')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 231157784);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/231157784/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231157784/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231157784;

COMMIT;

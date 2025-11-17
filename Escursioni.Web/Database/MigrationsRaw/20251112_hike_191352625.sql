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
  191352625,
  'Da Minazzana al Cavallo d''Azzano per la Cresta Nord Ovest',
  'Ho messo difficile solo per il tratto opzionale altrimenti è facile. Alla conquista del Monte Cavallo con partenza da Minazzana Difficoltà: Il percorso è un anello escursionistico che non presenta particolari difficoltà, a eccezione di un lieve dislivello. Tuttavia, il tratto di salita al Monte Cavallo è consigliato solo a Escursionisti Esperti (EE). Descrizione del percorso: Il sentiero è sempre ben tracciato: Da Minazzana a "La Cappella": Si tratta di un tratto semplice, prevalentemente in discesa o pianeggiante, con numerosi punti panoramici ideali per scattare foto. Da "La Cappella" ad Azzano: Percorso con lievi saliscendi. La prima parte è aperta, offrendo viste su ex cave e diversi siti minerali. A un certo punto, abbiamo preso una via laterale per raggiungere direttamente Azzano. Da Azzano alla Fornace: Questo tratto è in salita e presenta il maggiore dislivello dell’anello (esclusa la salita al Monte Cavallo). Il sentiero è ampio e facilmente percorribile. Dalla Fornace all’attacco del Monte Cavallo: Leggera salita su un sentiero largo e facilmente percorribile. Dall’attacco del Monte Cavallo all’inizio della cresta: Tratto nel bosco, non segnato, da percorrere seguendo il GPS e l''intuito. A un certo punto è necessario farsi strada tra cespugli per raggiungere le prime roccette; non è difficile, solo un po’ laborioso. Dall’inizio della cresta all’incontro con la via normale: Alcuni punti richiedono brevi arrampicate su rocce (mai oltre il 1° grado di difficoltà). La camminata è agevole, a parte qualche ginestra pungente. L’unica difficoltà incontrata è stata qualche roccia bagnata all’inizio. Dall’incrocio alla vetta: Alternanza di rocce, ginestre e cespugli. Consiglio di proseguire sulle rocce quando possibile fino a raggiungere la vetta. Dalla vetta al sentiero: Il tratto è infestato da felci; è consigliabile percorrerlo in inverno. Tratto finale dell’anello: Privo di difficoltà. In sintesi, i tratti di salita e discesa del Monte Cavallo presentano qualche difficoltà e sono classificabili come EE, ma restano comunque affrontabili. Percorso: Il tragitto è bello e rappresenta la via più semplice per arrivare al Monte Cavallo. La cresta sud è più impegnativa e selvaggia, quindi la sconsiglio.',
  'Ho messo difficile solo per il tratto opzionale altrimenti è facile. <br>Alla conquista del Monte Cavallo con partenza da Minazzana <br>Difficoltà: Il percorso è un anello escursionistico che non presenta particolari difficoltà, a eccezione di un lieve dislivello. Tuttavia, il tratto di salita al Monte Cavallo è consigliato solo a Escursionisti Esperti (EE). <br> <br>Descrizione del percorso: Il sentiero è sempre ben tracciato: <br> <br>Da Minazzana a "La Cappella": Si tratta di un tratto semplice, prevalentemente in discesa o pianeggiante, con numerosi punti panoramici ideali per scattare foto. <br> <br>Da "La Cappella" ad Azzano: Percorso con lievi saliscendi. La prima parte è aperta, offrendo viste su ex cave e diversi siti minerali. A un certo punto, abbiamo preso una via laterale per raggiungere direttamente Azzano. <br> <br>Da Azzano alla Fornace: Questo tratto è in salita e presenta il maggiore dislivello dell’anello (esclusa la salita al Monte Cavallo). Il sentiero è ampio e facilmente percorribile. <br> <br>Dalla Fornace all’attacco del Monte Cavallo: Leggera salita su un sentiero largo e facilmente percorribile. <br> <br>Dall’attacco del Monte Cavallo all’inizio della cresta: Tratto nel bosco, non segnato, da percorrere seguendo il GPS e l''intuito. A un certo punto è necessario farsi strada tra cespugli per raggiungere le prime roccette; non è difficile, solo un po’ laborioso. <br> <br>Dall’inizio della cresta all’incontro con la via normale: Alcuni punti richiedono brevi arrampicate su rocce (mai oltre il 1° grado di difficoltà). La camminata è agevole, a parte qualche ginestra pungente. L’unica difficoltà incontrata è stata qualche roccia bagnata all’inizio. <br> <br>Dall’incrocio alla vetta: Alternanza di rocce, ginestre e cespugli. Consiglio di proseguire sulle rocce quando possibile fino a raggiungere la vetta. <br> <br>Dalla vetta al sentiero: Il tratto è infestato da felci; è consigliabile percorrerlo in inverno. <br> <br>Tratto finale dell’anello: Privo di difficoltà. <br> <br>In sintesi, i tratti di salita e discesa del Monte Cavallo presentano qualche difficoltà e sono classificabili come EE, ma restano comunque affrontabili. <br> <br>Percorso: Il tragitto è bello e rappresenta la via più semplice per arrivare al Monte Cavallo. La cresta sud è più impegnativa e selvaggia, quindi la sconsiglio.',
  'Tutte le Attività e Paesi',
  12.62,
  909,
  362,
  1,
  169,
  '02:49',
  169,
  '02:49',
  1854,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Minazzana',
  '2024-11-01',
  '2024-11-01',
  '2024-11-10 00:00:00',
  '2024-11-10 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/da-minazzana-al-cavallo-dazzano-per-la-cresta-nord-ovest-191352625',
  NULL,
  44.002913,
  10.24329,
  'POINT(10.24329 44.002913)',
  '0a82652341e82c939debec080f90afc6bc56b4e235df7fb2ecb7636ca0f71c4b',
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
VALUES (191352625, 'https://it.wikiloc.com/percorsi-escursionismo/da-minazzana-al-cavallo-dazzano-per-la-cresta-nord-ovest-191352625', NOW(), '0a82652341e82c939debec080f90afc6bc56b4e235df7fb2ecb7636ca0f71c4b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 191352625);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/191352625/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/191352625/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 191352625;

COMMIT;

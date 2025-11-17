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
  220748707,
  'Anello di Val di luce, Monte gomito, Denti della Vecchia Lago Nero, Alpe Tre Potenze, Femminamorta, Balzo delle rose',
  'Escursione ad anello da Val di Luce – Monte Ronte – Denti della Vecchia – Balzo delle Rose – ritorno 1. Partenza da Val di Luce – Sentiero 501 Il percorso comincia in ambiente boscoso, con un sentiero largo e ben segnalato. Il sentiero 501 in questa prima parte è in piano o con pendenza molto lieve, ideale per riscaldarsi e godersi la tranquillità del bosco. 2. Incrocio con il sentiero 503 Qui si prende il 503, che inizialmente rimane nel bosco ma poi si apre,il paesaggio si fa più ampio e permette di godere di un bellissimo panorama sulla sinistra, con vista sul Libro Aperto e sul Monte Cimone, specialmente nelle giornate limpide. 3. Arrivo al Rif.Pulicchio Punto in cui abbiamo fatto una breve sosta dopo la salita e in seguito abbiamo preso il bivio per il Monte Gomito. 4. Proseguimento sul 503 fino al Monte Gomito Il sentiero prosegue in salita graduale, il panorama si apre in tutte le direzioni a sinistra: Libro Aperto e Monte Cimone dominano la vista, mentre a destra: Balzo delle Rose, Monte Rondinaio, e tutta la vallata a nord. Una tappa molto scenografica, ideale per una pausa e per foto panoramiche. 5. Arrivo alla Funivia del Monte Gomito Da questo punto si può scegliere: Il sentiero 00 variante: indicato come escursionistico su alcune cartine, ma in realtà per escursionisti esperti. Presenta tratti con roccette, scelte di percorso e passaggi esposti. In alternativa, poco più in basso, si può imboccare un ramo della Via dei Parchi, molto più semplice e accessibile, e mai difficile. 6. Passo della Fariola Qui si decide di salire sui Denti della Vecchia. Il percorso è panoramico ma impegnativo, con tratti attrezzati con catene e zone molto esposte. Per chi non è abituato all’esposizione, è meglio evitare e prendere il sentiero 519, una bella alternativa escursionistica e sicura, che passa in una zona molto suggestiva. 7. Dal Passo deI della Vecchia – sentiero 500 Proseguendo sul 500 si raggiunge il Rifugio del Lago Nero (Lavomero). Una breve sosta è consigliata: il posto è molto bello e gestito da persone accoglienti. (Nota: evitare il bagno nel lago, per motivi ambientali e di sicurezza). 8. Salita alle Tre Potenze Dopo il rifugio si sale verso la cima delle Tre Potenze. Il sentiero è ben segnato e presenta una salita più decisa. Purtroppo, durante questa parte, ci siamo immersi nella nebbia, che ha nascosto parte dei panorami. 9. Arrivo alla Femmina Morta Da qui si gode (in assenza di nebbia) uno dei panorami più belli di tutto il percorso. Il sentiero è semplice, largo e ben tracciato, ottimo anche in condizioni di scarsa visibilità. 10. Discesa verso il Passo della Neviera – Sentiero 515 Dopo una breve sosta, si scende seguendo il sentiero 515. Si arriva al Balzo delle Rose, un luogo spettacolare e panoramico, che alcuni non avevano mai visitato prima. Il sentiero resta facile, escursionistico, largo e privo di difficoltà tecniche. 11. Incrocio con la strada – Sentiero 507 Si incrocia una strada forestale segnata dal sentiero 507, conosciuta come strada ducale. Anche qui ci sono due opzioni: Tornare direttamente verso Val di Luce per una via più breve. Proseguire, come abbiamo fatto noi, lungo il sentiero 505, che è comodo, largo e ben segnalato, fino al ritorno in Val di Luce. - Rifugio Pulicchio (4.1 km) - Monte Gomito (6.0 km) - Monte Fariola (6.4 km) - Passo della Fariola (6.8 km) - Passo della Vecchia (7.3 km) - Lago Nero (8.1 km) - Alpe Tre Potenze (8.9 km) - Passo d’Annibale (10.2 km) - Passo dei Rombicetti (11.7 km) - Balzo delle Rose (12.5 km)',
  'Escursione ad anello da Val di Luce – Monte Ronte – Denti della Vecchia – Balzo delle Rose – ritorno <br> 1. Partenza da Val di Luce – Sentiero 501 <br>Il percorso comincia in ambiente boscoso, con un sentiero largo e ben segnalato. <br> <br>Il sentiero 501 in questa prima parte è in piano o con pendenza molto lieve, ideale per riscaldarsi e godersi la tranquillità del bosco. <br> <br> 2. Incrocio con il sentiero 503 <br>Qui si prende il 503, che inizialmente rimane nel bosco ma poi si apre,il paesaggio si fa più ampio e permette di godere di un bellissimo panorama sulla sinistra, con vista sul Libro Aperto e sul Monte Cimone, specialmente nelle giornate limpide. <br> <br> 3. Arrivo al Rif.Pulicchio <br>Punto in cui abbiamo fatto una breve sosta dopo la salita e in seguito abbiamo preso il bivio per il Monte Gomito. <br> <br> <br> 4. Proseguimento sul 503 fino al Monte Gomito <br>Il sentiero prosegue in salita graduale, il panorama si apre in tutte le direzioni a sinistra: Libro Aperto e Monte Cimone dominano la vista, mentre a destra: Balzo delle Rose, Monte Rondinaio, e tutta la vallata a nord. <br> <br>Una tappa molto scenografica, ideale per una pausa e per foto panoramiche. <br> <br> 5. Arrivo alla Funivia del Monte Gomito <br>Da questo punto si può scegliere: <br> <br>Il sentiero 00 variante: indicato come escursionistico su alcune cartine, ma in realtà per escursionisti esperti. Presenta tratti con roccette, scelte di percorso e passaggi esposti. <br> <br>In alternativa, poco più in basso, si può imboccare un ramo della Via dei Parchi, molto più semplice e accessibile, e mai difficile. <br> <br> 6. Passo della Fariola <br>Qui si decide di salire sui Denti della Vecchia. <br> <br>Il percorso è panoramico ma impegnativo, con tratti attrezzati con catene e zone molto esposte. <br> <br>Per chi non è abituato all’esposizione, è meglio evitare e prendere il sentiero 519, una bella alternativa escursionistica e sicura, che passa in una zona molto suggestiva. <br> <br> 7. Dal Passo deI della Vecchia – sentiero 500 <br>Proseguendo sul 500 si raggiunge il Rifugio del Lago Nero (Lavomero). <br> <br>Una breve sosta è consigliata: il posto è molto bello e gestito da persone accoglienti. <br>(Nota: evitare il bagno nel lago, per motivi ambientali e di sicurezza). <br> <br> 8. Salita alle Tre Potenze <br>Dopo il rifugio si sale verso la cima delle Tre Potenze. <br>Il sentiero è ben segnato e presenta una salita più decisa. <br>Purtroppo, durante questa parte, ci siamo immersi nella nebbia, che ha nascosto parte dei panorami. <br> <br>9. Arrivo alla Femmina Morta <br>Da qui si gode (in assenza di nebbia) uno dei panorami più belli di tutto il percorso. <br>Il sentiero è semplice, largo e ben tracciato, ottimo anche in condizioni di scarsa visibilità. <br> <br>10. Discesa verso il Passo della Neviera – Sentiero 515 <br>Dopo una breve sosta, si scende seguendo il sentiero 515. <br> <br>Si arriva al Balzo delle Rose, un luogo spettacolare e panoramico, che alcuni non avevano mai visitato prima. <br>Il sentiero resta facile, escursionistico, largo e privo di difficoltà tecniche. <br> <br> 11. Incrocio con la strada – Sentiero 507 <br>Si incrocia una strada forestale segnata dal sentiero 507, conosciuta come strada ducale. <br>Anche qui ci sono due opzioni: <br>Tornare direttamente verso Val di Luce per una via più breve. <br>Proseguire, come abbiamo fatto noi, lungo il sentiero 505, che è comodo, largo e ben segnalato, fino al ritorno in Val di Luce. <br> <br> <br>- Rifugio Pulicchio (4.1 km) <br>- Monte Gomito (6.0 km) <br>- Monte Fariola (6.4 km) <br>- Passo della Fariola (6.8 km) <br>- Passo della Vecchia (7.3 km) <br>- Lago Nero (8.1 km) <br>- Alpe Tre Potenze (8.9 km) <br>- Passo d’Annibale (10.2 km) <br>- Passo dei Rombicetti (11.7 km) <br>- Balzo delle Rose (12.5 km)',
  'Tutte le Attività e Paesi',
  18.39,
  914,
  1,
  1,
  272,
  '04:32',
  272,
  '04:32',
  3098,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Casa Gallo',
  '2025-07-01',
  '2025-07-01',
  '2025-07-05 00:00:00',
  '2025-07-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/anello-di-val-di-luce-monte-gomito-denti-della-vecchia-lago-nero-alpe-tre-potenze-femminamorta-balz-220748707',
  NULL,
  44.129803,
  10.629575,
  'POINT(10.629575 44.129803)',
  '6d881e615554a2152cf162e58cbf57e2d8acea208540dcabae25460109c60230',
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
VALUES (220748707, 'https://it.wikiloc.com/percorsi-escursionismo/anello-di-val-di-luce-monte-gomito-denti-della-vecchia-lago-nero-alpe-tre-potenze-femminamorta-balz-220748707', NOW(), '6d881e615554a2152cf162e58cbf57e2d8acea208540dcabae25460109c60230')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 220748707);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/220748707/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_32.jpg', 32,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_33.jpg', 33,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_34.jpg', 34,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_35.jpg', 35,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_36.jpg', 36,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_37.jpg', 37,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_38.jpg', 38,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_39.jpg', 39,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_40.jpg', 40,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_41.jpg', 41,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_42.jpg', 42,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_43.jpg', 43,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_44.jpg', 44,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_45.jpg', 45,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_46.jpg', 46,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_47.jpg', 47,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_48.jpg', 48,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/220748707/photo_49.jpg', 49,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 220748707;

COMMIT;

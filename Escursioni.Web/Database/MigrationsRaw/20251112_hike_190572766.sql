BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  190572766,
  'Campiglia Marittima ~ Rocca di San Silvestro',
  'Il percorso inizia a Campiglia Marittima, un grazioso paesino che vale la pena visitare sia all’inizio che alla fine dell’escursione; noi siamo stati fortunati, trovando anche una sagra locale! Il sentiero è ben segnato e sempre facile da percorrere. Anche se l’alluvione recente ha causato qualche danno, i percorsi sono comunque SEMPRE praticabili. Il tragitto di andata è semplice e, a parte una piccola salita dopo la stazione ferroviaria, non risulta mai faticoso. È molto panoramico e attraversa numerose cave, grotte e fosse, tutte segnalate e recintate. Se siete fortunati, potrete acquistare il biglietto e prendere il trenino per visitare le cave (noi lo abbiamo trovato chiuso). Costo: 9 euro (opzionale). Per arrivare alla rocca, bisogna attraversare un ponte. Noi abbiamo trovato il cancello sul ponte chiuso, ma la rete sulla destra era "caduta", consentendo il passaggio. Da lì, siamo giunti alla rocca! Non siamo saliti, dato che la zona è videosorvegliata e anche qui i cancelli erano chiusi; peccato... avremmo preferito trovare il parco aperto. Il ritorno lo abbiamo fatto percorrendo la via dei Lazi, mai impegnativa, anche se un po'' più "selvaggia". In ogni caso, è stato davvero un bel giro, molto panoramico, che consiglio soprattutto in primavera, autunno o inverno.',
  '<h2 >Campiglia Marittima ~ Rocca di San Silvestro: Trekking e Escursione nella Toscana Mancasante</h2>

<h3 >Il percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> parte dal pittoresco borgo di <strong>Campiglia Marittima</strong>, un luogo ideale per iniziare la vostra <strong>escursione</strong> alla <strong>Rocca di San Silvestro</strong>. Il percorso è progettato per essere accessibile a tutti i livelli di esperienza, grazie alla sua segnaletica chiara e alla facilità di percorrenza. Nonostante recenti alluvioni abbiano causato qualche disagio, il <strong>sentiero di montagna</strong> è sempre praticabile, offrendo un''esperienza di <strong>trekking</strong> autentica nella <strong>natura</strong> toscana.  L''<strong>escursione</strong> vi condurrà attraverso paesaggi mozzafiato, con numerose cave, grotte e fosse, tutte protette e recintate per la vostra sicurezza. Perfetto per un''<strong>escursione di un giorno</strong> in famiglia o con amici!</p>

<h3 >Cosa aspettarsi</h3>
<p>Preparatevi a un''<strong>escursione</strong> panoramica di circa 6-8 chilometri, con un dislivello di circa 300 metri. Il tratto iniziale è facile e accessibile, ma dopo la stazione ferroviaria troverete una breve salita.  Potrete ammirare panorami spettacolari sulla costa e sulla campagna circostante.  L''ambiente naturale è ricco di flora e fauna, con la possibilità di avvistare diverse specie di uccelli e animali.  L''<strong>escursione</strong> in <strong>Sentiero Italia</strong> è un''opportunità per immergervi nella <strong>natura</strong> e godervi la tranquillità della <strong>montagna</strong>.</p>

<h3 >Informazioni utili</h3>
<ul>
<li><strong>Difficoltà:</strong> Facile/Media</li>
<li><strong>Distanza:</strong> Circa 6-8 km</li>
<li><strong>Dislivello:</strong> Circa 300 metri</li>
<li><strong>Tempo di percorrenza:</strong> 2-3 ore</li>
<li><strong>Punti di interesse:</strong> <strong>Rocca di San Silvestro</strong>, cave, grotte, fosse, vista panoramica sulla costa</li>
<li><strong>Costo:</strong> Ingresso alla cave (opzionale, 9 euro)</li>
<li><strong>Note:</strong> Il sentiero è ben segnalato, ma è consigliabile indossare scarpe da trekking e portare con sé acqua e snack. Controllate sempre le condizioni del <strong>sentiero</strong> prima di partire. <em>La zona è videosorvegliata e alcuni punti potrebbero essere inaccessibili.</em></li>
</ul>

<p>Perfetta <strong>escursione</strong> per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>, questa meta è ideale per una giornata all''aria aperta. Scoprite la bellezza del paesaggio toscano con questo splendido <strong>sentiero</strong>!</p>',
  'Tutte le Attività e Paesi',
  14.37,
  560,
  325,
  325,
  220,
  '03:40',
  220,
  '03:40',
  2383,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Campiglia Marittima',
  '2024-11-01',
  '2024-11-01',
  '2024-11-03 00:00:00',
  '2024-11-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/campiglia-marittima-rocca-di-san-silvestro-190572766',
  NULL,
  43.060667,
  10.618395,
  'POINT(10.618395 43.060667)',
  '46ba3167c6266a0d5c748ed0d9839c7694606d7726a51b71025747a8ea032bc9',
  'Escursione Campiglia Marittima - Rocca di San Silvestro: Anello facile 14.37km, +560m. Toscana, sentiero ben segnato, vista panoramica e grotte! Perfetta in ...',
  'Rocca di San Silvestro: Escursione da Campiglia Marittima...',
  'Lucchesia e colline toscane',
  NOW(),
  NOW()
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
  meta_descrizione = EXCLUDED.meta_descrizione,
  titolo_seo = EXCLUDED.titolo_seo,
  tag = EXCLUDED.tag,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (190572766, 'https://it.wikiloc.com/percorsi-escursionismo/campiglia-marittima-rocca-di-san-silvestro-190572766', NOW(), '46ba3167c6266a0d5c748ed0d9839c7694606d7726a51b71025747a8ea032bc9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 190572766);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/190572766/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190572766/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190572766;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  115177865,
  'Passo del Lucese - Rifugio La Casa del Maestro - Baita Verde - Baita Barsi',
  'Escursione in direzione del Monte Prana. Siamo partiti dal Ristorante della Lucese, e da li abbiamo preso il sentiero 101, già era iniziato a piovere, ma il meteo è peggiorato appena superata la Casa del Maestro, da li siamo tornati in dietro e abbiamo scelto di proseguire verso la Chiesa di Campo all''orzo. Abbiamo trovato i due rufugi Brasi e Verde chiusi. Abbiamo preso tanta acqua ma camminare nella nebbia è sempre un esperienza unica.',
  '<h2>Passo del Lucese - Rifugio La Casa del Maestro - Baita Verde - Baita Barsi: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un’escursione indimenticabile nel cuore della <strong>Montagna Lombarda</strong>! Il <strong>Sentiero del Passo del Lucese</strong> vi condurrà attraverso un paesaggio mozzafiato, perfetto per un’<strong>escursione a piedi</strong> o un <strong>trekking</strong>. Partiremo dal suggestivo <strong>Ristorante della Lucese</strong>, dove inizierà il sentiero 101, un percorso ben tracciato che ci porterà direttamente verso l’apice del <strong>Monte Prana</strong>. L''<strong>escursione in Italia</strong> si presenta adatta anche a principianti, grazie alla sua moderata difficoltà.</p>

<p>Il <strong>trekking</strong> seguirà il sentiero 101, inizialmente immerso nel verde della <strong>natura</strong>, passando per la <strong>Casa del Maestro</strong>. A questo punto, a causa delle condizioni meteorologiche avverse, abbiamo deciso di tornare indietro e proseguire verso la <strong>Chiesa di Campo all''orzo</strong>, un luogo di grande interesse storico ed ambientale. Il <strong>sentiero escursionistico</strong> offre panorami spettacolari.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li><strong>Meteo Instabile:</strong> Tenetevi pronti a cambiamenti climatici improvvisi, soprattutto in alta quota.</li>
  <li><strong>Nebbia:</strong> L’escursione è particolarmente suggestiva nella nebbia, creando un’atmosfera unica e misteriosa.</li>
  <li><strong>Paesaggi Mozzafiato:</strong> Ammirate le vette del <strong>Monte Prana</strong>, le radure e la flora e fauna locale.</li>
  <li><strong>Rifugi chiusi:</strong> I <strong>Rifugi Brasi e Verde</strong> sono attualmente chiusi, è consigliabile munirsi di acqua e viveri.</li>
</ul>

<h3>Informazioni Utili</h3>

<p>Questa <strong>escursione a piedi</strong> di circa 12-15 km (andata e ritorno) offre un''esperienza autentica nel cuore della <strong>Montagna Italiana</strong>. La difficoltà è considerata media, adatta a <strong>trekking</strong> esperti e amanti della <strong>natura</strong>.  L''altimetria varia tra i 750 e i 1800 metri. È fondamentale indossare scarpe da trekking adatte e abbigliamento adeguato alle condizioni atmosferiche. Ricordate che la sicurezza è sempre al primo posto, quindi informatevi sulle condizioni del <strong>sentiero</strong> e non esitate a chiedere indicazioni. Per una <strong>escursione nel sentiero</strong> come questo, è importante essere ben preparati. </p>

<p>Godetevi questa splendida <strong>escursione nel Passo del Lucese</strong>, un’occasione unica per immergervi nella <strong>bellezza della montagna italiana</strong>! </p>',
  'Tutte le Attività e Paesi',
  14.16,
  746,
  588,
  1,
  150,
  '02:30',
  150,
  '02:30',
  1942,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Lucese',
  '2022-10-01',
  '2022-10-01',
  '2022-10-02 00:00:00',
  '2022-10-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passo-del-lucese-rifugio-la-casa-del-maestro-baita-verde-baita-barsi-115177865',
  NULL,
  43.936432,
  10.382227,
  'POINT(10.382227 43.936432)',
  '6a1109ef2b4a1ec033b39a322735cece5f0a55ca8a156eb95a6d9857871c81da',
  'Escursione al Passo del Lucese: Monte Prana, Rifugi & Baita! Sentiero 101 tra nebbia e panorami mozzafiato. Scopri l''emozione!',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (115177865, 'https://it.wikiloc.com/percorsi-escursionismo/passo-del-lucese-rifugio-la-casa-del-maestro-baita-verde-baita-barsi-115177865', NOW(), '6a1109ef2b4a1ec033b39a322735cece5f0a55ca8a156eb95a6d9857871c81da')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 115177865);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/115177865/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

COMMIT;

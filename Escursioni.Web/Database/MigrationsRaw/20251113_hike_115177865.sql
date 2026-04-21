BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  115177865,
  'Passo del Lucese - Rifugio La Casa del Maestro - Baita Verde - Baita Barsi',
  'Escursione in direzione del Monte Prana. Siamo partiti dal Ristorante della Lucese, e da li abbiamo preso il sentiero 101, già era iniziato a piovere, ma il meteo è peggiorato appena superata la Casa del Maestro, da li siamo tornati in dietro e abbiamo scelto di proseguire verso la Chiesa di Campo all''orzo. Abbiamo trovato i due rufugi Brasi e Verde chiusi. Abbiamo preso tanta acqua ma camminare nella nebbia è sempre un esperienza unica.',
  '<h2>Passo del Lucese - Rifugio La Casa del Maestro - Baita Verde - Baita Barsi: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un’incantevole <strong>escursione trekking</strong> attraverso le splendide montagne della regione. Questo percorso, denominato <strong>Passo del Lucese</strong>, vi condurrà attraverso paesaggi mozzafiato, ideali per <strong>sentieri in montagna</strong> e per gli amanti della <strong>natura</strong>. Partiremo dal punto di partenza, il <strong>Ristorante della Lucese</strong>, e seguiremo il <strong>sentiero 101</strong>, un percorso ben segnalato che offre viste panoramiche uniche. La nostra <strong>escursione in Italia</strong> culminerà con una serie di rifugi e baita, offrendo la possibilità di ammirare il <strong>Monte Prana</strong> e immergersi nella tranquillità della natura.</p>

<h3>Cosa Aspettarsi</h3>

<p>Questa <strong>escursione di trekking</strong> è adatta a escursionisti esperti, con un''adeguata preparazione fisica. Il percorso presenta alcuni tratti ripidi e irregolari, ma offre ricompense straordinarie in termini di panorami e biodiversità. Preparatevi ad affrontare possibili condizioni meteorologiche variabili, soprattutto in alta quota. L’<strong>escursione nel cuore della montagna</strong> può essere influenzata dalla nebbia, rendendo l’esperienza ancora più suggestiva e avventurosa.  La <strong>paesaggio alpino italiano</strong> vi lascerà senza fiato.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Distanza Totale:</strong> Circa 15 km (potrebbe variare in base al percorso seguito)</li>
    <li><strong>Difficoltà:</strong> Media – Richiede una buona preparazione fisica</li>
    <li><strong>Dislivello:</strong> Circa 800 metri</li>
    <li><strong>Punto di Partenza:</strong> Ristorante della Lucese</li>
    <li><strong>Sentiero:</strong> Sentiero 101</li>
    <li><strong>Luoghi di Interesse:</strong> Rifugio La Casa del Maestro, Baita Verde, Baita Barsi, Chiesa di Campo all''orzo, Rifugi Brasi e Verde (chiusi), <strong>Monte Prana</strong></li>
    <li><strong>Periodo Consigliato:</strong> Estate/Autunno (controllare le previsioni meteo prima di partire)</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarponi da trekking, zaino, abbigliamento a strati, acqua, cibo, mappa, bussola/GPS, kit di pronto soccorso</li>
</ul>

<p>Ricordatevi di rispettare l’ambiente durante la vostra <strong>trekking</strong> e di seguire le indicazioni dei sentieri. Godetevi questa emozionante <strong>escursione in montagna</strong> e la bellezza del <strong>Passo del Lucese</strong>!</p>',
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
  'Escursione Passo del Lucese (Toscana): Anello 14.16km, +746m. Trekking al Rifugio La Casa del Maestro e Baita Verde. Meteo variabile, sentiero 101. Perfetta ...',
  'Monte Prana: Escursione da Lucese (14.16km, 746m)',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  206876556,
  'Castello Orsini da Borgo di celleno',
  'Percorso da Borgo di Celleno passando per: Castello Orsini (0.2 km) Abbiamo parcheggiato nei pressi del cimitero, dove poco dopo si trova una panchina gigante che offre un bellissimo panorama sulla valle circostante. Dal cimitero al paesino di Castello Orsini da Acquaforte ci vogliono circa 15 minuti a piedi. Il percorso è semplice e piacevole, lo consiglio vivamente perché regala scorci panoramici suggestivi. Inoltre, davanti al Monastero si possono ammirare splendidi dipinti esterni, testimoni della storia artistica e religiosa della zona. Borgo di Celleno: tra storia e fascino medievale Il Borgo fantasma di Celleno è un vero gioiello storico. Le sue origini risalgono all''epoca etrusca, ma il castello e le strutture attuali si svilupparono principalmente nel Medioevo. Il cuore del borgo è il Castello Orsini, risalente all''XI secolo, che fu dimora della potente famiglia Orsini e, successivamente, teatro di lotte tra nobili famiglie rivali. Oggi Celleno è un borgo abbandonato ma perfettamente conservato, con un’atmosfera unica che lo rende una meta imperdibile per gli amanti della storia e della fotografia. L''ingresso è gratuito, e si possono visitare diverse parti del castello normalmente inaccessibili nei castelli a pagamento. Il borgo è stato trasformato in un vero e proprio museo a cielo aperto, dove si respira ancora l’antico fascino medievale.',
  '<h2>Trekking al Castello Orsini da Borgo di Celleno: Escursione nella Storia e nella Natura</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong> da <strong>Borgo di Celleno</strong> offre un''esperienza unica, combinando la bellezza della <strong>montagna</strong> con il fascino della storia medievale.  L''<strong>escursione</strong> parte dal parcheggio vicino al cimitero, un punto di partenza strategico per iniziare questo percorso semplice e piacevole.  Il cammino dura circa 15 minuti e conduce direttamente al pittoresco borgo di <strong>Castello Orsini da Acquaforte</strong>, un vero gioiello per gli amanti del <strong>trekking</strong> e della scoperta di luoghi suggestivi.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Un percorso di <strong>trekking</strong> facile e adatto a tutti i livelli.</li>
  <li>Scorci panoramici mozzafiato sulla valle circostante, offerti dalla posizione elevata.</li>
  <li>La possibilità di ammirare un borgo medievale perfettamente conservato, <strong>Borgo di Celleno</strong>, con il suo affascinante <strong>Castello Orsini</strong>.</li>
  <li>L''opportunità di scoprire un borgo fantasma, un vero e proprio <em>museo a cielo aperto</em> che ripercorre la storia etrusca e medievale della regione.</li>
  <li>Un''<em>escursione</em> ricca di storia, arte e <strong>natura</strong>.</li>
</ul>

<h3>Informazioni Utili</h3>

<p>Il <strong>sentiero</strong> da <strong>Borgo di Celleno</strong> al <strong>Castello Orsini</strong> è un''iniziativa ideale per chi cerca un''<em>escursione</em>  nel cuore della <strong>montagna</strong>.  Il percorso, di breve distanza (0.2 km), è facilmente percorribile e offre una vista panoramica impareggiabile.  Il <strong>Castello Orsini</strong>, risalente all''XI secolo, è un esempio straordinario di architettura medievale, con splendidi dipinti esterni che testimoniano la sua storia artistica e religiosa. L''ingresso al borgo è gratuito, permettendo di esplorare le sue antiche mura e di immergersi nell''atmosfera unica di questo luogo storico.  Questa <strong>escursione</strong> è perfetta per chi desidera combinare <strong>trekking</strong>, cultura e <strong>natura</strong> in un''unica giornata.  Esplora questo magnifico <strong>sentiero Italia</strong>!</p>

<p>Indica il tuo punto di partenza da <strong>Borgo di Celleno</strong> per una splendida <strong>escursione</strong>. </p>',
  'Tutte le Attività e Paesi',
  1.67,
  20,
  333,
  362,
  18,
  '00:18',
  18,
  '00:18',
  206,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Lazio',
  'Acquaforte',
  '2025-03-01',
  '2025-03-01',
  '2025-03-30 00:00:00',
  '2025-03-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castello-orsini-da-borgo-di-celleno-206876556',
  NULL,
  42.562428,
  12.142827,
  'POINT(12.142827 42.562428)',
  '10e4dac8b94c7fea848304e3993f1fd857041df009e9ce4f685e2ada75163ef8',
  'Escursione Castello Orsini Celleno: percorso facile da Borgo di Celleno (Acquaforte, Lazio) 1.67km, +20m. Panorami, castello Orsini e borgo medievale!',
  'Castello Orsini: Escursione da Borgo di Celleno (Lazio)',
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
VALUES (206876556, 'https://it.wikiloc.com/percorsi-escursionismo/castello-orsini-da-borgo-di-celleno-206876556', NOW(), '10e4dac8b94c7fea848304e3993f1fd857041df009e9ce4f685e2ada75163ef8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 206876556);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/206876556/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876556/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876556;

COMMIT;

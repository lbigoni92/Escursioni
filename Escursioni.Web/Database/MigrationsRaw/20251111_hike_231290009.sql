BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  231290009,
  'Passo San Pellegrino da San Pellegrino',
  'Percorso ad anello da San Pellegrino passando per:- Passo San Pellegrino (9.9 km)',
  '<h2>Passo San Pellegrino da San Pellegrino: Escursione di Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>
Immergiti in un’esperienza di <strong>trekking</strong> indimenticabile con questa <strong>escursione</strong> ad anello che parte direttamente da <strong>San Pellegrino</strong>. Il <strong>sentiero</strong> ti condurrà attraverso paesaggi mozzafiato, passando direttamente per il famoso <strong>Passo San Pellegrino</strong>, un punto di riferimento per gli amanti della <strong>montagna</strong> e della <strong>natura</strong>. Questo <strong>trekking</strong> di 9,9 km offre un''opportunità unica per esplorare la bellezza incontaminata delle Alpi, perfetto per un''avventura di <strong>escursione</strong> di un giorno. 
</p>

<h3>Cosa Aspettarsi</h3>

<p>
Preparati ad affrontare un <strong>sentiero</strong> impegnativo ma gratificante, ideale per <strong>trekking</strong> esperti e appassionati. La dislivello è di circa 800 metri, quindi è consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.  Godrai di panorami spettacolari, con viste panoramiche sulle cime circostanti e la possibilità di ammirare la flora e la fauna locale.  Questa <strong>escursione</strong> è un''opportunità per riconnettersi con la <strong>natura</strong> e godere di un''esperienza di <strong>trekking</strong> autentica in <strong>Italia</strong>.
</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Distanza:</b> 9,9 km</li>
    <li><b>Difficoltà:</b> Impegnativa</li>
    <li><b>Dislivello:</b> 800 m</li>
    <li><b>Tempo di percorrenza stimato:</b> 4-5 ore</li>
    <li><b>Punto di partenza:</b> San Pellegrino</li>
    <li><b>Tipo di percorso:</b> Anello</li>
    <li><b>Ideale per:</b> <strong>Trekking</strong>, <strong>escursioni</strong>, appassionati di <strong>montagna</strong> e <strong>natura</strong>, sentieri <strong>trekking Italia</strong>.</li>
    <li><b>Periodo consigliato:</b> Estate e autunno per evitare condizioni meteorologiche avverse.</li>
</ul>

<p>
Questo <strong>sentiero</strong> è perfetto per chi cerca un''<strong>escursione</strong> impegnativa ma ricompensata da panorami mozzafiato. Organizza il tuo <strong>trekking</strong> in <strong>montagna</strong> e scopri di più sulla fauna e flora della **nazione**.
</p>',
  'Tutte le Attività e Paesi',
  10.53,
  468,
  1,
  2,
  150,
  '02:30',
  150,
  '02:30',
  1798,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Trentino-Alto Adige',
  'San Pellegrino',
  '2025-09-01',
  '2025-09-01',
  '2025-09-12 00:00:00',
  '2025-09-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passo-san-pellegrino-da-san-pellegrino-231290009',
  NULL,
  46.378126,
  11.787728,
  'POINT(11.787728 46.378126)',
  '6d3a0ba521cdbf307e33b1944e1eb81a5757f0c8b6079cf5fe030829db55b242',
  'Escursione Passo San Pellegrino: Anello da San Pellegrino Terme (TN) 10.5km, difficoltà media, +468m dislivello. Trekking panoramico in Trentino-Alto Adige!',
  'Passo San Pellegrino: escursione da San Pellegrino (anell...',
  'Trentino',
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
VALUES (231290009, 'https://it.wikiloc.com/percorsi-escursionismo/passo-san-pellegrino-da-san-pellegrino-231290009', NOW(), '6d3a0ba521cdbf307e33b1944e1eb81a5757f0c8b6079cf5fe030829db55b242')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 231290009);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/231290009/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/231290009/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 231290009;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  231290009,
  'Passo San Pellegrino da San Pellegrino',
  'Percorso ad anello da San Pellegrino passando per:- Passo San Pellegrino (9.9 km)',
  '<h2 id="escursione-passo-san-pellegrino-da-san-pellegrino">Escursione al Passo San Pellegrino da San Pellegrino</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Partenza da <strong>San Pellegrino</strong>, un borgo affascinante alle pendici dell''Adamello.  È facilmente raggiungibile in auto seguendo le indicazioni per San Pellegrino, da dove parte il sentiero.  In alternativa, puoi arrivare a piedi da altre località vicine, godendoti già il paesaggio di montagna.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo percorso ad anello di <strong>10.53 km</strong> ti porterà attraverso il suggestivo <strong>Passo San Pellegrino</strong>.  Inizierai da San Pellegrino e risalendo il sentiero, inizialmente in leggera pendenza, raggiungerai il passo. Da lì, potrai ammirare un panorama mozzafiato sulle cime circostanti. Il sentiero continua ad anello, tornando al punto di partenza.  L''escursione è un''ottima opportunità per godersi la natura e la tranquillità della montagna.  Il sentiero è ben segnalato, ma è sempre consigliabile avere una mappa e una bussola o utilizzare un''app di navigazione per smartphone.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> è di difficoltà <strong>Media</strong>.  Il dislivello di <strong>+468 metri</strong> richiede una buona preparazione fisica.  È consigliabile indossare scarpe da trekking, portare con sé acqua, snack e un abbigliamento adeguato alle condizioni meteorologiche.  L''escursione dura in media 3-4 ore, a seconda del ritmo e delle soste.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Puoi scaricare la <strong>traccia GPS</strong> di questa escursione per seguirla con il tuo smartphone o dispositivo GPS.  Ecco le informazioni pratiche:</p>
<ul>
    <li><strong>Distanza:</strong> Circa 10.53 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 468 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> San Pellegrino, San Pellegrino, Trentino-Alto Adige, Italia</li>
    <li><strong>Comune:</strong> San Pellegrino, Trentino-Alto Adige, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 10.53 km (anello)</li>
    <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 468 metri</li>
    <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Medio</li>
    <li><strong id="informazioni-utili-periodo">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="informazioni-utili-punto-partenza">Punto di partenza:</strong> San Pellegrino, accessibile in auto / a piedi</li>
    <li><strong id="informazioni-utili-comune">Comune:</strong> San Pellegrino, Trentino-Alto Adige</li>
    <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.53,
  468,
  1871,
  2225,
  247,
  '4:07',
  214,
  '3:34',
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
  'Trentino e Veneto',
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

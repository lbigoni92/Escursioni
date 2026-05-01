BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  139784387,
  'Monte Castellare - Monte Perocchio e Monte Agreste da Vicopisano',
  'Percorso nel pisano molto semplice da seguire, ci sono solo un paio di punti brevi che potrebbero mettere in difficoltà persone poco allenate ma sono salitine brevi. C''è una fontana lungo il percorso che abbiamo trovato con veramente poca acqua... non contateci troppo d''estate per il resto è un percorso molto panoramico e bello, si passa sia attraverso pini sia tra ulivi. Molto suggestiva e unica è la cima del monte Castellare che offerte una vista unica su tutta la valle da Firenze a Livorno; da qui si ha un panorama ance più bello di quello che si avrebbe dalla Verruca. Consiglio molto questo giro.',
  '<h2 id="escursione-monte-castellare-monte-perocchio-e-monte-agreste-da-vicopisano">Escursione al Monte Castellare, Monte Perocchio e Monte Agreste da Vicopisano</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bellissima escursione si trova a <strong>Vicopisano</strong>, in provincia di <strong>Toscana</strong>.  È facilmente raggiungibile in auto da diverse direzioni. Una volta arrivati a <strong>Vicopisano</strong>, seguire le indicazioni per il sentiero che conduce alla partenza dell''escursione.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo giro di <strong>escursione</strong> di tipo <strong>anello</strong> è perfetto per chi cerca un''esperienza semplice e panoramica. Iniziando da <strong>Vicopisano</strong>, il sentiero si snoda attraverso una splendida macchia mediterranea, alternando tratti tra pini e ulivi.  Raggiungendo la cima del <strong>Monte Castellare</strong>, potrete ammirare un panorama mozzafiato che si estende da <strong>Firenze</strong> a <strong>Livorno</strong>.  Il sentiero è generalmente facile da seguire, con alcune brevi salite che potrebbero rappresentare una sfida per i meno allenati.  Godetevi il percorso, un''esperienza indimenticabile!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> è considerata di <strong>difficoltà facile</strong>. La <strong>distanza</strong> totale è di circa <strong>6.59 km</strong> con un <strong>dislivello</strong> di <strong>+279 m</strong>.  Anche se il sentiero è ben segnalato, è consigliabile indossare scarpe da trekking adatte e portare con sé acqua, soprattutto durante i mesi estivi.  È un''escursione adatta a tutta la famiglia.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Disponibile una <strong>traccia GPS</strong> per facilitare la navigazione.  Ricordatevi di scaricare la traccia GPS sul vostro dispositivo prima di partire.  Per maggiori informazioni e dettagli sul sentiero, consultate le risorse online o contattate l''ufficio turistico di <strong>Vicopisano</strong>.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6.59 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 279 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Vicopisano, accessibile in auto / a piedi</li>
    <li><strong>Comune:</strong> Vicopisano, Regione Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.59,
  279,
  14,
  236,
  150,
  '2:30',
  131,
  '2:11',
  708,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2023-07-01',
  '2023-07-01',
  '2023-07-06 00:00:00',
  '2023-07-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-castellare-monte-perocchio-e-monte-agreste-da-vicopisano-139784387',
  NULL,
  43.684625,
  10.575911,
  'POINT(10.575911 43.684625)',
  'b20794620c09945910dfd305c7627555e5f7a93457530fdad20ddc5ac7f003b7',
  'Escursione Monte Castellare, Monte Perocchio e Monte Agreste a Vicopisano (Toscana): Anello facile 6.6km, +279m. Vista mozzafiato su Firenze e Livorno! Perfe...',
  'Monte Castellare: escursione da Vicopisano (Toscana)',
  'Monti Pisani',
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
VALUES (139784387, 'https://it.wikiloc.com/percorsi-escursionismo/monte-castellare-monte-perocchio-e-monte-agreste-da-vicopisano-139784387', NOW(), 'b20794620c09945910dfd305c7627555e5f7a93457530fdad20ddc5ac7f003b7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 139784387);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/139784387/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

COMMIT;

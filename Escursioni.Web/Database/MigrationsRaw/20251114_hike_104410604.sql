BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104410604,
  'Castiglione della Pescaia',
  'Parcheggiate ai limiti della città e no al centro dove i parcheggi sono a pagamento. E'' stato un giretto pomeridiano in visita al Paesino di Castiglione della pescaia, molto carino come paesino sul mare ! Si voleva passare a visitare le rovine romane , ma il parco era chiuso, in seguito siamo andati a visitare il centro storico e visto le vie principali il paesino era molto carino anche se... sfortunatamente l''accesso al castello non era possibile in quanto proprietà privata... Vi sono numerose spiagge, se volete andare a passare un pomeriggio e fare poi un tuffo in mare è davvero un bel paesino, non mancano le fontanelle bar e ristoranti.',
  '<h2>Escursione Trekking: Sentiero Castiglione della Pescaia – Sentiero nel Parco</h2>

<h3>Il Percorso</h3>
<p>Questo sentiero escursionistico offre un’opportunità fantastica per immergerti nella bellezza della **montagna** e del **mare** intorno a <strong>Castiglione della Pescaia</strong>. Partendo dai limiti della città, potrai intraprendere un piacevole <em>trekking</em> attraverso un paesaggio variegato, passando per sentieri ben tenuti e ampi panorami. L''escursione si concentra sulla visita al caratteristico paesino, con la possibilità di esplorare il centro storico e le sue vie principali.  Si tratta di un’ottima **escursione** di un giorno, ideale per famiglie e appassionati di **trekking** in **Italia**.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un percorso di circa <strong>5 km</strong>, adatto a escursionisti principianti ed esperti.</li>
    <li>Un dislivello medio di circa <strong>200 metri</strong>, per un’esperienza di **trekking** stimolante ma accessibile.</li>
    <li>Possibilità di ammirare panorami mozzafiato sul **mare** e sulla **montagna**.</li>
    <li>La visita di un pittoresco paesino costiero con un ricco patrimonio storico e culturale.</li>
    <li>Numerose spiagge sabbiose per una pausa rilassante e un tuffo rinfrescante.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Il sentiero è facilmente raggiungibile in auto, con parcheggio disponibile ai limiti della città. Si consiglia di indossare scarpe da trekking adeguate e di portare con sé acqua e snack. L''escursione offre un''occasione unica per scoprire le meraviglie della natura e la ricchezza storica di <strong>Castiglione della Pescaia</strong>.  Il sentiero è parte del  <em>Parco del Tavolara</em>, garantendo un’esperienza immersiva nella **natura** e nella **montagna**.</p>
<p><em>Nota:</em> L''accesso al castello è limitato a causa della sua proprietà privata.  Questo non compromette la bellezza del percorso e la possibilità di godersi il paesaggio.  Organizza la tua **escursione** in **sentiero** a <strong>Castiglione della Pescaia** per un’esperienza indimenticabile!</p>',
  'Tutte le Attività e Paesi',
  4.73,
  149,
  2,
  94,
  102,
  '1:42',
  89,
  '1:29',
  763,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castiglione della Pescaia',
  '2022-06-01',
  '2022-06-01',
  '2022-06-02 00:00:00',
  '2022-06-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castiglione-della-pescaia-104410604',
  NULL,
  42.766532,
  10.884643,
  'POINT(10.884643 42.766532)',
  '53eee3c485cc81d3c590dd4ca9d156f1e93958a756a06f2b8a1c408a407dcd1f',
  'Escursione Castiglione della Pescaia: Anello facile 4.7km, +47m | Toscana. Giro nel borgo sul mare, visita al centro storico e spiagge! Perfetto per una gior...',
  'Castiglione della Pescaia: escursione facile sul mare (To...',
  'Versilia e costa toscana',
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
VALUES (104410604, 'https://it.wikiloc.com/percorsi-escursionismo/castiglione-della-pescaia-104410604', NOW(), '53eee3c485cc81d3c590dd4ca9d156f1e93958a756a06f2b8a1c408a407dcd1f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104410604);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104410604/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104410604/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104410604;

COMMIT;

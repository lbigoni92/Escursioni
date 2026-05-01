BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104410604,
  'Castiglione della Pescaia',
  'Parcheggiate ai limiti della città e no al centro dove i parcheggi sono a pagamento. E'' stato un giretto pomeridiano in visita al Paesino di Castiglione della pescaia, molto carino come paesino sul mare ! Si voleva passare a visitare le rovine romane , ma il parco era chiuso, in seguito siamo andati a visitare il centro storico e visto le vie principali il paesino era molto carino anche se... sfortunatamente l''accesso al castello non era possibile in quanto proprietà privata... Vi sono numerose spiagge, se volete andare a passare un pomeriggio e fare poi un tuffo in mare è davvero un bel paesino, non mancano le fontanelle bar e ristoranti.',
  '<h2 id="escursione-castiglione-della-pescaia">Escursione a Castiglione della Pescaia: Un Pomeriggio al Paesino sul Mare</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa escursione è ai limiti della città di Castiglione della Pescaia. Partendo dai confini della città, si può facilmente raggiungere il centro storico. Evita i parcheggi a pagamento all''interno del centro, dove spesso il costo è elevato.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo giro è un''escursione facile e piacevole adatta a tutti. Inizia dal punto di partenza e prosegui attraverso le strade del paese, immergendoti nel cuore di Castiglione della Pescaia. Durante il percorso, potrai ammirare le vie principali e le caratteristiche del paesino.  Dopo una breve passeggiata, potrai esplorare le rovine romane (se aperte) e poi dedicarti alla visita del centro storico.  Non dimenticare di assaporare un caffè o un gelato in uno dei bar o ristoranti del centro. Se il tempo lo permette, concediti un tuffo nelle splendide spiagge che costeggiano il paese.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di **facile** difficoltà, adatta a famiglie e a tutti coloro che desiderano un''escursione rilassante con una bella vista sul mare. Il dislivello è contenuto, quindi il percorso è adatto anche a persone meno allenate.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Disponibile presto.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 4.73 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 149 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Limiti della città di Castiglione della Pescaia</li>
  <li><strong>Comune:</strong> Castiglione della Pescaia, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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
  'Grosseto e Maremma',
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

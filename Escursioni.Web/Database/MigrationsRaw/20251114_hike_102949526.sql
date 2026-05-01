BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  102949526,
  'Calignaia - Spiaggia Sonnino - Poggio delle Monachine - Castellaccio',
  'Buongiorno! Il percorso è quasi sempre bene segnato e facile tranne nella prima parte per arrivare al poggio delle Monachine, in quel tratto era un pò pieno d''arbusti e stretto. Al chilometro 8.4 si fa una discesa , che per chi è abituato alla montagna, non è difficile ma sennò prestate attenzione , si scivola. La parte che merita di più? Il Poggio delle Monachine che è sicuramente il punto più panoramico di tutta la zona sa li si ha una visuale su tutto il romito, merita davvero! Non usate scarpe aperte, e potate acqua non vi sono fontanelle!',
  '<h2 id="calignaia-spiaggia-sonnino-poggio-delle-monachine-castellaccio">Escursione Calignaia - Spiaggia Sonnino - Poggio delle Monachine - Castellaccio</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa fantastica escursione si trova a Quercianella, in Toscana.  È facilmente raggiungibile in auto lungo le strade locali. Dallo stesso punto di partenza si può arrivare anche a piedi, ma si tratta di un percorso che richiede un minimo di preparazione.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Partendo da Quercianella, il sentiero inizialmente segue il sentiero naturale della Calignaia, offrendo panorami mozzafiato sulla costa. Il tratto successivo si inoltra nel bosco, con una parte un po'' più fitta e stretta, specialmente verso il Poggio delle Monachine.  Una volta raggiunto il poggio, si gode di una vista panoramica incredibile. La discesa verso la spiaggia di Sonnino è relativamente facile, ma richiede attenzione a causa di alcuni tratti scivolosi, soprattutto per chi non è abituato alla montagna. La discesa si conclude al Castellaccio, un''ultima salita che premia con una vista finale.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione di trekking è valutata come <strong >Media</strong>. Il percorso presenta alcuni tratti più impegnativi, in particolare la salita al Poggio delle Monachine e la discesa verso la spiaggia. È consigliabile indossare scarpe da trekking adeguate e portare con sé acqua e cibo, dato che lungo il percorso non ci sono fontanelle. La distanza totale è di circa <strong >11.21 km</strong> con un dislivello di <strong >353 metri</strong>.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>A breve troverete la traccia GPS per questa bellissima escursione.  Ricordatevi di scaricare la traccia GPS sul vostro dispositivo prima di partire e di seguire le indicazioni lungo il sentiero.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 11.21 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 353 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Quercianella, accessibile in auto</li>
  <li><strong>Comune:</strong> Quercianella, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.21,
  353,
  -22,
  276,
  242,
  '4:02',
  211,
  '3:31',
  309,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quercianella',
  '2022-05-01',
  '2022-05-01',
  '2022-05-16 00:00:00',
  '2022-05-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calignaia-spiaggia-sonnino-monachine-castellaccio-102949526',
  NULL,
  43.465625,
  10.35485,
  'POINT(10.35485 43.465625)',
  '55b92aad061b5b250fb6e298248ab3026edd0193494ea7b0e464c96cb2160950',
  'Escursione Toscana: Calignaia - Spiaggia Sonnino - Castellaccio! Anello medio (11km, 452m D+), zona Quercianella. Viste mozzafiato al Poggio delle Monachine!...',
  'Callaia: escursione da Quercianella (Castellaccio, Monach...',
  'Livorno e costa toscana',
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
VALUES (102949526, 'https://it.wikiloc.com/percorsi-escursionismo/calignaia-spiaggia-sonnino-monachine-castellaccio-102949526', NOW(), '55b92aad061b5b250fb6e298248ab3026edd0193494ea7b0e464c96cb2160950')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 102949526);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/102949526/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

COMMIT;

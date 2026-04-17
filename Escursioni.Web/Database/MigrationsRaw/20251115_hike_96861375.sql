BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  96861375,
  'Valle Benedetta - Monte pan di zucchero - Monte maggiore - acquedotto di Colognole',
  'Percorso molto semplice, con scorci particolarmente interessanti nella prima parte, non avevo mai visto il monte pan di zucchero.Il monte maggiore merita di meno, in seguito tutta la parte relativa al l''acquedotto di Colognole merita come sempre, unica nel suo genere.',
  '<h2>Valle Benedetta - Monte Pan di Zucchero - Monte Maggiore - Acquedotto di Colognole: Trekking Facile in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> nella <strong>Valle Benedetta</strong> offre un''esperienza indimenticabile per appassionati di <strong>escursioni</strong> di facile difficoltà. Il percorso si snoda attraverso paesaggi mozzafiato, conducendo i sentieri lungo il <strong>Monte Pan di Zucchero</strong>, fino al maestoso <strong>Monte Maggiore</strong> e infine all''affascinante <strong>Acquedotto di Colognole</strong>, un''opera ingegneristica storica di grande valore.  Preparatevi per una giornata di <strong>trekking</strong> immersi nella <strong>natura</strong> e nella tranquillità della <strong>montagna</strong> italiana.  La difficoltà del percorso è valutata come <strong>facile</strong>, rendendolo accessibile anche a famiglie e principianti.  Distanza totale circa 8 km.</p>

<h3>Cosa Aspettarsi</h3>
<p>Potrete ammirare panorami spettacolari sulla <strong>Valle Benedetta</strong>, sulla **Val d''Anna** e sulle cime circostanti.  Il <strong>Monte Pan di Zucchero</strong>, una particolare formazione rocciosa, offre scorci unici e indimenticabili. La salita al <strong>Monte Maggiore</strong> è breve ma gratificante, con viste panoramiche ampie. L''ultima parte del percorso, dedicata all''<strong>Acquedotto di Colognole</strong>, è un vero gioiello, testimonianza del passato industriale e della maestria degli ingegneri. Questa <strong>escursione a piedi</strong> è perfetta per chi cerca un''esperienza di <strong>trekking</strong> rilassante e immersiva nella <strong>natura italiana</strong>. Potrete avvistare flora e fauna tipiche della <strong>montagna</strong>.  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Lunghezza:</b> Circa 8 km</li>
    <li><b>Dislivello:</b> Circa 300 metri</li>
    <li><b>Tempo di percorso:</b> Circa 3-4 ore</li>
    <li><b>Punto di partenza:</b> Parcheggio Valle Benedetta</li>
    <li><b>Periodo consigliato:</b> Primavera, estate e autunno</li>
    <li><b>Consigli:</b> Indossare scarpe da trekking, portare acqua, snack e crema solare.  Verificare le previsioni meteo prima della partenza.  Rispettare l''ambiente e le regole del parco.</li>
</ul>

<p>Scoprite la bellezza della <strong>Valle Benedetta</strong> con questo affascinante <strong>sentiero di trekking</strong>. Un''esperienza autentica nel cuore della <strong>montagna italiana</strong>, perfetta per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>.</p>',
  'Tutte le Attività e Paesi',
  6.47,
  237,
  210,
  455,
  300,
  '05:00',
  NULL,
  '04:20',
  990,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2022-03-01',
  '2022-03-01',
  '2022-03-05 00:00:00',
  '2022-03-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-monte-pan-di-zucchero-monte-maggiore-acquedotto-di-colognole-96861375',
  NULL,
  43.511588,
  10.419123,
  'POINT(10.419123 43.511588)',
  'f6dcc75b43037f383c657d958a35568af5a6165c6160ca8bdecd3d1a4135bd75',
  'Esplora la Valle Benedetta: Monte Pan di Zucchero, Monte Maggiore e Acquedotto Colognole! Escursione facile e panoramica. Scopri la Toscana!',
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
VALUES (96861375, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-monte-pan-di-zucchero-monte-maggiore-acquedotto-di-colognole-96861375', NOW(), 'f6dcc75b43037f383c657d958a35568af5a6165c6160ca8bdecd3d1a4135bd75')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 96861375);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/96861375/photo_04.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96861375/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96861375;

COMMIT;

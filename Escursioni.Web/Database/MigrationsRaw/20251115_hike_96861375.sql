BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  96861375,
  'Valle Benedetta - Monte pan di zucchero - Monte maggiore - acquedotto di Colognole',
  'Percorso molto semplice, con scorci particolarmente interessanti nella prima parte, non avevo mai visto il monte pan di zucchero.Il monte maggiore merita di meno, in seguito tutta la parte relativa al l''acquedotto di Colognole merita come sempre, unica nel suo genere.',
  '<h2>Valle Benedetta - Monte Pan di Zucchero - Monte Maggiore - Aquedotto di Colognole: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> nella <strong>Valle Benedetta</strong> offre un''esperienza indimenticabile, ideale sia per <strong>escursionisti esperti</strong> che per famiglie e principianti. Il percorso, di difficoltà <strong>facile-media</strong>, si snoda attraverso un paesaggio montano mozzafiato, con <em>scorci panoramici</em> unici e la possibilità di ammirare da vicino la natura selvaggia dell''Appennino Tosco-Emiliano.  L''<strong>escursione</strong> si avvale di numerosi punti di riferimento naturalistici, rendendola una meta perfetta per chi cerca un''avventura nella <strong>montagna italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a essere sorpreso dai panorami spettacolari che si aprono davanti a te durante questo <strong>trekking</strong>. La prima parte del percorso, attraverso la <strong>Valle Benedetta</strong>, è particolarmente suggestiva, con la possibilità di assistere alla vista del maestoso <strong>Monte Pan di Zucchero</strong>, una formazione rocciosa unica nel suo genere.  Il <strong>Monte Maggiore</strong>, seppur meno imponente, offre comunque un belvedere con vista sulla valle.  La conclusione del percorso, lungo l''<strong>Acquedotto di Colognole</strong>, rappresenta un vero gioiello ingegneristico, un''opera di grande valore storico e culturale, perfettamente integrata nel paesaggio.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile-Media</li>
    <li><strong>Distanza:</strong> Circa 8 - 10 km (a seconda del percorso scelto)</li>
    <li><strong>Dislivello:</strong> Circa 400 - 500 metri</li>
    <li><strong>Tempo di percorrenza:</strong> Circa 3 - 4 ore</li>
    <li><strong>Periodo migliore:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong>  Verruio (PR)</li>
    <li><strong>Consigli:</strong> Scarpe da trekking adatte, acqua, snack, cappello, crema solare.  Informati sempre sulle condizioni meteorologiche prima di partire per questa <strong>escursione</strong>.  Questo <strong>sentiero escursionistico</strong> è un''ottima opportunità per scoprire le bellezze della <strong>natura italiana</strong>.</li>
</ul>

<p>Questa <strong>escursione sentieristica</strong> in <strong>Valle Benedetta</strong> è un''occasione imperdibile per vivere un''esperienza di <strong>trekking</strong> unica e indimenticabile.  Scopri le meraviglie della <strong>montagna</strong> e lasciati conquistare dalla bellezza di questo <strong>sentiero Italia</strong>!</p>',
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
  'Escursione Valle Benedetta (Toscana): Monte Pan di Zucchero & Monte Maggiore. Facile giro di 6.47km +237m. Scopri l''acquedotto di Colognole!',
  'Monte Pan di Zucchero: Escursione Facile Valle Benedetta',
  'Alpi Apuane',
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

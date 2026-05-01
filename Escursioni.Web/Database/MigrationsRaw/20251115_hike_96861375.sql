BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  96861375,
  'Valle Benedetta - Monte pan di zucchero - Monte maggiore - acquedotto di Colognole',
  'Percorso molto semplice, con scorci particolarmente interessanti nella prima parte, non avevo mai visto il monte pan di zucchero.Il monte maggiore merita di meno, in seguito tutta la parte relativa al l''acquedotto di Colognole merita come sempre, unica nel suo genere.',
  '<h2 id="valle-benedetta-monte-pan-di-zucchero-monte-maggiore-acquedotto-di-colognole">Escursione al Monte Pan di Zucchero e al Monte Maggiore nella Valle Benedetta</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa bella escursione si trova a Valle Benedetta, in Toscana. È facilmente raggiungibile in auto lungo le strade di campagna, oppure si può arrivare a piedi da paesi limitrofi.  Una volta ad Valle Benedetta, seguire le indicazioni per il sentiero che sale verso il Monte Pan di Zucchero.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione è un''ottima scelta per chi cerca un''escursione facile e piacevole. Inizierai da un punto del sentiero e salirai gradualmente verso il Monte Pan di Zucchero, ammirando scorci spettacolari, come la sua cima, che non avevi mai visto prima. Il sentiero è ben tenuto e il dislivello è gestibile, rendendo l''escursione accessibile anche ai principianti. Proseguirai poi verso il Monte Maggiore, che offre un panorama interessante, e infine arriverai all''acquedotto di Colognole, un''opera unica nel suo genere, e alla sua parte finale del percorso.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come <b>Facile</b>.  Il dislivello è di circa <b>456 metri</b>, quindi è una passeggiata adatta a tutti, anche a chi non ha molta esperienza in montagna. Il percorso è di circa <b>6,47 km</b> ed è un giro di andata, quindi preparati a tornare indietro.  Ti consiglio di indossare scarpe da trekking e di portare con te acqua e qualche snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per scaricare la traccia GPS di questa escursione, visita <a href="#">il sito di riferimento</a> (da inserire).  Ti consiglio di controllare le previsioni meteo prima di partire e di informarti sulle condizioni del sentiero.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><b>Distanza:</b> Circa 6.47 km (andata)</li>
  <li><b>Dislivello:</b> Circa 456 metri</li>
  <li><b>Difficoltà:</b> Facile</li>
  <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
  <li><b>Punto di partenza:</b> Valle Benedetta, Toscana</li>
  <li><b>Comune:</b> Valle Benedetta, Italia</li>
  <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.47,
  456,
  210,
  455,
  175,
  '2:55',
  152,
  '2:32',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  96861375,
  'Valle Benedetta - Monte pan di zucchero - Monte maggiore - acquedotto di Colognole',
  'Percorso molto semplice, con scorci particolarmente interessanti nella prima parte, non avevo mai visto il monte pan di zucchero.Il monte maggiore merita di meno, in seguito tutta la parte relativa al l''acquedotto di Colognole merita come sempre, unica nel suo genere.',
  '<h2 data-aos="fade-left">Valle Benedetta - Monte Pan di Zucchero - Monte Maggiore - Acquedotto di Colognole</h2>
<p data-aos="fade-right">
    Questo percorso è considerato molto semplice, ideale per famiglie e principianti. La prima parte del sentiero offre scorci particolarmente interessanti, con la possibilità di ammirare per la prima volta il maestoso Monte Pan di Zucchero.
</p>
<p data-aos="fade-left">
    Il Monte Maggiore, pur essendo una vetta significativa, non desta lo stesso entusiasmo del punto di partenza, ma resta comunque un punto di interesse.
</p>
<p data-aos="fade-right">
    La conclusione del percorso, con il tratto dedicato all''Acquedotto di Colognole, è, come sempre, un''esperienza unica nel suo genere. La sua architettura e il contesto naturale offrono uno spettacolo indimenticabile.
</p>

<h3>Dettagli del Percorso:</h3>
<ul data-aos="fade-down">
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Lunghezza:</strong> Circa 8 km</li>
    <li><strong>Dislivello:</strong> Circa 300 metri</li>
    <li><strong>Tempo di percorso stimato:</strong> 3-4 ore</li>
    <li><strong>Periodo consigliato:</strong> Primavera - Autunno</li>
    <li><strong>Equipaggiamento consigliato:</strong> Scarpe da trekking, zaino, acqua, snack, cappello, crema solare.</li>
</ul>

<p data-aos="fade-left">
    <em>Consigli:</em>  A causa della natura di questo percorso, si consiglia di indossare scarpe da trekking adatte e di portare con sé acqua e cibo a sufficienza.  È sempre consigliabile informarsi sulle condizioni meteorologiche prima di partire.
</p>',
  'Tutte le Attività e Paesi',
  6.47,
  237,
  210,
  455,
  05:00,
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
  'Escursioni in Valle Benedetta: Monte Pan di Zucchero, Monte Maggiore e Acquedotto Colognole. Un percorso facile con panorami mozzafiato! Scopri!',
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

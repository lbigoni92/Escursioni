BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  112720981,
  'Orechiella Sulcina',
  'Orechiella Sulcina',
  '<h2>Trekking Orechiella Sulcina: Escursione a Succhiare l''Acqua Cristallina nel Parco Naturale del Monte Grappa</h2>

<h3>Il Percorso</h3>
<p>L''escursione all''Orechiella Sulcina è un <em>trekking</em> indimenticabile nel cuore del <strong>Parco Naturale del Monte Grappa</strong>, in Veneto. Questo <em>sentiero</em> di <em>trekking</em>, adatto a escursionisti esperti e amanti della <em>natura</em>, conduce ad un lago di origine glaciale, le celebre <strong>Orechiella</strong>, un vero spettacolo naturale. Il percorso inizia da Succhivo, un piccolo borgo di montagna, e si snoda attraverso boschi di faggio e larice, offrendo panorami mozzafiato sulle cime circostanti.</p>
<p>Il sentiero presenta una media difficoltà, con alcuni tratti in salita e discesa, che richiedono un minimo di preparazione fisica. L''<em>escursione</em> di <em>trekking</em> è di circa 11 chilometri, con un dislivello di 800 metri, ed è quindi consigliata a chi pratica il <em>trekking</em> regolarmente.  Preparatevi a immergervi nella natura selvaggia, respirando l''aria pura della <em>montagna</em> e ammirando la bellezza incontaminata del territorio.</p>

<h3>Cosa Aspettarsi</h3>
<p>Durante questo <em>sentiero</em> di <em>trekking</em>, vi attendono scorci spettacolari della <strong>montagna veneta</strong>. Potrete ammirare la flora e la fauna locali, tra cui il raro <em>bosco ombroso</em> e numerose specie di uccelli.  L''<em>Orechiella Sulcina</em> è un luogo magico, dove è possibile <em>succhiare l''acqua cristallina</em> direttamente dalle fonti naturali e godere della tranquillità della <em>natura</em>.  Un''<em>escursione</em> perfetta per chi cerca un''esperienza autentica nel cuore delle <em>Alpi orientali</em>.</p>
<p>La presenza di <em>fonti</em> e di <em>laghi</em> rende l''area ideale per l''idratazione e per scattare delle belle foto, un''esperienza unica nel suo genere per gli amanti del <em>trekking</em> e dell''<em>escursionismo</em>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> 11 km</li>
    <li><strong>Dislivello:</strong> 800 metri</li>
    <li><strong>Punto di partenza:</strong> Succhivo (TN)</li>
    <li><strong>Periodo migliore:</strong> Da maggio a ottobre</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, zaino, acqua, cibo, cappello, crema solare, mappa, bussola/GPS</li>
    <li><strong>Consigli:</strong> Informatevi sulle condizioni meteorologiche prima di partire, rispettate l''ambiente naturale,  seguite i sentieri segnalati e godetevi questa meravigliosa <em>escursione</em> in <em>sentiero</em>!</li>
</ul>

<p>Se siete amanti del <em>trekking</em> e dell''<em>escursionismo</em> in <em>Italia</em>, l''Orechiella Sulcina vi lascerà sicuramente senza parole.  Un''occasione unica per scoprire la bellezza del <strong>Monte Grappa</strong> e per vivere un''esperienza di <em>trekking</em> indimenticabile. Non perdete l''occasione di praticare questo splendido <em>sentiero</em>!</p>',
  'Tutte le Attività e Paesi',
  5.81,
  193,
  1,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  1006,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sulcina',
  '2022-09-01',
  '2022-09-01',
  '2022-09-04 00:00:00',
  '2022-09-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/orechiella-sulcina-112720981',
  NULL,
  44.204102,
  10.35809,
  'POINT(10.35809 44.204102)',
  '1b3a3b3660867f0d61e48fdda93ed8e879b5894112c0dbea5b9a4d0bb04dfeee',
  'Escursione Orechiella Sulcina: Anello nel Parco Naturale delle Alpi Apuane (Toscana). Facile, 5.81km, +193m di dislivello. Scopri questo sentiero panoramico!',
  'Orechiella Sulcina: Escursione da Sulcina (Toscana, Medio)',
  'Lucchesia e colline toscane',
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
VALUES (112720981, 'https://it.wikiloc.com/percorsi-escursionismo/orechiella-sulcina-112720981', NOW(), '1b3a3b3660867f0d61e48fdda93ed8e879b5894112c0dbea5b9a4d0bb04dfeee')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 112720981);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/112720981/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

COMMIT;

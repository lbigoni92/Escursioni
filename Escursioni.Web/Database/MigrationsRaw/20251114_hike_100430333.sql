BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  100430333,
  'Lucca - Parole d''oro - Acquedotto Romano',
  'Il viaggio sostanzialmente non è ovviamente niente d''impegnativo l''ho fatto perchè non avevo mai visto quella parte dell''acquedotto. La gente parte da Lucca a piedi per arrivare all''inizio dell'' Acquedotto nottolini per fare un pic nic. Il sentiero è su strada bianca e facile da seguire ottimo per una passeggiata, anche se si deve stare attenti quando si attraversa la strada. Vi sono numerose fontane lungo il percorso',
  '<h2>Lucca - Parole d''Oro - Acquedotto Romano: Trekking e Escursioni nella Valmarecchia</h2>

<h3>Il Percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> a <strong>Lucca</strong> vi condurrà alla scoperta di un luogo unico: l''<strong>Acquedotto Romano</strong>, soprannominato "Parole d''Oro". L''escursione inizia nel cuore di <strong>Lucca</strong>, da dove parte un percorso facile e accessibile, perfetto per una giornata di <strong>trekking</strong> o <strong>escursione</strong> nella <strong>montagna</strong>. Il sentiero si snoda lungo una strada bianca, facilmente percorribile e ideale per chi cerca un''esperienza di <strong>natura</strong> tranquilla e immersa nella campagna toscana. Questo <strong>sentiero Italia</strong> è perfetto per famiglie e principianti, offrendo una vista suggestiva sull''antica struttura dell''<strong>Acquedotto Nottolini</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparatevi a una piacevole <strong>passeggiata</strong> di circa 5 km lungo un percorso lineare. L''escursione offre un''opportunità unica per ammirare da vicino le rovine dell''<strong>Acquedotto Romano</strong>, un''opera di ingegneria antica di grande fascino.  Potrete godervi un <strong>picnic</strong> all''ombra dei cipressi, mentre ammirate il paesaggio circostante. Il sentiero è ideale per un''<strong>escursione di un giorno</strong>, offrendo un''esperienza di <strong>trekking</strong> immersa nella <strong>natura</strong> e nella storia.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile - Adatto a tutti</li>
    <li><b>Distanza:</b> Circa 5 km</li>
    <li><b>Dislivello:</b> 50 metri</li>
    <li><b>Tempo di percorrenza:</b> 1.5 - 2 ore</li>
    <li><b>Tipo di percorso:</b> Strada bianca – Facile da seguire</li>
    <li><b>Punti di interesse:</b>  <strong>Acquedotto Romano</strong>, <strong>fontane</strong> lungo il percorso, paesaggi della <strong>Valmarecchia</strong></li>
</ul>

<p>Questo <strong>sentiero di trekking</strong> a <strong>Lucca</strong> è un''occasione imperdibile per immergersi nella <strong>natura</strong>, scoprire la storia e godersi un momento di relax. Un''ottima scelta per un''<strong>escursione facile</strong> con la famiglia o con gli amici.  Non perdetevi questa bellissima <strong>trekking</strong> experience vicino a <strong>Lucca</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.37,
  28,
  29,
  42,
  NULL,
  NULL,
  NULL,
  NULL,
  1145,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Roman Catholic Archidiocese of Lucca',
  '2022-04-01',
  '2022-04-01',
  '2022-04-18 00:00:00',
  '2022-04-18 00:00:00',
  'https://it.wikiloc.com/percorsi-cammino/lucca-parole-doro-acquedotto-romano-100430333',
  NULL,
  43.835995,
  10.50772,
  'POINT(10.50772 43.835995)',
  '979ff87926fae04de2596d3a33e881877d8342be180bc0e20cee4b3b7e4e2bbd',
  'Escursione Lucca Acquedotto Romano: percorso facile 7.37km! Ammira l''acquedotto Nottolini da Lucca, ideale per un picnic. Sentiero su strada bianca, +28m dis...',
  'Lucca - Parole d''Oro: Escursione all''Acquedotto Romano',
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
VALUES (100430333, 'https://it.wikiloc.com/percorsi-cammino/lucca-parole-doro-acquedotto-romano-100430333', NOW(), '979ff87926fae04de2596d3a33e881877d8342be180bc0e20cee4b3b7e4e2bbd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100430333);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100430333/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

COMMIT;

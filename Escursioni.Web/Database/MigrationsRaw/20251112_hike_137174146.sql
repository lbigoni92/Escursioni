BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  137174146,
  'Parole d''oro Zano',
  'breve camminata mattutina. Percorso molto semplice che segue anche la vvf. Il conico Monte Zano è caratteristico sfondo del paese di Vorno. Sulla cima fa spicco una gran croce, che di notte viene illuminata.',
  '<h2>Parole d''Oro Zano – Trekking e Escursioni a Vorno</h2>

<h3>Il Percorso</h3>
<p>
La camminata alle <strong>Parole d''Oro Zano</strong> è un''opportunità perfetta per un’escursione mattutina nella splendida regione della **Toscana**. Questo <strong>sentiero di trekking</strong>, ideale per chi cerca una <strong>passeggiata facile</strong>, si snoda attraverso un paesaggio montano mozzafiato, offrendo panorami unici sul paese di **Vorno**. Il percorso è stato studiato per essere accessibile a tutti, seguendo anche la Via Vie Francigene, una strada di pellegrinaggio storica, e perdersi tra le meraviglie della **natura toscana**. La difficoltà è bassa, rendendolo un’ottima scelta per una <strong>escursione in famiglia</strong> o per chi è alle prime armi con il <strong>trekking**.  Il sentiero conduce direttamente alla cima del <strong>Monte Zano</strong>, un luogo ricco di storia e bellezza naturale.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Preparati a immergerti in un’atmosfera di pace e tranquillità mentre ti inoltri nel cuore della **montagna**. La <strong>escursione alle Parole d''Oro Zano</strong> ti regalerà la possibilità di ammirare un panorama spettacolare, con il <strong>Conico Monte Zano</strong> come sfondo e il pittoresco paese di **Vorno** che si distende ai suoi piedi.  Durante il percorso, potrai goderti il profumo dei pini e delle macchie di lecci, ascoltando il canto degli uccelli e respirando l''aria fresca della **montagna**. Un’esperienza indimenticabile per gli amanti del <strong>trekking** e della **natura**.  La <strong>passeggiata</strong> è perfetta per ammirare i primi raggi del sole e godersi la bellezza del paesaggio toscano.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Distanza:</b> Circa 3 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> 200 metri</li>
    <li><b>Tempo di percorrenza:</b> 1 – 1,5 ore</li>
    <li><b>Punto di partenza:</b> Vorno</li>
    <li><b>Punto di arrivo:</b> Cima del Monte Zano</li>
    <li><b>Caratteristiche:</b> Sentiero ben segnalato, vista panoramica su Vorno e sul Monte Zano, presenza di una grande croce illuminata di notte. Ideale per un''<strong>escursione di un giorno</strong> in <strong>Toscana</strong>.</li>
    <li><b>Tipo di attività:</b> Trekking, Escursione, Sentieri Italia</li>
</ul>

<p>
Non perdere l’opportunità di scoprire le <strong>Parole d''Oro Zano</strong>, un’esperienza unica nel suo genere per gli amanti del <strong>trekking** e della **natura**.  Organizza la tua <strong>escursione</strong> a **Vorno** e lasciati incantare dalla bellezza di questo <strong>sentiero di montagna**!
</p>',
  'Tutte le Attività e Paesi',
  9.4,
  414,
  26,
  470,
  NULL,
  NULL,
  NULL,
  NULL,
  1481,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Guamo',
  '2023-06-01',
  '2023-06-01',
  '2023-06-09 00:00:00',
  '2023-06-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parole-doro-zano-137174146',
  NULL,
  43.806868,
  10.524618,
  'POINT(10.524618 43.806868)',
  '3bc9c35ce1fbd5c424f220d605dbcc1373d3a8a05441623a26cc78078dc2c007',
  'Escursione facile al Monte Zano a Vorno: vista mozzafiato sul borgo e sulla valle! Percorso breve e accessibile, ideale per famiglie e amanti della natura.',
  'Trekking Monte Zano Vorno: Escursione Facile Italia',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (137174146, 'https://it.wikiloc.com/percorsi-escursionismo/parole-doro-zano-137174146', NOW(), '3bc9c35ce1fbd5c424f220d605dbcc1373d3a8a05441623a26cc78078dc2c007')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 137174146);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/137174146/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137174146/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137174146/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  173359682,
  'Castagno del Diavolo, Monte Palodina e Monte Penna da Cardoso',
  'Il percorso ad anello da Cardoso di Garfagnana non presenta particolari difficoltà tecniche, a parte la necessità di superare qualche albero caduto. L''unica vera sfida è rappresentata dal dislivello di 1000 metri, che può risultare impegnativo per chi non è abituato. Parcheggio A Cardoso, il parcheggio non è un problema: si può trovare facilmente posto sia lungo la strada sia nei numerosi parcheggi disponibili. Sentieri I sentieri principali da seguire sono il 136 e il 111. La segnaletica è generalmente chiara, tranne in alcune zone vicino al Monte Penna dove può risultare facile confondersi. I sentieri sono di tipo escursionistico. Il sentiero 136 (Cardoso di Garfagnana - Foce Pompanella) fa anche parte della Via di Assisi. Anche in questo caso, l''unica vera difficoltà è il dislivello, che è moderato all''inizio e diventa più ripido sulla via per il Monte Palodina. Panorama La maggior parte del percorso è al coperto, ma si possono godere di ottimi panorami dalla Croce del Penna e dalla vetta del Monte Palodina. Percorso ad Anello Il percorso ad anello da Cardoso passa per: Castagno del Diavolo (1.6 km) Monte Palodina (5.5 km) Monte Penna (8.4 km) Questo itinerario offre un''esperienza escursionistica gratificante, con bellissimi scorci panoramici e un impegnativo ma soddisfacente dislivello.',
  '<h2>Castagno del Diavolo, Monte Palodina e Monte Penna da Cardoso: Trekking in Garfagnana</h2>

<h3>Il Percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> ad anello da <strong>Cardoso di Garfagnana</strong> offre un''esperienza indimenticabile per gli amanti della <strong>montagna</strong> e della <strong>natura</strong>. Il percorso, adatto a escursionisti esperti, si snoda attraverso paesaggi mozzafiato, unendo la bellezza del <strong>Monte Palodina</strong> e del <strong>Monte Penna</strong>, culminando nel suggestivo <strong>Castagno del Diavolo</strong>. L''itinerario, di circa 24 km, presenta un dislivello totale di 1000 metri, rappresentando una sfida gratificante per chi cerca un''<strong>escursione</strong> impegnativa ma ricca di soddisfazioni. Seguire i <strong>sentieri</strong> 136 e 111 per un''avventura in <strong>trekking</strong> in <strong>Italia</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a un''<strong>escursione</strong> impegnativa ma incredibilmente gratificante. Il <strong>sentiero</strong> si presenta con tratti ripida e alcuni alberi caduti da superare, richiedendo un buon stato di forma e un''adeguata preparazione. Goditi panorami spettacolari dalla <strong>Croce del Penna</strong> e dalla vetta del <strong>Monte Palodina</strong>, ammirando la bellezza del paesaggio circostante. L''ambiente naturale è preservato, con la possibilità di osservare la fauna e la flora locali. Questa <strong>trekking</strong> ad anello è ideale per chi desidera una vera sfida nella <strong>montagna</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Impegnativo</li>
    <li><b>Distanza:</b> Circa 24 km</li>
    <li><b>Dislivello:</b> 1000 metri</li>
    <li><b>Tipo di Sentiero:</b> Escursionistico ad anello</li>
    <li><b>Punto di Partenza:</b> Cardoso di Garfagnana</li>
    <li><b>Punti di Interesse:</b> <strong>Castagno del Diavolo</strong>, <strong>Monte Palodina</strong>, <strong>Monte Penna</strong>, <strong>Croce del Penna</strong></li>
    <li><b>Segnaletica:</b> Generalmente chiara, ma con possibili difficoltà in alcune zone vicino al <strong>Monte Penna</strong></li>
    <li><b>Consigli:</b> Indossa scarponi da trekking adeguati, porta con te acqua e snack, e informati sulle condizioni meteorologiche prima di partire.</li>
</ul>

<p>Questo <strong>sentiero di trekking</strong> rappresenta un''opportunità unica per immergerti nella natura selvaggia della <strong>Garfagnana</strong>, offrendo una giornata indimenticabile per gli amanti dell''<strong>escursionismo</strong> e del <strong>trekking</strong> in <strong>Italia</strong>. </p>',
  'Tutte le Attività e Paesi',
  11.51,
  983,
  383,
  1164,
  333,
  '5:33',
  290,
  '4:50',
  1650,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cardoso',
  '2024-06-01',
  '2024-06-01',
  '2024-06-07 00:00:00',
  '2024-06-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castagno-del-diavolo-monte-palodina-e-monte-penna-da-cardoso-173359682',
  NULL,
  44.02656,
  10.481238,
  'POINT(10.481238 44.02656)',
  '4c00ff5e9cb49e1046144c2a7903e47563cc9df6f5d42b84823a31ad1bc8559e',
  'Escursione Cardoso: Anello Monte Palodina & Penna (Toscana) 11.5km, 983m dislivello. Percorso medio da Cardoso con panorami mozzafiato!',
  'Monte Palodina: escursione da Cardoso (anello, 983m)',
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
VALUES (173359682, 'https://it.wikiloc.com/percorsi-escursionismo/castagno-del-diavolo-monte-palodina-e-monte-penna-da-cardoso-173359682', NOW(), '4c00ff5e9cb49e1046144c2a7903e47563cc9df6f5d42b84823a31ad1bc8559e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 173359682);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/173359682/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  99028295,
  'Monte Rondinaio - Lucca',
  'Girata mattutina, di due ore e trenta, in compagnia di altre due persone (che hanno un buon passo) e di un bel canone, il giro è facile, non presenta punti esposti e vi è anche un paio di fontanelle. Il percorso, prevede di passare per i primi 2 km da strada (poco o punta trafficata) in seguito avremo un'' alternanza di paesini e sentieri. La parte di più bella di questo sentiero è la salita al Monte Rondinaio dove la vita è stupenda! Anche se è una vetta minore ha un panorama unico nel suo genere si vede l''Uomo Morto la Pania, il Piglione e altri monti!',
  '<h2>Monte Rondinaio - Lucca: Escursione Trekking Facile nella Montagna Lucchese</h2>

<h3>Il Percorso – Escursione Trekking a Lucca</h3>
<p>Scopri il meraviglioso sentiero di <strong>Monte Rondinaio a Lucca</strong>, un''escursione trekking di due ore e trenta minuti, perfetta per una giornata all''aria aperta. Questo <strong>sentiero di trekking</strong> offre un''esperienza unica nella <strong>montagna lucchese</strong>, con panorami mozzafiato e un percorso facile, adatto anche a escursionisti meno esperti. La <strong>escursione a Monte Rondinaio</strong> ti condurrà attraverso paesaggi incantevoli, alternando strade rurali a sentieri immersi nella <strong>natura italiana</strong>. Inizia la tua <strong>trekking a Lucca</strong> con un percorso di 2 km su strada, poi goditi l''alternarsi di paesaggi e sentieri, ideale per una <strong>passeggiata in montagna</strong>.</p>

<h3>Cosa Aspettarsi – Trekking Facile con Panorami Incredibili</h3>
<p>Preparati per un''esperienza di <strong>trekking</strong> indimenticabile sul <strong>Monte Rondinaio</strong>. Questo sentiero di escursione è perfetto per chi cerca una <strong>passeggiata facile</strong> nella <strong>montagna</strong>, senza particolari difficoltà o punti esposti. Ammira la bellezza del <strong>canone</strong>, attraversa fontanelle e goditi la salita alla vetta. La parte più bella di questa <strong>escursione a Lucca</strong> è sicuramente la vista panoramica che si apre una volta raggiunta la cima. Da qui potrai ammirare l''Uomo Morto, la Pania, il Piglione e molti altri monti circostanti, un vero spettacolo per gli amanti della <strong>natura e del trekking</strong>.</p>

<h3>Informazioni Utili – Dettagli dell''Escursione</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 6 km (andata e ritorno)</li>
    <li><strong>Durata:</strong> 2 ore e 30 minuti</li>
    <li><strong>Altitudine:</strong> Salita al Monte Rondinaio (vetta minore)</li>
    <li><strong>Punti di Interesse:</strong> Canone, fontanelle, panorama mozzafiato sull''Uomo Morto, Pania, Piglione e altri monti.</li>
    <li><strong>Tipo di attività:</strong> Trekking, escursione, sentiero di montagna</li>
</ul>

<p>Organizza la tua prossima <strong>trekking a Lucca</strong> e vivi un''esperienza unica sul <strong>Monte Rondinaio</strong>, un sentiero perfetto per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>. Scopri la bellezza del paesaggio lucchese con questa facile <strong>escursione</strong>!</p>',
  'Tutte le Attività e Paesi',
  10.13,
  536,
  164,
  787,
  132,
  '02:12',
  132,
  '02:12',
  1652,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Santa Maria Albiano',
  '2022-04-01',
  '2022-04-01',
  '2022-04-03 00:00:00',
  '2022-04-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-rondinaio-lucca-99028295',
  NULL,
  43.91796,
  10.40277,
  'POINT(10.40277 43.91796)',
  '25f89a26d079223b58803bb4df9665828a62b2aebb1d7bc327bea1f5cdb12dad',
  'Escursione Monte Rondinaio Lucca: Anello facile 10.13km, +536m. Vista panoramica su Lucca, Uomo Morto e Piglione. Perfetto per una giornata in Toscana!',
  'Monte Rondinaio: escursione da Santa Maria Albiano (Toscana)',
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
VALUES (99028295, 'https://it.wikiloc.com/percorsi-escursionismo/monte-rondinaio-lucca-99028295', NOW(), '25f89a26d079223b58803bb4df9665828a62b2aebb1d7bc327bea1f5cdb12dad')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 99028295);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/99028295/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99028295/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99028295;

COMMIT;

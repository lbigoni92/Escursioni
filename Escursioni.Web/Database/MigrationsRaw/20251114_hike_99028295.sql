BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  99028295,
  'Monte Rondinaio - Lucca',
  'Girata mattutina, di due ore e trenta, in compagnia di altre due persone (che hanno un buon passo) e di un bel canone, il giro è facile, non presenta punti esposti e vi è anche un paio di fontanelle. Il percorso, prevede di passare per i primi 2 km da strada (poco o punta trafficata) in seguito avremo un'' alternanza di paesini e sentieri. La parte di più bella di questo sentiero è la salita al Monte Rondinaio dove la vita è stupenda! Anche se è una vetta minore ha un panorama unico nel suo genere si vede l''Uomo Morto la Pania, il Piglione e altri monti!',
  '<h2 id="escursione-monte-rondinaio-lucca">Escursione al Monte Rondinaio da Santa Maria Albiano</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per l''escursione al Monte Rondinaio si trova facilmente raggiungibile in auto da Santa Maria Albiano. Da qui, segui le indicazioni per i sentieri escursionistici. In alternativa, è possibile raggiungere il punto di partenza a piedi, partendo dal centro del paese. L''accesso è libero e non ci sono costi di parcheggio.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo anello di 10.13 km con un dislivello di 819 metri è perfetto per un''escursione mattutina. Il sentiero inizia da una strada poco trafficata, per poi proseguire alternando tratti di strada a sentieri e paesini. La parte più bella dell''escursione è la salita al Monte Rondinaio, dove potrai godere di un panorama mozzafiato. Il sentiero è ben segnalato e presenta poche pendenze ripide, rendendolo adatto anche a escursionisti con un buon passo.  Durante il giro, potrai ammirare i panorami sulla Valmarecchia, l''Uomo Morto, la Pania, il Piglione e numerosi altri monti toscani. Un giro di circa 2 ore e 30 minuti, perfetto per una giornata all''aria aperta.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione al Monte Rondinaio presenta una difficoltà media, adatta a escursionisti con un buon passo e un minimo di allenamento. Il dislivello di 819 metri richiede una certa resistenza, ma il percorso è ben tenuto e non presenta ostacoli particolari.  È consigliabile indossare scarpe da trekking, portare con sé acqua e snack, e rispettare l''ambiente circostante.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per aiutarti durante l''escursione, ti forniamo la traccia GPS di questo percorso. Ricorda di scaricare la traccia sul tuo dispositivo GPS o sulla tua app preferita prima di partire.  L''escursione al Monte Rondinaio offre un panorama unico e una bella giornata tra la montagna e la natura.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 10.13 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 819 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Sentiero di accesso da Santa Maria Albiano</li>
  <li><strong>Comune:</strong> Santa Maria Albiano, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.13,
  819,
  164,
  787,
  288,
  '4:48',
  250,
  '4:10',
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
  'Appennino Tosco-Emiliano',
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

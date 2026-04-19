BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  90605819,
  'Vorno - Campo croce - Monte Faeta - Verruchino - Spuntone - Santallago',
  'Sentieri seguiti : Da Vorno abbiamo imbucato il 124 fino a Campo croce da li abbiamo proseguito sul sentiero 00 al Monte Faeta all''andata abbiamo preso la direttissima mentre al rientro abbiamo fatto un anello più dolce abbiamo proseguito in direzione del Verrichino e rientrati a Campo Croce e riabbiamo proseguito sullo 00 fino Sant''allago (facendo una tappa allo Spuntone dove possiamo vedere un Croce)da li abbiamo proseguito su una strada sterrata fino quasi al monte Zano dove abbiamo deviato per un sentiero CAI(non ricordo il numero). Percorso non proprio banale specialmente in 2 punti: Tratto finale (ultimo km di sentiero) l''abbiamo fatto al buio e era scivoloso. attacco da campo a croce in direzione Spuntone (una bella salita) Per il resto non ci sono difficoltà tecniche. Abbiamo trovato la neve a Santallago ma niente di problematico, anzi è stato piacevole. Non provate a seguire dei sentieri non battiti come abbiamo fatto noi i sentieri che riportano al 124 dalla strada del ritorno sono completamente abbandonati. Per altre informazioni chiedetemi e Seguitemi!',
  '<h2>Vorno - Campo croce - Monte Faeta - Verruchino - Spuntone - Santallago: Trekking Esplorativo in Montagna Toscana</h2>

<h3>Il Percorso: Un Anello di Sentieri da Trekking in Toscana</h3>

<p>Questo <strong>sentiero di trekking</strong> in Toscana offre un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e dell''<strong>escursionismo</strong>. Il percorso, che si snoda attraverso il Parco Regionale della Maremma Toscana, collega i paesi di Vorno, Campo Croce e Santallago, passando per le cime del Monte Faeta, Verruchino e Spuntone. È un''ottima opportunità per praticare <strong>trekking</strong> in un ambiente naturale incontaminato, con panorami mozzafiato e un''ampia varietà di flora e fauna.  Questo itinerario di <strong>sentieri</strong> è perfetto per una giornata di <strong>trekking</strong> a piedi in <strong>montagna</strong>.</p>

<h3>Cosa Aspettarsi: Una Giornata di Trekking in Ambiente Selvaggio</h3>

<p>Preparatevi per una giornata di <strong>trekking</strong> impegnativa ma estremamente gratificante. Il percorso presenta alcuni tratti collinari e saliscendi, con una <strong>difficoltà</strong> considerata media.  L''escursione attraverso il Monte Faeta e le sue pendici offre un''esperienza di <strong>sentiero</strong> autentica, con diverse possibilità di ammirare la bellezza del paesaggio toscano.  È consigliabile indossare scarpe da <strong>trekking</strong> adatte e portare con sé acqua e snack, soprattutto se si prevede di affrontare il percorso in estate.  La presenza di neve a Santallago aggiunge un tocco di magia al <strong>sentiero</strong>, rendendo l''esperienza ancora più suggestiva.  Questo <strong>sentiero di escursione</strong> è un''avventura da non perdere per chi ama la <strong>natura</strong>!</p>

<h3>Informazioni Utili: Dettagli del Sentiero e Consigli di Sicurezza</h3>

<ul>
  <li><b>Distanza Totale:</b> Circa 15-20 km (a seconda del percorso esatto)</li>
  <li><b>Difficoltà:</b> Media – Richiede una buona condizione fisica</li>
  <li><b>Dislivello:</b> Circa 700-800 metri</li>
  <li><b>Punti di Interesse:</b> Vista panoramica sul Monte Faeta, Croce a Spuntone, tratti di neve a Santallago, possibilità di avvistare la fauna locale</li>
  <li><b>Consigli di Sicurezza:</b>  È fondamentale informarsi sulle condizioni meteorologiche prima di partire e indossare abbigliamento adeguato.  Portate con voi acqua, snack, mappa e bussola o GPS.  Informate qualcuno del vostro itinerario e del vostro rientro previsto. Attenzione ai tratti finali del <strong>sentiero</strong>, particolarmente scivolosi al buio.</li>
</ul>

<p>Questo <strong>sentiero</strong> rappresenta un''opportunità unica per un''<strong>escursione</strong> in <strong>montagna</strong>, combinando elementi di <strong>trekking</strong> e di scoperta di <strong>sentieri</strong> nascosti.  Esplorate la bellezza della Toscana attraverso questo affascinante itinerario.  Se siete alla ricerca di un''esperienza di <strong>trekking</strong> autentica e indimenticabile, questo <strong>sentiero</strong> è la scelta perfetta per voi.  Vienite a scoprire le meraviglie della <strong>natura</strong> in questo <strong>sentiero</strong> unico!</p>',
  'Tutte le Attività e Paesi',
  20.59,
  1,
  77,
  875,
  135,
  '02:15',
  135,
  '02:15',
  2520,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vorno',
  '2021-12-01',
  '2021-12-01',
  '2021-12-11 00:00:00',
  '2021-12-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vorno-campo-croce-monte-faeta-verruchino-spuntone-santallago-90605819',
  NULL,
  43.785107,
  10.512348,
  'POINT(10.512348 43.785107)',
  '2ccd5a138f125fe2b4ad8311d927af18349c9fae22f46e3e42a15bc0cc76769e',
  'Esplora il Monte Faeta: Vorno, Campo Croce, Verrichino e Santallago! Sentieri imperdibili in Toscana. Difficoltà moderate, neve prevista!',
  'Trekking Monte Faeta: Sentiero Vorno - Campo Croce - Italia',
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
VALUES (90605819, 'https://it.wikiloc.com/percorsi-escursionismo/vorno-campo-croce-monte-faeta-verruchino-spuntone-santallago-90605819', NOW(), '2ccd5a138f125fe2b4ad8311d927af18349c9fae22f46e3e42a15bc0cc76769e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 90605819);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/90605819/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/90605819/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 90605819;

COMMIT;

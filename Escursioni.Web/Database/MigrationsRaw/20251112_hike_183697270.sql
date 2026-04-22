BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  183697270,
  'Praga giorno 2 Catedral de San Vito, Basílica de San Jorge e Iglesia de San Nicolás da Praha-Nové Město',
  'Percorso ad anello da Praha-Nové Město passando per: - Catedral de San Vito (4.1 km) - Basílica de San Jorge (5.5 km) - Chapele of holy cross (8.8 km) - Monasterio de Strahov (10.3 km) - Puente Carlos (16.6 km) - Iglesia de San Nicolás (17.9 km) - Sinagoga Española (18.3 km) La cattedrale di San Vito è una chiesa che si trova a Praga ed è uno dei simboli della città e dell''intera Repubblica Ceca, sia a causa della sua storia che come memoriale artistico. La cattedrale ospita un''importante reliquia della cristianità, la testa di san Luca evangelista. Durante il suo viaggio in Italia del 1354, l''imperatore Carlo IV, per arricchire la cattedrale di Praga, si fece consegnare la testa di San Luca dalla città di Padova, la testa di San Vittore dalla città di Feltre e le reliquie di San Vito da Pavia. All''interno della cattedrale è inoltre custodito anche il cranio di Sant''Anania[1]. La volta della cappella di San Venceslao è stata affrescata dal Maestro dell''Altare di Litoměřice.',
  '<h2 >Trekking a Praga: Sentiero Catedral de San Vito e Basilica di San Giorgio</h2>

<h3 >Il percorso</h3>
<p>Esplora il cuore di Praga con questo affascinante <strong>sentiero di trekking</strong>, un percorso ad anello che ti condurrà attraverso alcuni dei luoghi più iconici della città.  Questo <strong>trekking a Praga</strong> ti offre l''opportunità di immergerti nella storia e nella cultura della Repubblica Ceca, partendo dalla maestosa <strong >Cattedrale di San Vito</strong>, passando per la suggestiva <strong >Basilica di San Giorgio</strong> e altre chiese e monumenti storici.  L''escursione è un''ottima occasione per ammirare la bellezza della <strong >montagna di Praga</strong> e la sua ricca <em >natura</em>.  Percorrendo questo <strong>sentiero escursionistico</strong>, potrai scoprire la città da una prospettiva unica, lontano dalla folla dei turisti.  Perfetto per un''<strong>escursione a Praga</strong> per famiglie o per appassionati di <strong>trekking</strong>.</p>

<h3 >Cosa aspettarsi</h3>
<ul>
<li>Un percorso ad anello di circa 17.9 km, con un dislivello totale di circa 270 metri.</li>
<li>Un''escursione di circa 3-4 ore, a seconda del ritmo e delle soste.</li>
<li>L''opportunità di visitare alcuni dei monumenti più importanti di Praga: <strong >Cattedrale di San Vito</strong>, <strong >Basilica di San Giorgio</strong>, <strong >Chiesa di San Nicola</strong>, <strong >Sinagoga Ebraica</strong> e il <strong >Ponte Carlo</strong>.</li>
<li>Possibilità di ammirare la splendida <em >natura</em> della <strong >montagna di Praga</strong> e dei suoi dintorni.</li>
</ul>

<h3 >Informazioni utili</h3>
<p>Questo <strong>sentiero di trekking</strong> offre un''esperienza indimenticabile per chi visita Praga.  Il percorso è ben segnalato e facile da seguire, ma è consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.  Considera che l''accessibilità a determinati punti potrebbe essere limitata a causa di lavori in corso o restrizioni temporanee.  La <strong>trekking</strong> a Praga è un''opportunità per scoprire la città in modo attivo e autentico.  Pianifica la tua <strong>escursione a Praga</strong> con anticipo e goditi questa splendida <strong>escursione nel sentiero</strong>.  Esplora questo fantastico <strong>sentiero in montagna</strong>, ideale per un''<strong>escursione in Italia</strong> o un''esperienza unica a Praga.</p>',
  'Tutte le Attività e Paesi',
  19.62,
  279,
  108,
  351,
  134,
  '02:14',
  134,
  '02:14',
  2188,
  'Medio',
  'Anello',
  NULL,
  'Repubblica Ceca',
  'Hlavní Mesto Praha',
  'Praha-Nové Město',
  '2024-09-01',
  '2024-09-01',
  '2024-09-04 00:00:00',
  '2024-09-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/catedral-de-san-vito-basilica-de-san-jorge-e-iglesia-de-san-nicolas-da-praha-nove-mesto-183697270',
  NULL,
  50.091482,
  14.427544,
  'POINT(14.427544 50.091482)',
  'dbe74beee612d156cf3c297eee7234e3d802479c4585522a18ee8458f4fc69eb',
  'Escursione Praga: percorso anello Cattedrale S. Vito & dintorni | 19.6km, +279m | Esplora Praga a piedi!',
  'Praga: Escursione Cattedrale di San Vito (19.6km)',
  'Estero',
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
VALUES (183697270, 'https://it.wikiloc.com/percorsi-escursionismo/catedral-de-san-vito-basilica-de-san-jorge-e-iglesia-de-san-nicolas-da-praha-nove-mesto-183697270', NOW(), 'dbe74beee612d156cf3c297eee7234e3d802479c4585522a18ee8458f4fc69eb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183697270);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183697270/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183697270/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183697270;

COMMIT;

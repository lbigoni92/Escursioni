BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  91571972,
  'Salivoli - Punta Falcone',
  'In questa passeggiata ho visitato la località chiamata Punta Falcone, a Salivoli. Sentieri sono semplici da percorrere e i sentieri sono quasi obligati, non ci si può perdere... Interessanti sono i punti che possiamo visitare : - Osservatorio astronomico - Vari Bunker della 2° guerra mondiale (museo all''aperto) - Calette Varie (dove abbiamo pranzato). Possiamo osservare numerose piante sulle quali vi è apposta una targhetta per riconoscere che pianta sia. Per altre informazioni chiedetemi e Seguitemi!',
  '<h2>Salivoli - Punta Falcone: Escursione Trekking in Montagna e Sentiero Naturalistico</h2>

<h3>Il Percorso di Trekking alla Punta Falcone</h3>

<p>Immergetevi nel cuore della **montagna** con questa fantastica <strong>escursione trekking</strong> alla <strong>Punta Falcone</strong> a <strong>Salivoli</strong>. Il sentiero, di facile percorrenza, vi condurrà attraverso un paesaggio mozzafiato, ideale per un''<strong>escursione in giornata</strong> o un''attività di <strong>trekking</strong> fuoriporta.  Questo <strong>sentiero** è quasi obbligato, garantendo una vista panoramica impareggiabile e una profonda immersione nella <strong>natura** italiana. Perfetto per famiglie e appassionati di <strong>trekking**!</p>

<h3>Cosa Aspettarsi Durante l''Escursione</h3>

<p>Preparatevi a un''esperienza indimenticabile in questa <strong>escursione**! Percorrerete un <strong>sentiero** ben tracciato, attraversando boschi lussureggianti e godendo di panorami spettacolari. L''<strong>escursione** vi permetterà di ammirare la flora locale, con numerose piante identificate da <em>targhette informative</em>, e di scoprire le ricchezze naturali della zona.  Potrete anche visitare punti di interesse storici e culturali, come i <em>bunker della Seconda Guerra Mondiale</em> e l''<em>osservatorio astronomico</em>.</p>

<h3>Informazioni Utili per il Trekking</h3>

<ul>
    <li><strong>Distanza Totale:</strong> Circa 6 km</li>
    <li><strong>Dislivello:</strong> 300 metri</li>
    <li><strong>Difficoltà:</strong> Facile - Adatto a tutti i livelli di esperienza</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero Naturalistico - Quasi Obligatorio</li>
    <li><strong>Punti di Interesse:</strong> <em>Osservatorio Astronomico, Bunker della Seconda Guerra Mondiale (Museo all''aperto), Calette, Flora e Fauna locale</em></li>
    <li><strong>Adatto per:</strong>  <strong>Trekking</strong>, <strong>Escursioni**, Famiglie, Appassionati di <strong>Natura**</li>
</ul>

<p>Non perdetevi questa splendida <strong>escursione trekking** lungo i <strong>sentieri** di <strong>Salivoli**!**</p>',
  'Tutte le Attività e Paesi',
  1.38,
  54,
  27,
  93,
  25,
  '00:25',
  25,
  '00:25',
  237,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Salivoli',
  '2021-12-01',
  '2021-12-01',
  '2021-12-29 00:00:00',
  '2021-12-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/salivoli-punta-falcone-91571972',
  NULL,
  42.934217,
  10.499638,
  'POINT(10.499638 42.934217)',
  'c1a79841165814baf8b7b9237a8d67f74ea4ec0f36b8dc60c140376dc4f7e1fa',
  'Escursione Salivoli Punta Falcone: Sentieri facili, bunker WWII, osservatorio e calette. Pranziate e flora autoctona! Scopri Salivoli!',
  'Trekking Salivoli Punta Falcone: Sentiero & Bunker ⛰️',
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
VALUES (91571972, 'https://it.wikiloc.com/percorsi-escursionismo/salivoli-punta-falcone-91571972', NOW(), 'c1a79841165814baf8b7b9237a8d67f74ea4ec0f36b8dc60c140376dc4f7e1fa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 91571972);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/91571972/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91571972/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91571972;

COMMIT;

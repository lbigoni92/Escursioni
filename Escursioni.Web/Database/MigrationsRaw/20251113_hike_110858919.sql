BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  110858919,
  'Candalla - Passeggiata tranquilla',
  'Il percorso è molto breve ma carino, le zone più belle sono in fondo al sentiero con delle polle uniche, basta stare attenti a dove si mette i piedi e si cammina tranquilli. Abbiamo fatto il bagno in varie polle e l''acqua sarà stata di 10 gradi.. Proprio quello che ci vuole per riprendersi da questi bollori. C''è anche un bivio che porta a Casoli. Una fonte è a inizio percorso',
  '<h2>Candalla - Passeggiata Tranquilla: Trekking nella Montagna degli Orsi</h2>

<h3>Il Percorso</h3>

<p>Immergiti nella natura incontaminata della <strong>Montagna degli Orsi</strong> con questa <em>passeggiata tranquilla</em>, un''escursione ideale per chi cerca un''esperienza di <strong>trekking</strong> breve ma ricca di emozioni. Questo sentiero, perfetto per una <strong>escursione</strong>, ti guiderà attraverso paesaggi mozzafiato, con un''inclinazione significativa solo nelle ultime fasi, quando raggiungi le zone più suggestive. È un percorso facile, adatto anche a famiglie e principianti, ma richiede attenzione per evitare cadute. La <strong>passeggiata</strong> è breve, ma ogni passo ti riporterà a panorami incredibili.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparati ad ammirare delle <em>polle uniche</em>, veri gioielli naturali incastonati nel cuore della montagna. Questa escursione offre l''opportunità di immergersi nella <strong>natura</strong> italiana, respirando aria fresca e godendo della bellezza del paesaggio. L''ambiente circostante è ricco di flora e fauna, rendendo questa <strong>escursione sentiero</strong> un''esperienza davvero speciale. La distanza del sentiero è breve, ma la sua bellezza lo rende perfetto per una giornata di <strong>trekking</strong> rilassante.</p>

<p>Il percorso include un <em>bivio che conduce a Casoli</em>, un caratteristico borgo medievale, rendendo l''escursione ancora più interessante. Non dimenticare un buon costume da bagno, perché l''acqua delle <em>polle</em>, a causa della corrente fredda, è perfetta per un tuffo rinfrescante, raggiungendo una temperatura di circa 10 gradi. Un''occasione unica per <strong>riprendersi da questi bollori</strong> in mezzo alla natura.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Distanza:</strong> Breve (circa 3 km)</li>
  <li><strong>Dislivello:</strong> Moderato (circa 200 metri)</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Luogo:</strong> Montagna degli Orsi, Candalla (Abruzzo)</li>
  <li><strong>Tipo attività:</strong> Trekking, Escursione, Natura, Sentiero</li>
  <li><strong>Punti di interesse:</strong> Polle naturali, Panorami mozzafiato, Bivio per Casoli, Sorgenti d''acqua</li>
</ul>

<p>Ricorda di indossare scarpe da trekking adatte e di portare con te acqua e snack. Pianifica la tua <em>escursione sentiero</em> con anticipo e goditi la tranquillità e la bellezza della <strong>Montagna degli Orsi</strong>. Questa <em>passeggiata tranquilla</em> è perfetta per una giornata all''aria aperta in Italia.</p>',
  'Tutte le Attività e Paesi',
  4.85,
  273,
  97,
  293,
  NULL,
  NULL,
  NULL,
  NULL,
  797,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Metato',
  '2022-08-01',
  '2022-08-01',
  '2022-08-16 00:00:00',
  '2022-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/candalla-passeggiata-tranquilla-110858919',
  NULL,
  43.95223,
  10.318118,
  'POINT(10.318118 43.95223)',
  '9a6c000cd8caa590be51655ddc15799613fe6b0cbea50f0faf77dbca732c6e50',
  'Escursione Candalla Metato: Anello facile in Toscana (4.85km, +273m) | Scopri le polle e il bagno rinfrescante! Bivio Casoli. Perfetta per una giornata tranq...',
  'Candalla: Escursione Anello da Metato (Toscana)',
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
VALUES (110858919, 'https://it.wikiloc.com/percorsi-escursionismo/candalla-passeggiata-tranquilla-110858919', NOW(), '9a6c000cd8caa590be51655ddc15799613fe6b0cbea50f0faf77dbca732c6e50')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110858919);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110858919/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

COMMIT;

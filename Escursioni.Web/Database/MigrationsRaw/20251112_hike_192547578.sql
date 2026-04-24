BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  192547578,
  'Gambassi terme',
  'Il percorso inizia soleggiato nei pressi della Casa del Pellegrino, per poi addentrarsi in un piacevole bosco ombreggiato. Si devia verso la sorgente dei Bollori, caratterizzata da particolari fenomeni naturali, e si prosegue attraversando campi fioriti di ginestre. Il tratto verso la Grotta di Maurizio è scivoloso ma reso sicuro da un passamano in corda, offre una vista suggestiva. Qui si possono esplorare tunnel dell''acquedotto, consigliando l''uso di una torcia. Dopo una breve salita, si giunge a Gambassi Terme. Il percorso è ben segnalato e di facile difficoltà, eccetto il tratto per la grotta. Numerosi guadi sono presenti ma facilmente attraversabili.',
  '<h2>Escursione Trekking Gambassi Terme: Sentiero Naturale tra Sorgenti e Acque</h2>

<h3>Il Percorso: Un''Escursione di Trekking a Gambassi Terme</h3>
<p>Immergiti nella natura incontaminata della Val di Greve con questa suggestiva <strong>escursione di trekking</strong> a <strong>Gambassi Terme</strong>. Questo <strong>sentiero</strong>, ideale per un''<strong>escursione</strong> in <strong>montagna</strong>, ti condurrà attraverso un paesaggio variegato, ricco di flora e fauna, perfetto per gli amanti del <strong>trekking</strong> e dell''<strong>outdoor</strong> in <strong>Italia</strong>.  Scopri la bellezza di questo percorso naturalistico, progettato per offrirti un''esperienza di <strong>trekking</strong> indimenticabile.</p>

<h3>Cosa Aspettarsi: Un''Avventura tra Natura e Storia</h3>
<p>Questa <strong>escursione di trekking</strong> a <strong>Gambassi Terme</strong> è un''opportunità unica per immergerti nella tranquillità della <strong>natura</strong>.  Percorrerai un <strong>sentiero</strong> di facile difficoltà, attraversando boschi ombrosi, campi fioriti e suggestivi tunnel dell''antico acquedotto.  Preparati ad ammirare fenomeni naturali unici come la <strong>sorgente dei Bollori</strong> e a scoprire la <strong>Grotta di Maurizio</strong>, un luogo ricco di storia e leggende.  Un''esperienza di <strong>trekking</strong> autentica per gli appassionati di <strong>sentieri Italia</strong>.</p>

<h3>Informazioni Utili per il Tuo Trekking</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile – Tratto per la <strong>Grotta di Maurizio</strong> leggermente più impegnativo.</li>
    <li><strong>Distanza Totale:</strong> Circa 8 km</li>
    <li><strong>Dislivello:</strong> Circa 300 metri</li>
    <li><strong>Durata:</strong> 3-4 ore</li>
    <li><strong>Punti di Interesse:</strong> <strong>Sorgente dei Bollori</strong>, <strong>Grotta di Maurizio</strong>, Tunnel dell''Acquedotto, Campi di <strong>Ginestre</strong>.</li>
    <li><strong>Segnaletica:</strong> Il <strong>sentiero</strong> è ben segnalato, ma è consigliabile avere una mappa e una bussola.</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarpe da <strong>trekking</strong>, abbigliamento a strati, acqua, snack, crema solare, cappello, torcia elettrica (consigliata per l''esplorazione della <strong>Grotta di Maurizio</strong>).</li>
    <li><strong>Guadi:</strong> Numerosi guadi presenti, facilmente attraversabili con attenzione.</li>
</ul>

<p>Non perdere l''occasione di vivere un''indimenticabile <strong>escursione a Gambassi Terme</strong>, un''esperienza di <strong>trekking</strong> perfetta per le famiglie e gli amanti della <strong>natura</strong>.  Questo <strong>sentiero</strong> di <strong>trekking</strong> ti regalerà panorami mozzafiato e la possibilità di scoprire le bellezze della <strong>Val di Greve</strong>. Ricorda di rispettare l''ambiente durante il tuo <strong>trekking</strong> in <strong>Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  10.5,
  417,
  126,
  404,
  239,
  '3:59',
  208,
  '3:28',
  1711,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sant''Agostino',
  '2024-11-01',
  '2024-11-01',
  '2024-11-22 00:00:00',
  '2024-11-22 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gambassi-terme-192547578',
  NULL,
  43.540557,
  10.953903,
  'POINT(10.953903 43.540557)',
  '08850c86a67ebe99ea9e240377c4719815ce79c0cc0025c562ce0fe8bda7062c',
  'Escursione Gambassi Terme: Anello Toscano 10.5km, difficoltà media, +303m. Trekking tra ginestre, sorgenti e acquedotto! Grotta di Maurizio: esplora i tunnel...',
  'Gambassi Terme: escursione anello da Gambassi (Toscana)',
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
VALUES (192547578, 'https://it.wikiloc.com/percorsi-escursionismo/gambassi-terme-192547578', NOW(), '08850c86a67ebe99ea9e240377c4719815ce79c0cc0025c562ce0fe8bda7062c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 192547578);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/192547578/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/192547578/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 192547578;

COMMIT;

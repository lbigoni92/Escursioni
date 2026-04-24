BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104143205,
  'Casale di Pari - Monte Acuto',
  'Giro pomeridiano nei pressi del borgo di Pari. Niente di difficile o stancante lo abbiamo percorso in 2 ore e 20 palando e fermandoci a mangiare. Ci sono panchine, bei panorami e alcuni tratti sono su strada. Il sentiero ha alcuni tratti esposti al sole, raccomando cappello e occhiali da sole se lo percorrete in estate, oltre a una buona posizione d''acqua. Potete farlo anche con scarpe da ginnastica... Ma il piede deve essere chiuso, niente scarpe aperte',
  '<h2>Casale di Pari - Monte Acuto: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong> offre un''esperienza piacevole e accessibile nei pressi del pittoresco <strong>borgo di Casale di Pari</strong>, che si snoda fino al <strong>Monte Acuto</strong>. Si tratta di un <em>giro pomeridiano</em>, perfetto per chi cerca una <strong>escursione in montagna</strong> senza eccessivi sforzi. Il percorso, di circa 6-8 km, si sviluppa principalmente su strada, con alcuni tratti più impegnativi su sentiero naturale.  È un''ottima opzione per una <strong>gita in giornata di trekking</strong> in compagnia della famiglia o degli amici.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi a una <strong>escursione tranquilla e panoramica</strong> attraverso la natura incontaminata della <strong>montagna piemontese</strong>.  Il <strong>sentiero Casale di Pari - Monte Acuto</strong> offre panorami mozzafiato sulle valli circostanti e la possibilità di ammirare la flora e la fauna locali.  Il percorso è caratterizzato da alcuni tratti esposti al sole, soprattutto durante i mesi estivi, quindi è consigliabile portare con sé un <strong>cappello e occhiali da sole</strong>.  La dislivello è contenuto, rendendo l''<strong>escursione accessibile a tutti i livelli di esperienza</strong>, anche a chi pratica <strong>trekking</strong> con scarpe da ginnastica.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Difficoltà:</strong> Facile - Media</li>
    <li><strong>Distanza:</strong> Circa 6-8 km</li>
    <li><strong>Dislivello:</strong> 300-400 metri (variabile)</li>
    <li><strong>Tempo di percorrenza:</strong> 2 - 3 ore (a seconda del ritmo)</li>
    <li><strong>Punti di interesse:</strong> Panorami mozzafiato,  tratti naturalistici, possibili avvistamenti di fauna locale</li>
    <li><strong>Consigli:</strong> Indossare scarpe da trekking chiuse, portare con sé acqua e snack, proteggersi dal sole con cappello e occhiali da sole, soprattutto in estate. È consigliabile informarsi sulle condizioni meteorologiche prima della partenza per una <strong>escursione sicura</strong>.</li>
</ul>

<p>Godetevi questa splendida <strong>escursione sentiero</strong> e scoprite la bellezza del <strong>Monte Acuto</strong> e del <strong>Casale di Pari</strong>!  Un''occasione perfetta per una giornata di <strong>trekking</strong> immersi nella <strong>natura italiana</strong>.</p>',
  'Tutte le Attività e Paesi',
  10.08,
  328,
  254,
  505,
  142,
  '02:22',
  142,
  '02:22',
  1788,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casale di Pari',
  '2022-05-01',
  '2022-05-01',
  '2022-05-29 00:00:00',
  '2022-05-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/casale-di-pari-monte-acuto-104143205',
  NULL,
  43.055643,
  11.289103,
  'POINT(11.289103 43.055643)',
  '84ac1872784378dd8ee203034a3e290bd39cad9716107d438e15239bde8550aa',
  'Escursione Monte Acuto da Casale di Pari: Giro facile di 10.08km (Toscana) con +328m dislivello. Perfetto per una giornata! Sentiero adatto a scarpe da ginna...',
  'Monte Acuto: Escursione facile da Casale di Pari (Toscana)',
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
VALUES (104143205, 'https://it.wikiloc.com/percorsi-escursionismo/casale-di-pari-monte-acuto-104143205', NOW(), '84ac1872784378dd8ee203034a3e290bd39cad9716107d438e15239bde8550aa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104143205);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104143205/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

COMMIT;

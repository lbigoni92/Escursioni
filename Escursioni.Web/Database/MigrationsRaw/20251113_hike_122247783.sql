BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  122247783,
  'Populonia - La via del ferro - Sentiero dei Cavalleggeri',
  'Populonia Una bellissima giornata di Dicembre, abbiamo fatto una girata alla ricerca di Geo cache e siamo anche passati a vedere delle tombe etrusche. Consiglio molto la visita. In seguito abbiamo mangiato al castello di Populonia con una bellissima vita su tutto il promontorio... proseguito per la Buca delle Fate... Cala Buia e Faro di Baratti. La strada costiera presenta dei tratti esposti (causa frane) niente di difficile ma è bene avvisare. Venite con un abbigliamento adeguato specialmente le scarpe!',
  '<h2>Populonia - La via del ferro - Sentiero dei Cavalleggeri: Escursione Trekking in Toscana</h2>

<h3>Il percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> a <strong>Populonia</strong> offre un''esperienza indimenticabile tra la <strong>montagna toscana</strong> e la splendida costa. Il percorso, soprannominato "La via del ferro", segue antichi sentieri utilizzati dai <strong>Cavalleggeri</strong>, un''unità militare romana. L''<strong>escursione</strong> inizia dalle rovine etrusche di <strong>Populonia</strong>, permette di esplorare la zona circostante, e culmina con una spettacolare discesa lungo la costa, ammirando le scogliere a picco e la magnifica <strong>Cala Buia</strong> e il <strong>Faro di Baratti</strong>. Un''opportunità unica per immergersi nella <strong>natura</strong> e scoprire il ricco patrimonio storico e culturale della <strong>Toscana</strong>.  Perfetto per un''<strong>escursione a piedi</strong>, un''avventura di <strong>trekking</strong> o una giornata di relax in mezzo alla <strong>montagna</strong>.</p>

<h3>Cosa aspettarsi</h3>
<ul>
    <li>Un''escursione di circa 15-20 km, con un dislivello di circa 400 metri.</li>
    <li>Un percorso in gran parte lungo sentieri ben battuti, ma con alcune sezioni più scoscese, soprattutto lungo la costa.</li>
    <li>Viste mozzafiato sulla costa toscana e sulle colline circostanti.</li>
    <li>Possibilità di scoprire siti archeologici etruschi a <strong>Populonia</strong>.</li>
    <li>Un''occasione per praticare <strong>trekking</strong> in un ambiente naturale incontaminato.</li>
</ul>

<p>La strada costiera presenta dei tratti esposti (causa frane) niente di difficile ma è bene avvisare. Un''esperienza di <strong>trekking</strong> adatta a escursionisti con un minimo di allenamento, con un''abbigliamento adeguato e scarpe da trekking robuste.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Circa 15-20 km</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Periodo consigliato:</strong> Tutto l''anno (assicurarsi di controllare le condizioni meteorologiche)</li>
    <li><strong>Abbigliamento consigliato:</strong> Scarpe da trekking, abbigliamento a strati, cappello, crema solare, acqua.</li>
    <li><strong>Consigli:</strong>  Portare con sé una mappa e una bussola o uno smartphone con GPS. Informarsi sulle condizioni del sentiero prima di partire.</li>
</ul>

<p>Non dimenticate di assaporare la deliziosa cucina locale dopo la vostra <strong>escursione</strong> presso il <strong>castello di Populonia</strong>, con una bellissima vista sul promontorio. Questo <strong>sentiero</strong> è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e della <strong>natura</strong> in <strong>Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  9.51,
  388,
  18,
  228,
  124,
  '02:04',
  124,
  '02:04',
  1419,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Populonia',
  '2022-12-01',
  '2022-12-01',
  '2022-12-30 00:00:00',
  '2022-12-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783',
  NULL,
  42.989398,
  10.503827,
  'POINT(10.503827 42.989398)',
  'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d',
  'Escursioni Populonia: sentiero dei Cavalleggeri, coste spettacolari e tombe etrusche! Tratto esposto, scarpe adatte. Scopri la via!',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (122247783, 'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783', NOW(), 'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 122247783);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/122247783/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

COMMIT;

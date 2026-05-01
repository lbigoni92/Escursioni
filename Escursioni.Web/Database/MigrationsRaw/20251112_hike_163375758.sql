BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  163375758,
  'Casetta dei pastori e Lago Nero da Fontana Vaccaia',
  'Percorso ad anello con partenza da "Le Regie" e direzione "Lago Nero". Prima Ciaspolata ce sono andato a praticare premetto che la lunghezza e dislivello riportati, sono Errati, il percorso è lungo 12/13km con un dislivello di 600-700 mt. Il percorso con le ciaspole non c''ha mai presentato problemi se non qualche vescica dovuta a quest''ultime, il primo tratto è sempre in salita che si presenta sempre dolce tranne in un paio di tratti, Arrivati al Lago nero abbiamo pranzato e fatto foto, li abbiamo potuto mangiare anche del buonissimo pane e formaggio con vino e grappa più il nostro cibo. Punti d''interesse: - Casetta dei pastori (8.4 km) - Lago Nero (11.8 km) L fontanelle erano tutte congelate tranne un paio nel tratto iniziale.',
  '<h2 id="casetta-dei-pastori-e-lago-nero-da-fontana-vaccaia">Casetta dei pastori e Lago Nero da Fontana Vaccaia</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa splendida escursione è a "Le Regie", facilmente raggiungibile in auto. Da lì, si inizia un anello che vi condurrà alla scoperta del Lago Nero e della Casetta dei pastori.  È un''escursione ben colta, ideale per chi ama i panorami mozzafiato e le sfide moderate.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia da "Le Regie" con una salita dolce che vi porterà alla prima Ciaspolata. Il percorso è lungo circa 12/13 km con un dislivello di 600-700 metri, quindi un trekking impegnativo ma fattibile. Dopo la Ciaspolata, il sentiero si snoda attraverso il paesaggio, raggiungendo il suggestivo Lago Nero. Lungo il percorso avrete la possibilità di ammirare la Casetta dei pastori, un punto di sosta ideale per ammirare il panorama. Il tratto finale è un piacevole ritorno verso il punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione presenta una difficoltà di **Media**. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, cibo e abbigliamento adeguato alle condizioni meteorologiche. Le ciaspole potrebbero essere utili per affrontare alcuni tratti più scivolosi, ma non sono indispensabili.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Potete scaricare la <strong href="#">traccia GPS</strong> di questo percorso per seguirla durante l''escursione. Ricordatevi di controllare sempre le previsioni del tempo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 20.19 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 1527 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Le Regie (accessibile in auto)</li>
    <li><strong>Comune:</strong> Fontana Vaccaia, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
    <li><strong>Parco Nazionale:</strong> Non applicabile</li>
</ul>',
  'Tutte le Attività e Paesi',
  20.19,
  1527,
  1189,
  1900,
  559,
  '9:19',
  486,
  '8:06',
  1632,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fontana Vaccaia',
  '2024-03-01',
  '2024-03-01',
  '2024-03-09 00:00:00',
  '2024-03-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/casetta-dei-pastori-e-lago-nero-da-fontana-vaccaia-163375758',
  NULL,
  44.12874,
  10.689087,
  'POINT(10.689087 44.12874)',
  '6e3cabed83825fc5880b74c795528cb7ba0638140ed73dd985638ccd830a5f62',
  'Escursione Lago Nero Fontana Vaccaia: Anello in Toscana (20km, 600m+) da "Le Regie" al Lago Nero con Casetta Pastori. Diff. Medio. Perfetto per trekking!',
  'Lago Nero: escursione da Fontana Vaccaia (anello, 20km)',
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
VALUES (163375758, 'https://it.wikiloc.com/percorsi-escursionismo/casetta-dei-pastori-e-lago-nero-da-fontana-vaccaia-163375758', NOW(), '6e3cabed83825fc5880b74c795528cb7ba0638140ed73dd985638ccd830a5f62')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 163375758);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/163375758/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/163375758/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 163375758;

COMMIT;

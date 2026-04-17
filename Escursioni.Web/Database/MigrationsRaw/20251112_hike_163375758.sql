BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  163375758,
  'Casetta dei pastori e Lago Nero da Fontana Vaccaia',
  'Percorso ad anello con partenza da "Le Regie" e direzione "Lago Nero". Prima Ciaspolata ce sono andato a praticare premetto che la lunghezza e dislivello riportati, sono Errati, il percorso è lungo 12/13km con un dislivello di 600-700 mt. Il percorso con le ciaspole non c''ha mai presentato problemi se non qualche vescica dovuta a quest''ultime, il primo tratto è sempre in salita che si presenta sempre dolce tranne in un paio di tratti, Arrivati al Lago nero abbiamo pranzato e fatto foto, li abbiamo potuto mangiare anche del buonissimo pane e formaggio con vino e grappa più il nostro cibo. Punti d''interesse: - Casetta dei pastori (8.4 km) - Lago Nero (11.8 km) L fontanelle erano tutte congelate tranne un paio nel tratto iniziale.',
  '<h2>Casetta dei Pastori e Lago Nero da Fontana Vaccaia: Trekking in Montagna e Escursione nel Parco</h2>

<h3>Il percorso: Un Anello di Trekking Indimenticabile</h3>
<p>Preparati per un’escursione di trekking epica e indimenticabile! Questo percorso ad anello, parte da “Le Regie” e conduce al magnifico <strong>Lago Nero</strong>, offrendo una giornata di immersione nella <strong>natura selvaggia delle montagne</strong>. L''escursione di trekking è di circa 12/13 km con un impegnativo dislivello di 600-700 metri, ideale per escursionisti esperti e amanti del trekking in <strong>montagna</strong>.  Un’ottima opportunità per un’escursione in un ambiente naturale unico, perfetto per chi cerca un''esperienza di <strong>trekking</strong> in Italia.</p>

<h3>Cosa aspettarsi: Un''Avventura tra Natura e Paesaggi mozzafiato</h3>
<p>Questo sentiero di trekking ti porterà attraverso un paesaggio variegato, ricco di flora e fauna. Preparati a salite impegnative, ma anche a viste spettacolari sul <strong>Lago Nero</strong> e sulle valli circostanti. Il percorso, lungo circa 13 km con un dislivello di 650 metri, è progettato per offrire un''esperienza completa di <strong>trekking</strong> e permette di ammirare la bellezza della <strong>natura italiana</strong>.  Potrai gustare un meritato pranzo al <strong>Lago Nero</strong>, ammirando il paesaggio e godendo di un momento di relax nella natura. Un''escursione adatta a chi cerca una vera sfida di trekking, ma anche a chi desidera semplicemente godersi la bellezza del panorama.</p>

<h3>Informazioni utili: Dettagli per un Trekking Sicuro e Divertente</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 12/13 km</li>
    <li><strong>Dislivello:</strong> 600-700 metri</li>
    <li><strong>Difficoltà:</strong> Impegnativa - Adatta a escursionisti esperti</li>
    <li><strong>Punti di interesse:</strong> <strong>Casetta dei pastori</strong> (8.4 km), <strong>Lago Nero</strong> (11.8 km)</li>
    <li><strong>Punti di ristoro:</strong> Possibilità di picnic e pranzo al <strong>Lago Nero</strong> con prodotti tipici locali.</li>
    <li><strong>Consigli:</strong> Indossa scarponi da trekking adeguati, porta con te acqua e cibo a sufficienza, e rispetta l’ambiente circostante.</li>
</ul>

<p>Non perdere l''opportunità di vivere un''indimenticabile <strong>escursione nel Parco</strong>, ricco di sentieri da trekking e panorami mozzafiato.  Questo percorso di trekking è perfetto per un''avventura in <strong>montagna</strong> tra la natura e il relax.  Scopri i segreti di questo sentiero e crea ricordi indimenticabili durante la tua <strong>trekking</strong>.</p>',
  'Tutte le Attività e Paesi',
  20.19,
  1,
  1,
  1,
  123,
  '02:03',
  123,
  '02:03',
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
  'Escursione Lago Nero Fontana Vaccaia: Casetta Pastori, panorami mozzafiato e lago incantato! 600m+ di dislivello, 12/13km. Prenota ora!',
  'Trekking Lago Nero Fontana Vaccaia: Casetta Pastori Italia',
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

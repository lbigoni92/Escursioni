BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  99597113,
  'Calambrone - Passeggiata nel verde - Picnic',
  'Con la mia ragazza abbiamo fatto una camminata molto molto tranquilla, nel luogo dove abbiamo parcheggiato (inizio percorso) c''è tanto parcheggio e inoltre la zona è adatta fare picnic, non vi sono dislivelli è TUTTO in piano, sentieri larghi e ben tenuti. Abbiamo trovato persone a cavallo (c''è un maneggio vicino) e qualche anatra, in passato ho visto daini e volpi. Il luogo è tranquillo e adatto a passeggiate tranquille, non vi sono fontanelle. Nelle vicinanze vi sono: - il centro sportivo del CONI - Un campeggio ben attrezzato - Il mare ad appena 15 min a piedi.',
  '<h2>Calambrone - Passeggiata nel Verde - Picnic Trekking</h2>

<h3>Il Percorso</h3>

<p>La <strong>Passeggiata nel Verde a Calambrone</strong> è un''escursione ideale per famiglie e per chi cerca una <strong>passeggiata tranquilla in montagna</strong>. Questo <strong>sentiero di trekking</strong> è caratterizzato da un percorso completamente pianeggiante, con <strong>sentieri larghi e ben tenuti</strong>, perfetto per una <strong>passeggiata nel verde</strong>.  La <strong>Passeggiata nel Verde</strong> offre un''esperienza di <strong>trekking</strong> rilassante e adatta a tutti i livelli, senza dislivelli significativi, rendendola una delle migliori <strong>escursioni in Italia</strong> per chi desidera godersi la natura e un <strong>picnic</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante la <strong>Passeggiata nel Verde</strong>, potrete immergervi in un ambiente naturale incontaminato, ricco di biodiversità.  Avrete la possibilità di ammirare la flora e la fauna locali, con la possibilità di avvistare cavalli provenienti dal vicino maneggio, anatre e, se siete fortunati, anche daini e volpi. Questa <strong>escursione di trekking</strong> è perfetta per chi cerca un''esperienza immersiva nella <strong>natura italiana</strong> e un <strong>picnic</strong> all''aria aperta.  La <strong>Passeggiata nel Verde</strong> è un''opportunità per scoprire la tranquillità della <strong>montagna</strong> e godere di una <strong>passeggiata tranquilla</strong>.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Distanza:</strong> Circa 5 km</li>
  <li><strong>Dislivello:</strong> 0 metri (Percorso completamente pianeggiante)</li>
  <li><strong>Tipo di Percorso:</strong> Sentiero di <strong>trekking</strong>, ideale per <strong>passeggiate nel verde</strong> e <strong>escursioni</strong>.</li>
  <li><strong>Adatto a:</strong> Famiglie, principianti, appassionati di <strong>trekking</strong>.</li>
  <li><strong>Attrezzatura Consigliata:</strong> Scarpe da trekking comode, acqua, cappello, crema solare, <strong>picnic</strong>.</li>
</ul>

<p>La zona di partenza della <strong>Passeggiata nel Verde</strong> offre inoltre comodità come ampio parcheggio e la vicinanza a servizi come il centro sportivo del CONI, un campeggio ben attrezzato e la costa mare a soli 15 minuti a piedi.  Questa <strong>escursione di trekking</strong> a <strong>Calambrone</strong> è un''ottima scelta per una giornata all''aria aperta in <strong>Italia</strong>, perfetta per un <strong>picnic</strong> in famiglia o con amici.  Scoprite la bellezza di questo <strong>sentiero</strong> e godetevi la <strong>Passeggiata nel Verde</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.7,
  43,
  11,
  36,
  NULL,
  NULL,
  NULL,
  NULL,
  969,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Azienda Agricola Tirrenia',
  '2022-04-01',
  '2022-04-01',
  '2022-04-10 00:00:00',
  '2022-04-10 00:00:00',
  'https://it.wikiloc.com/percorsi-cammino/calambrone-passeggiata-nel-verde-picnic-99597113',
  NULL,
  43.599993,
  10.302403,
  'POINT(10.302403 43.599993)',
  '27c17826ebfb9859efa3ca3dba8a80e282e30b17fe9fe30e2aa5969e384ac127',
  'Escursione facile Calambrone (Toscana): 7.7km anello pianeggiante, ideale per famiglie e picnic! +43m dislivello. Parcheggio, maneggio e mare a 15 min.',
  'Calambrone: Escursione Facile nel Verde (Toscana)',
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
VALUES (99597113, 'https://it.wikiloc.com/percorsi-cammino/calambrone-passeggiata-nel-verde-picnic-99597113', NOW(), '27c17826ebfb9859efa3ca3dba8a80e282e30b17fe9fe30e2aa5969e384ac127')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 99597113);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/99597113/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99597113/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99597113;

COMMIT;

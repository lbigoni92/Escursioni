BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  161846411,
  'Collesalvetti',
  'Ho trascorso un''oretta mentre aspettavo un parente al centro di riabilitazione, così ho deciso di fare una passeggiata improvvisata. Per raggiungere i sentieri è molto semplice: basta percorrere 500 metri di strada e poi ci si troverà immersi in sentieri larghi e facili da seguire.Durante il percorso si attraversano terreni privati dove ci sono alcuni cani che abbaiano, ma non c''è motivo di preoccuparsi.Durante la camminata ho avvistato un fagiano e alcuni cavalli lungo i sentieri.Consiglio questi luoghi tranquilli a chiunque voglia fare una passeggiata rilassante.',
  '<h2 id="escursione-collesalvetti">Escursione a Collesalvetti: Un Percorso Tranquillo nel Cuore della Toscana</h2>

<p>Durante una mia improvvisata passeggiata, ho scoperto un luogo incantevole: <strong>Collesalvetti</strong>. Perfetto per una breve escursione di un''ora, questo sentiero offre un''oasi di pace e natura.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Raggiungere il punto di partenza è semplicissimo. Basta percorrere 500 metri di strada e ci si trova immediatamente immersi nel sentiero. Un''ottima opzione per chi cerca una passeggiata senza impegno!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Il sentiero di <strong>Collesalvetti</strong> è un percorso ad anello di circa <strong>4.62 km</strong> con un dislivello di circa <strong>70 metri</strong>. È un sentiero di difficoltà <strong>media</strong>, facile da seguire e adatto a tutti. Durante la camminata potrai ammirare panorami rilassanti e la fauna locale, come fagiani e cavalli. Il sentiero è caratterizzato da tratti larghi e ben tenuti, attraversando anche terreni privati con la presenza di cani, ma non ci sono preoccupazioni.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa escursione è considerata di difficoltà <strong>media</strong>. Il dislivello è contenuto, rendendola accessibile a persone con un livello di allenamento moderato. Il percorso è ben segnalato e facile da seguire, ma è consigliabile indossare scarpe da trekking e portare con sé acqua e una piccola merenda.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per aiutarti ad orientarti, ti fornisco una traccia GPS e le informazioni pratiche per questa escursione a <strong>Collesalvetti</strong>.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 4.62 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 70 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Sentiero raggiungibile da strada</li>
  <li><strong>Comune:</strong> Collesalvetti, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.62,
  70,
  31,
  81,
  89,
  '1:29',
  78,
  '1:18',
  762,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Collesalvetti',
  '2024-02-01',
  '2024-02-01',
  '2024-02-21 00:00:00',
  '2024-02-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/collesalvetti-161846411',
  NULL,
  43.589347,
  10.478448,
  'POINT(10.478448 43.589347)',
  'a5eb39e3f46b42152cc84c16f2622eb2bdbb8e3d1f2d8d7d8a1db4da9253f42f',
  'Escursione Collesalvetti (Toscana): Anello di 4.6km, +43m Dislivello. Facile escursione di circa 1 ora tra sentieri larghi e avvistamenti di fauna. Perfetta ...',
  'Collesalvetti: escursione facile in Toscana (4.62km)',
  'Livorno e costa toscana',
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
VALUES (161846411, 'https://it.wikiloc.com/percorsi-escursionismo/collesalvetti-161846411', NOW(), 'a5eb39e3f46b42152cc84c16f2622eb2bdbb8e3d1f2d8d7d8a1db4da9253f42f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 161846411);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/161846411/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161846411/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161846411;

COMMIT;

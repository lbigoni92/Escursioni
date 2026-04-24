BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  161846411,
  'Collesalvetti',
  'Ho trascorso un''oretta mentre aspettavo un parente al centro di riabilitazione, così ho deciso di fare una passeggiata improvvisata. Per raggiungere i sentieri è molto semplice: basta percorrere 500 metri di strada e poi ci si troverà immersi in sentieri larghi e facili da seguire.Durante il percorso si attraversano terreni privati dove ci sono alcuni cani che abbaiano, ma non c''è motivo di preoccuparsi.Durante la camminata ho avvistato un fagiano e alcuni cavalli lungo i sentieri.Consiglio questi luoghi tranquilli a chiunque voglia fare una passeggiata rilassante.',
  '<h2>Escursione Trekking Collesalvetti: Sentiero Facile per Amanti della Natura</h2>

<h3>Il Percorso</h3>
<p>Questa breve <strong>escursione trekking</strong> a <strong>Collesalvetti</strong> offre un''esperienza rilassante e immersiva nella <strong>montagna</strong> e nella <strong>natura</strong>. Il sentiero, facilmente accessibile, inizia con una breve passeggiata di soli 500 metri lungo una strada, per poi conducervi direttamente nel cuore di sentieri larghi e ben segnalati. Perfetto per una <strong>passeggiata mattutina</strong> o un''oretta di <strong>trekking</strong> per staccare dalla routine, questo percorso è ideale anche per famiglie e principianti che desiderano godersi la bellezza della <strong>natura italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Durante questo <strong>sentiero</strong> potrete ammirare panorami suggestivi, attraversando terreni privati frequentati da alcuni cani che abbaiano, ma senza alcuna preoccupazione. L''ambiente circostante è ricco di vita: avvistate un elegante <strong>fagiano</strong> e, lungo il percorso,  potete intravedere alcuni cavalli.  Questa <strong>escursione </strong> è progettata per offrire un''esperienza tranquilla e piacevole, perfetta per chi cerca una <strong>passeggiata rilassante</strong> nella <strong>montagna</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Distanza:</b> Circa 3 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> 50 metri</li>
    <li><b>Tempo di percorrenza:</b> Circa 1 ora</li>
    <li><b>Tipo di sentiero:</b> Sentiero facile, adatto a famiglie e principianti</li>
    <li><b>Punti di interesse:</b>  Avvistamento di fauna selvatica (fagiani, cavalli), sentieri ben segnalati, ambiente naturale incontaminato</li>
</ul>

<p>Questo <strong>sentiero</strong> a <strong>Collesalvetti</strong> è un''ottima opzione per chi cerca una facile <strong>escursione trekking</strong> nella <strong>natura italiana</strong>, lontano dalla confusione delle grandi città.  Un''occasione per vivere un momento di pace e tranquillità immersi nel verde della <strong>montagna</strong>.  Perfetto per una giornata di <strong>trekking</strong> tra <strong>sentieri</strong> e <strong>nativi</strong>!</p>',
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

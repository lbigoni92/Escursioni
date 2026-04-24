BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88398726,
  'Torcigliano - Pedone - Prana - Campo All''orzo - Baite',
  'Partenza da Torcigliano, il sentiero che abbiamo imboccato all''andata, non era perfettamente senato e abbiamo trovato un po'' di rovi nei primi 600/700 mt. Dopo i rovi il sentiero sarà SEMPRE facile da seguire, partirà la parte della cresta NON vi sono punti esposti, e sarà tutta salita fino in cima al Prana. Abbiamo fatto una piccola deviazione (opzionale) sul monte Pedone, e in seguito siamo proseguiti in vetta. Dalla vetta del Prana si gode di uno spettacolare panorama consiglio di fermarsi li per pranzo(cosa che abbiamo fatto); in seguito abbiamo proseguito verso camp all''Orzo dove c''è una vecchia chiesa molto bella, e completando il giro passando da 2 baite. Consiglio d''estate almeno 3l d''acqua vi è una fontanella verso il km 7 (ma non fateci troppo affidamento) SCARPE ADEGUATE MI RACCOMANDO',
  '<h2>Torcigliano - Pedone - Prana - Campo All''orzo - Baite: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo affascinante <strong>sentiero di trekking</strong> conduce attraverso paesaggi mozzafiato della **montagna** italiana, partendo da <strong>Torcigliano</strong> e raggiungendo la cima del <strong>Prana</strong>. L''escursione, adatta ad escursionisti esperti, offre una giornata indimenticabile di <strong>trekking</strong> e <strong>escursione</strong> in natura, immersi nella ricca flora e fauna della regione.</p>
<p>Il percorso inizia con un tratto di <strong>sentiero</strong> non completamente battuto, con alcuni rovi nei primi 600/700 metri.  Tuttavia, una volta superati questi ostacoli, il <strong>sentiero</strong> diventa sempre più facile da seguire, offrendo un''esperienza di <strong>trekking</strong> naturale e sicura.  La salita fino al <strong>Prana</strong> è costante, ma grazie alla cresta non vi sono punti esposti, rendendo la <strong>escursione</strong> confortevole.</p>
<p>Si suggerisce una deviazione opzionale sul <strong>monte Pedone</strong> per godere di una vista panoramica aggiuntiva,  successivamente si prosegue verso <strong>Campo All''orzo</strong>, caratterizzato da una vecchia chiesa.  Il giro si completa passando tra le tradizionali <strong>baite</strong> della zona, un''esperienza autentica nel cuore dell''Appennino.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un <strong>trekking</strong> impegnativo, ma gratificante, con panorami spettacolari.</li>
    <li>Un''immersione nella natura incontaminata della **montagna** italiana.</li>
    <li>La possibilità di ammirare una vecchia chiesa e le tipiche <strong>baite</strong> della regione.</li>
    <li>La presenza di rovi nei primi metri del <strong>sentiero</strong> (prepararsi adeguatamente).</li>
    <li>Un''occasione per praticare <strong>trekking</strong> e <strong>escursione</strong> in un ambiente naturale unico.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>La <strong>escursione</strong> in <strong>Torcigliano - Pedone - Prana - Campo All''orzo - Baite</strong> è una fantastica opportunità per gli amanti del <strong>trekking</strong> e dell''<strong>escursione</strong>.  È importante indossare <strong>scarpe adatte al trekking</strong> e portare con sé acqua e cibo, specialmente in estate, vista la scarsa disponibilità di fonti idriche. La distanza totale del <strong>sentiero</strong> è di circa 12-14 km con un dislivello di circa 800-900 metri.  Si consiglia di partire al mattino presto per evitare il caldo e garantire una giornata di <strong>trekking</strong> sicura e piacevole.  Un''alternativa è prevedere almeno 3 litri d''acqua, purtroppo non c''è una fontanella affidabile lungo il percorso.  La vetta del <strong>Prana</strong> offre uno spettacolare panorama per un pranzo al sacco, ideale per apprezzare i colori della **montagna**.</p>
<p>Non dimenticate di verificare le previsioni meteo prima di partire e di informarsi sulle condizioni del <strong>sentiero</strong>.  La sicurezza è fondamentale durante qualsiasi <strong>escursione</strong> in <strong>montagna</strong>.  Godetevi questa magnifica <strong>escursione trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  16.62,
  1176,
  351,
  1091,
  484,
  '7:29',
  390,
  '6:30',
  2861,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Torcigliano',
  '2021-11-01',
  '2021-11-01',
  '2021-11-07 00:00:00',
  '2021-11-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/torcigliano-pedone-prana-campo-allorzo-baite-88398726',
  NULL,
  43.924668,
  10.363922,
  'POINT(10.363922 43.924668)',
  '6bb8d64c3d5261d4cc24e081acde235ea83aa8a2eb6841128f756c1e63d0c68a',
  'Escursione Torcigliano - Prana (Toscana): Anello facile 16.6km, +1m di dislivello. Percorso in vetta con vista panoramica, rovi e cresta. Ideale per famiglie!',
  'Prana: escursione da Torcigliano (Toscana, 16.62km)',
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
VALUES (88398726, 'https://it.wikiloc.com/percorsi-escursionismo/torcigliano-pedone-prana-campo-allorzo-baite-88398726', NOW(), '6bb8d64c3d5261d4cc24e081acde235ea83aa8a2eb6841128f756c1e63d0c68a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88398726);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88398726/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88398726/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88398726;

COMMIT;

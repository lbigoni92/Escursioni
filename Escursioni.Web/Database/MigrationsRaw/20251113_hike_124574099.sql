BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  124574099,
  'Sasso Pisano - Fumarole - Anello con Friends in trekking',
  'Fumarole - Sasso Pisano e Monterotondo Marittimo Giro spettacolare tra luoghi dove la terra “respira”. siamo partiti da Sasso Pisano, per proseguire nel bosco innevato, verso la parte delle fumarole per poi proseguire per i boschi in direzione Lagoni attraversando il fosso della buia. Il percorso è facile da seguire e non vi sono complicazioni. Vi consiglio di portarvi dell''acqua e di non farlo d''estate.',
  '<h2>Sasso Pisano – Fumarole – Anello con Friends in trekking</h2>

<h3>Il percorso: Escursione di Trekking tra Fumarole e Sasso Pisano</h3>

<p>Scopri il fantastico <strong>sentiero</strong> per <strong>trekking</strong> e <strong>escursioni</strong> intorno a <strong>Sasso Pisano</strong>, un''esperienza indimenticabile nella <strong>montagna</strong>. Questo <em>anello</em> ti porterà attraverso paesaggi unici, dove la terra ancora “respira” grazie alle <strong>fumarole</strong>.  Un''<em>escursione</em> ideale per ammirare la natura selvaggia della Toscana, perfetta per gli amanti del <strong>trekking</strong> e dell''<em>escursionismo</em>.</p>

<h3>Cosa aspettarsi durante l’escursione: Trekking in un Ambiente Unico</h3>

<ul>
  <li>Percorso ad anello di circa <strong>7 km</strong> di lunghezza.</li>
  <li>Difficoltà: Facile – Adatto a famiglie e principianti.</li>
  <li>Dislivello: 300 metri – Un''<em>escursione</em> graduale con alcuni tratti in pendenza.</li>
  <li>Tempi di percorrenza: 3-4 ore (tempo medio).</li>
  <li>Punti di interesse: <strong>Fumarole</strong>, <strong>Sasso Pisano</strong>, Monterotondo Marittimo e il suggestivo Fosso della Buia.</li>
</ul>

<p>Il <strong>sentiero</strong> ti guiderà attraverso un bosco innevato, lungo le <strong>fumarole</strong> che emettono vapore dal sottosuolo, e attraverso i boschi in direzione Lagoni, attraversando il <em>fosso della buia</em>.  Un''occasione unica per immergerti nella bellezza della natura toscana durante una giornata di <strong>trekking</strong>.</p>

<h3>Informazioni utili per la tua escursione: Consigli per il trekking in Toscana</h3>

<ul>
  <li>Periodo consigliato: Primavera, Autunno, Inverno (evitare l''estate per il caldo).</li>
  <li>Equipaggiamento consigliato: Scarponi da trekking, abbigliamento a strati, acqua, cibo, cappello, crema solare.</li>
  <li>Consigli di sicurezza: Seguire attentamente il <strong>sentiero</strong>, informarsi sulle condizioni meteorologiche, non abbandonare i rifiuti.</li>
  <li>Dove parcheggiare: Parcheggio disponibile a Sasso Pisano.</li>
  <li>È importante portare con sé dell’acqua, soprattutto durante l’<em>escursione</em> in estate.</li>
</ul>

<p>Preparati per una meravigliosa <strong>escursione</strong> di <strong>trekking</strong> alla scoperta delle <strong>fumarole</strong> e di <strong>Sasso Pisano</strong>!  Un''esperienza unica nel cuore della Toscana, ideale per chi ama la <strong>natura</strong> e la <strong>montagna</strong>. Scopri le meraviglie del <strong>sentiero</strong> e goditi un''<em>escursione</em> indimenticabile.</p>',
  'Tutte le Attività e Paesi',
  11.71,
  445,
  458,
  776,
  179,
  '02:59',
  179,
  '02:59',
  1974,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sasso Pisano',
  '2023-01-01',
  '2023-01-01',
  '2023-01-29 00:00:00',
  '2023-01-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sasso-pisano-fumarole-anello-con-friends-in-trekking-124574099',
  NULL,
  43.166068,
  10.865658,
  'POINT(10.865658 43.166068)',
  '4bdb263065bd4e626aa5ce85ab2611c1ac69e52cea84deab7a6d2a93859b9e5c',
  'Escursioni Sasso Pisano: Fumarole, Sasso Pisano & Monterotondo Marittimo! Anello facile tra terra che respira. Trekking con Friends! ⛰️',
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
VALUES (124574099, 'https://it.wikiloc.com/percorsi-escursionismo/sasso-pisano-fumarole-anello-con-friends-in-trekking-124574099', NOW(), '4bdb263065bd4e626aa5ce85ab2611c1ac69e52cea84deab7a6d2a93859b9e5c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 124574099);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/124574099/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/124574099/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 124574099;

COMMIT;

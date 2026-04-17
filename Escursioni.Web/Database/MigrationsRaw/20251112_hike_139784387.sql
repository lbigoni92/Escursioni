BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  139784387,
  'Monte Castellare - Monte Perocchio e Monte Agreste da Vicopisano',
  'Percorso nel pisano molto semplice da seguire, ci sono solo un paio di punti brevi che potrebbero mettere in difficoltà persone poco allenate ma sono salitine brevi. C''è una fontana lungo il percorso che abbiamo trovato con veramente poca acqua... non contateci troppo d''estate per il resto è un percorso molto panoramico e bello, si passa sia attraverso pini sia tra ulivi. Molto suggestiva e unica è la cima del monte Castellare che offerte una vista unica su tutta la valle da Firenze a Livorno; da qui si ha un panorama ance più bello di quello che si avrebbe dalla Verruca. Consiglio molto questo giro.',
  '<h2>Monte Castellare - Monte Perocchio e Monte Agreste da Vicopisano: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>Questo sentiero di <strong>trekking</strong> conduce attraverso un paesaggio mozzafiato, ideale per un’<strong>escursione</strong> a piedi nella <strong>montagna</strong>. Il percorso, situato nella regione pisana, è progettato per essere facilmente seguibile, nonostante qualche breve tratto più impervio.  Perfetto per una giornata di <strong>trekking</strong> in <strong>Italia</strong>, questo giro vi porterà attraverso boschi di <strong>pini</strong> e oliveti, offrendo un’esperienza autentica immersa nella <strong>natura</strong>. La distanza totale dell’<strong>escursione</strong> è di circa 10 km, con un dislivello di 450 metri, rendendolo adatto a <strong>sentieri</strong> di varia difficoltà.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi a un’<strong>escursione</strong> indimenticabile lungo un <strong>sentiero</strong> panoramico che vi condurrà alla cima del <strong>Monte Castellare</strong>, uno dei punti più suggestivi della zona. Il percorso presenta alcuni brevi tratti più impegnativi, soprattutto per persone poco allenate, ma la ricompensa è un panorama a 360 gradi che spazia dalla valle di Firenze a quella di Livorno.  Dalla cima del <strong>Monte Castellare</strong>,  il panorama è ancora più ampio e suggestivo, superando anche quello offerto dalla <strong>Verruca</strong>.  Potrete ammirare la bellezza del paesaggio circostante, fatta di colline, oliveti e boschi.  È importante ricordare che, durante l’estate, la <strong>fontana</strong> lungo il percorso potrebbe avere scarsa acqua, quindi è consigliabile portare con sé una borraccia.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Località:</b> Vicopisano, Toscana</li>
    <li><b>Difficoltà:</b> Facile/Media</li>
    <li><b>Distanza:</b> Circa 10 km</li>
    <li><b>Dislivello:</b> 450 metri</li>
    <li><b>Tempo di percorrenza:</b> 3-4 ore</li>
    <li><b>Punti di interesse:</b> <strong>Monte Castellare</strong> (vista panoramica), <strong>Monte Perocchio</strong>, <strong>Monte Agreste</strong>, <strong>fontana</strong> (con scarsa acqua).</li>
    <li><b>Tipo di sentiero:</b> <strong>Sentiero</strong> di <strong>trekking</strong>, adatto a <strong>escursioni</strong> nella <strong>natura</strong>.</li>
</ul>

<p>Non perdete l’opportunità di vivere un’<strong>escursione</strong> a piedi in questo angolo di <strong>Italia</strong>, ricco di storia, cultura e panorami mozzafiato. Questo <strong>sentiero</strong> è perfetto per chi cerca un’attività all’aria aperta, un modo per connettersi con la <strong>montagna</strong> e godere della bellezza della <strong>natura</strong>. Ricordatevi di indossare scarpe da <strong>trekking</strong> adatte e di portare con voi acqua e snack.  Un''esperienza di <strong>trekking</strong> in <strong>montagna</strong> che vi lascerà a bocca aperta!</p>',
  'Tutte le Attività e Paesi',
  6.59,
  279,
  14,
  236,
  603,
  '10:03',
  NULL,
  NULL,
  708,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2023-07-01',
  '2023-07-01',
  '2023-07-06 00:00:00',
  '2023-07-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-castellare-monte-perocchio-e-monte-agreste-da-vicopisano-139784387',
  NULL,
  43.684625,
  10.575911,
  'POINT(10.575911 43.684625)',
  'b20794620c09945910dfd305c7627555e5f7a93457530fdad20ddc5ac7f003b7',
  'Escursioni Monte Castellare Pisa: percorso facile panoramico tra pini e ulivi. Vista mozzafiato su Firenze e Livorno! Ideale per famiglie e principianti.',
  'Trekking Monte Castellare Vicopisano: Perocchio & Agreste',
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
VALUES (139784387, 'https://it.wikiloc.com/percorsi-escursionismo/monte-castellare-monte-perocchio-e-monte-agreste-da-vicopisano-139784387', NOW(), 'b20794620c09945910dfd305c7627555e5f7a93457530fdad20ddc5ac7f003b7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 139784387);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/139784387/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139784387/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139784387;

COMMIT;

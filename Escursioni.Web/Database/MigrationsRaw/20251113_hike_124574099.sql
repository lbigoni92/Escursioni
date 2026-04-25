BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  124574099,
  'Sasso Pisano - Fumarole - Anello con Friends in trekking',
  'Fumarole - Sasso Pisano e Monterotondo Marittimo Giro spettacolare tra luoghi dove la terra “respira”. siamo partiti da Sasso Pisano, per proseguire nel bosco innevato, verso la parte delle fumarole per poi proseguire per i boschi in direzione Lagoni attraversando il fosso della buia. Il percorso è facile da seguire e non vi sono complicazioni. Vi consiglio di portarvi dell''acqua e di non farlo d''estate.',
  '<h2>Sasso Pisano – Fumarole – Anello con Friends in trekking</h2>

<h3>Il percorso: Un’escursione indimenticabile tra fumarole e sentieri in montagna</h3>

<p>Questo <strong>anello di trekking</strong> vi porterà in un viaggio affascinante attraverso il paesaggio unico del territorio toscano.  L’<strong>escursione a Sasso Pisano</strong> e la sua zona offre un''esperienza immersiva nella <strong>natura incontaminata</strong>, con la possibilità di ammirare le suggestive <strong>fumarole</strong> e di respirare l''aria frizzante della <strong>montagna</strong>.  Questo <strong>sentiero per trekking</strong> è perfetto per chi cerca un''avventura facile e gratificante, ideale anche per <strong>escursioni con amici</strong> o gruppi.  Scoprite i panorami mozzafiato di <strong>Monterotondo Marittimo</strong> e lasciatevi incantare dalla bellezza del paesaggio circostante.</p>

<h3>Cosa aspettarsi durante l’escursione: Un’esperienza di trekking nella natura</h3>

<ul>
    <li>Percorso ad anello di circa 8 km (circa 3 ore), adatto a tutti i livelli di <strong>trekking</strong>.</li>
    <li>Facile da seguire, con segnaletica chiara e ben definita.</li>
    <li>Passaggi attraverso boschi, aree vulcaniche con <strong>fumarole attive</strong> e zone aperte con panorami spettacolari.</li>
    <li>Possibilità di ammirare la flora e la fauna locale, tra cui diverse specie di piante e uccelli.</li>
    <li>Rifugio di ristoro a Lagoni per una pausa e un momento di relax dopo l’<strong>escursione in montagna</strong>.</li>
</ul>

<p>Preparatevi ad un’esperienza coinvolgente, dove la bellezza del territorio toscano si fonderà con il piacere del <strong>trekking</strong> e dell’<strong>escursionismo</strong>.  Questo <strong>sentiero escursionistico</strong> è una vera e propria immersione nella <strong>natura italiana</strong>, con panorami unici e suggestioni indimenticabili.  Ideale per una giornata diversa, un''occasione per connettersi con la <strong>montagna</strong> e respirare l''aria pulita.</p>

<h3>Informazioni utili per l’escursione: Dettagli per un trekking di successo</h3>

<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 8 km</li>
    <li><strong>Dislivello:</strong> Circa 200 metri</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Autunno, Inverno (consigliabile evitare l’estate a causa del caldo e del sole intenso)</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, abbigliamento a strati, acqua, snack, cappello, crema solare.</li>
    <li><strong>Consigli:</strong> Portare con sé dell''acqua, soprattutto durante i mesi estivi.  Controllare le previsioni meteo prima di partire.  Informarsi sullo stato delle fumarole prima di intraprendere il percorso.</li>
    <li><strong>Punto di partenza:</strong> Sasso Pisano</li>
</ul>

<p>Non perdetevi questa incredibile <strong>escursione a Sasso Pisano</strong>, un''opportunità unica per vivere un''esperienza di <strong>trekking</strong> autentica e indimenticabile in uno dei territori più affascinanti dell''Italia.  Organizzate il vostro <strong>sentiero per trekking</strong> e preparatevi a creare ricordi speciali!</p>',
  'Tutte le Attività e Paesi',
  11.71,
  445,
  458,
  776,
  266,
  '4:26',
  231,
  '3:51',
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
  'Escursione Sasso Pisano: Anello facile 11.7km | Toscana, Fumarole & Monterotondo Marittimo. Trekking medio +445m. Ideale per amanti natura!',
  'Sasso Pisano: trekking alle Fumarole (Toscana)',
  'Monti Pisani',
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

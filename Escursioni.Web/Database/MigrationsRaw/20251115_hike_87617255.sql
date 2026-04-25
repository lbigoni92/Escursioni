BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617255,
  'Livorno Escursionismo - Colognole',
  'Giro molto semplice e carino, semplice e da fare con bambini e familiari, ottimo per piknic domenicale. Punti panoramici ai km 0.4 - 1.9 Al km 2.1 inizia il percorso dell'' acquedotto di Colognole e finisce al km 4 Molto bello e suggestivo, consiglio di fermarsi al km 2.8 pe una pausa e mangiare qualcosa. Le salite sono molto dolci tranne il tratto che scende all''acquedotto intorno km 2.0, è molto facile vedere anfibi. Non ci sono fontanelle , portate l''acqua',
  '<h2>Livorno Escursionismo - Colognole: Sentiero Facile per Famiglie e Piknic</h2>

<h3>Il percorso dell''Escursione Colognole</h3>

<p>Questo <strong>sentiero di trekking</strong> a <strong>Livorno</strong> offre un''esperienza <em>escursionistica</em> accessibile a tutti, ideale per famiglie e per chi cerca un’<em>escursione</em> nella <strong>montagna</strong> con panorami mozzafiato. Il <strong>Giro Colognole</strong> è progettato per essere un’<em>escursione</em> piacevole e rilassante, perfetto per un <em>trekking</em> domenicale o un <em>piknic</em> all''aperto.  Si snoda attraverso un territorio ricco di <strong>natura</strong> e storia, offrendo scorci unici sul paesaggio toscano.</p>

<h3>Cosa Aspettarsi Durante l''Escursione</h3>

<p>Preparatevi per un <em>sentiero</em> di <strong>trekking</strong> che vi porterà attraverso un ambiente naturale incontaminato. L''<em>escursione</em> è caratterizzata da salite dolci e discese facili, con brevi tratti che offrono panorami spettacolari.  L’<em>escursione</em> è perfetta per chi cerca un’<em>escursione</em>  in <strong>montagna</strong> senza eccessivi sforzi, ed è un ottimo modo per godere della <strong>natura</strong> e della tranquillità della <strong>montagna</strong>.  Potrete ammirare la flora e la fauna locali e respirare aria fresca, lontano dal caos cittadino.</p>

<p>Questo <em>sentiero</em> è particolarmente adatto per bambini e famiglie, offrendo un''opportunità di apprendimento e divertimento in un contesto naturale.  È un’<em>escursione</em> che si presta particolarmente ad un <em>piknic</em> domenicale, all’insegna della convivialità e del piacere di stare all''aria aperta.</p>

<h3>Informazioni Utili per l''Escursione al Colognole</h3>

<ul>
  <li><strong>Distanza:</strong> Circa 4 km</li>
  <li><strong>Difficoltà:</strong> Molto Facile - Adatto a Famiglie e Principianti</li>
  <li><strong>Tempi di percorrenza:</strong> Circa 1 – 1.5 ore</li>
  <li><strong>Punti di interesse:</strong> Punti panoramici ai km 0.4 - 1.9, percorso dell’acquedotto di Colognole (km 2.1), pausa consigliata al km 2.8</li>
  <li><strong>Note importanti:</strong> Non ci sono fontanelle lungo il percorso, quindi è fondamentale portare con sé acqua a sufficienza.  Si possono avvistare anfibi lungo il tratto dell''acquedotto intorno al km 2.0.</li>
</ul>

<p>Questo <em>sentiero</em> offre una splendida opportunità per un’<em>escursione</em> a <strong>Livorno</strong>,  un’<em>escursione</em> nella <strong>montagna</strong> che vi regalerà momenti indimenticabili nel cuore della <strong>natura</strong>.  Esplorate il pittoresco <em>sentiero</em> e godetevi la bellezza del territorio circostante durante questa affascinante <em>escursione</em>.</p>',
  'Tutte le Attività e Paesi',
  7.32,
  209,
  203,
  412,
  160,
  '2:35',
  135,
  '2:15',
  2002,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-05-01',
  '2021-05-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/livorno-escursionismo-colognole-87617255',
  NULL,
  43.523062,
  10.416098,
  'POINT(10.416098 43.523062)',
  '280fb21450177fa9dc70c93e84a83edf044435f0723fcf4f68a7a92c65d57c1a',
  'Escursione facile Colognole da Livorno: Anello di 7.3km con 285m di dislivello. Perfetto per famiglie e piknic! Percorso acquedotto, punti vista e anfibi! Va...',
  'Colognole: Escursione Facile da Livorno (Toscana)',
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
VALUES (87617255, 'https://it.wikiloc.com/percorsi-escursionismo/livorno-escursionismo-colognole-87617255', NOW(), '280fb21450177fa9dc70c93e84a83edf044435f0723fcf4f68a7a92c65d57c1a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617255);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617255/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617255;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371988,
  'montemagno Calci',
  'Percorso alla portata di tutti. Non vi sono difficoltà d''alcun tipo, se non in forma può risultare impegnativo il tratto finale della salita. Sentieri: 141 -139 - 143 Il panorama che si vede dalla rocca è meraviglioso, si vede da Livorno a Massa',
  '<h2>Sentiero Montemagno Calci: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>Il <strong>sentiero Montemagno Calci</strong> è un''escursione ideale per tutti, un''ottima opportunità per immergersi nella bellezza della <strong>montagna</strong> e della <strong>natura</strong>. Questo <strong>trekking</strong>, situato a <strong>Calci</strong>, offre un''esperienza indimenticabile per appassionati di <strong>escursionismo</strong> e <strong>sentieri</strong>. Il percorso è ben segnalato e presenta un dislivello accessibile, rendendolo perfetto anche per i principianti. Inizialmente, il <strong>sentiero</strong> si snoda attraverso una fitta vegetazione, offrendo la possibilità di ammirare la flora locale e la fauna alpina. Il tratto finale, pur rimanendo impegnativo, è un''opportunità per mettere alla prova la propria resistenza e godere di una vista mozzafiato.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante l''<strong>escursione</strong> al <strong>Montemagno Calci</strong>, potrete assistere a un panorama a 360 gradi che spazia da <strong>Livorno</strong> a <strong>Massa</strong>, una vista che vi lascerà senza fiato. Il punto più alto del sentiero offre una vista panoramica sulla pianura circostante e sulle colline circostanti.  La difficoltà del <strong>sentiero</strong> non è elevata, ma il tratto finale presenta una pendenza più ripida che richiede un minimo di preparazione fisica. Preparatevi a camminare in un ambiente naturale incontaminato, ammirando la bellezza selvaggia della <strong>montagna</strong> italiana.</p>

<p>Questo <strong>sentiero</strong> è un''ottima scelta per chi cerca un''<strong>escursione</strong> facile e divertente, un''opportunità per scoprire la bellezza della <strong>natura</strong> e del paesaggio toscano.  Potrete godervi la tranquillità della <strong>montagna</strong>, lontano dal caos della città, e respirare aria fresca e pulita.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Nome Sentiero:</strong> Montemagno Calci</li>
  <li><strong>Luogo:</strong> Calci, Toscana</li>
  <li><strong>Difficoltà:</strong> Facile/Media (tratto finale impegnativo)</li>
  <li><strong>Distanza:</strong> Circa 6 km (andata e ritorno)</li>
  <li><strong>Dislivello:</strong> Circa 400 metri</li>
  <li><strong>Sentieri Collegati:</strong> 141 - 139 - 143</li>
  <li><strong>Punto di Rientro:</strong>  Rientro tramite lo stesso sentiero</li>
  <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Consigli:</strong> Scarpe da trekking adatte, acqua, snack, cappello, crema solare, mappa.</li>
</ul>

<p>La cima del <strong>Montemagno Calci</strong> offre una vista spettacolare e la possibilità di ammirare la maestosità della natura. Un''esperienza da non perdere per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  10.44,
  476,
  13,
  408,
  934,
  '15:34',
  NULL,
  NULL,
  2805,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Paduletto',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988',
  NULL,
  43.71621,
  10.51131,
  'POINT(10.51131 43.71621)',
  '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181',
  'Escursione Monte Magno Paduletto (Calci, Toscana): Anello di 10.44km, +476m. Vista mozzafiato su Livorno e Massa! Sentiero facile/medio. Perfetta per famiglie.',
  'Montemagno Calci: Escursione facile da Paduletto (Toscana)',
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
VALUES (87371988, 'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988', NOW(), '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371988);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371988/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371988;

COMMIT;

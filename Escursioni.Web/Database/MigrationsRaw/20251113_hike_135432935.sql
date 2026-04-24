BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  135432935,
  'Gabbro- monte Carvoli',
  'Percorso improvvisato all''ultimo, doveva essere molto più lungo ma è stato interrotto dalla pioggia improvvisa... I vare sentieri che vedete iniziati ma non finiti sono così perchè completamenti immersi nella vegetazione e non più percorribili. Il monte merita molto con i sui tre balconi panoramici.',
  '<h2>Gabbro- Monte Carvoli: Trekking e Escursioni tra i Balconi Panoramici</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un''escursione indimenticabile lungo il <strong>sentiero Gabbro- Monte Carvoli</strong>, un percorso improvvisato che vi porterà a scoprire uno dei punti più suggestivi delle Langhe. Questo <strong>trekking</strong> in <strong>montagna</strong>, ideale per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>, si snoda attraverso un paesaggio unico, caratterizzato da roccia calcarea e dalla profonda immersione nella vegetazione. Nonostante le condizioni del terreno, il sentiero offre panorami mozzafiato, con tre balconi panoramici che ampliano la visuale e vi lasceranno senza fiato. La difficoltà del <strong>sentiero</strong> è media, adatto a escursionisti esperti e a famiglie con bambini che desiderano un''esperienza di <strong>escursione</strong> fuori dai soliti circuiti.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante il vostro <strong>trekking</strong> verso il <strong>Monte Carvoli</strong>, vi troverete immersi in un ambiente incontaminato, ricco di biodiversità e di flora autoctona. L''escursione vi permetterà di ammirare le caratteristiche formazioni geologiche del <strong>gabbro</strong>, testimonianza di un passato vulcanico. Preparatevi a un''esperienza autentica di <strong>trekking</strong> in <strong>Italia</strong>, lontano dal caos cittadino, dove potrete riconnettervi con la <strong>natura</strong> e godervi la tranquillità della <strong>montagna</strong>. Questo <strong>sentiero</strong>, sebbene non completato, rimane un''opportunità unica per esplorare le zone più remote e selvagge delle Langhe, offrendo un''esperienza di <strong>escursione</strong> emozionante e gratificante.  La pioggia improvvisa ha interrotto il percorso, rendendolo in parte inaccessibile, ma la ricompensa per l''escursione è comunque immensa.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Distanza:</strong> Percorso improvvisato, lunghezza variabile a seconda dell''accessibilità</li>
  <li><strong>Dislivello:</strong> Circa 300-400 metri</li>
  <li><strong>Durata:</strong> 3-4 ore (a seconda del passo e delle soste)</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Equipaggiamento:</strong> Scarpe da trekking, abbigliamento a strati, acqua, cibo, cappello, crema solare, bastoncini da trekking (consigliati)</li>
  <li><strong>Località:</strong> Langhe, Piemonte, Italia - Sentiero accessibile solo in condizioni di asciutto</li>
</ul>

<p>Questo <strong>sentiero</strong>, un''escursione di <strong>trekking</strong> nel <strong>Monte Carvoli</strong>, vi regala una giornata di adrenalina e panorami mozzafiato. Non perdetevi l''opportunità di scoprire questo angolo di <strong>Italia</strong>, ricco di storia e di bellezze naturali. Ricordatevi di rispettare l''ambiente e di seguire le indicazioni per un''esperienza di <strong>escursione</strong> sicura e responsabile.</p>',
  'Tutte le Attività e Paesi',
  7.05,
  192,
  249,
  353,
  148,
  '2:28',
  129,
  '2:09',
  948,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Nibbiaia',
  '2023-05-01',
  '2023-05-01',
  '2023-05-21 00:00:00',
  '2023-05-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gabbro-monte-carvoli-135432935',
  NULL,
  43.46409,
  10.416567,
  'POINT(10.416567 43.46409)',
  '0548de93bb4d93e0c628be6e838427db3ea39cae841ef6593c53216c91a5d8e0',
  'Escursione Gabbro Monte Carvoli Nibbiaia: percorso anello medio (7.05km, +157m) tra i Balcioni Panoramici. Sentiero improvvisato a tratti, immerso nella Tosc...',
  'Monte Carvoli: escursione a Gabbro (Nibbiaia, Toscana)',
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
VALUES (135432935, 'https://it.wikiloc.com/percorsi-escursionismo/gabbro-monte-carvoli-135432935', NOW(), '0548de93bb4d93e0c628be6e838427db3ea39cae841ef6593c53216c91a5d8e0')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 135432935);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/135432935/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

COMMIT;

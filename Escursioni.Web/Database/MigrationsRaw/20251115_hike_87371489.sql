BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87371489,
  'Matanna - Nona',
  'il percorso è faticoso in due tratti: Salita del nona Salita dal rifugio Massa fino al Callare del Matanna. Per il resto è ben segnalato e fattibile i punti panoramici più belli sono : Monte Nona - cima Monte Matanna - cima Sentieri 109-5-121-3-109 +(2 creste) sul percorso vediamo se siamo fortunati mufloni e cavalli selvatici.',
  '<h2>Matanna - Nona: Trekking Esplorativo tra Monte Nona e Matanna</h2>

<h3>Il Percorso</h3>

<p>L''escursione <strong>Matanna - Nona</strong> è un''esperienza impegnativa, ideale per escursionisti esperti alla ricerca di una vera sfida in <strong>montagna</strong>. Il sentiero si snoda attraverso paesaggi mozzafiato, offrendo scorci spettacolari sulle cime circostanti. Il percorso è diviso in due tratti distinti: il primo, più arduo, prevede la salita al <strong>Monte Nona</strong> e la successiva discesa dal <strong>rifugio Massa</strong> al <strong>Callare del Matanna</strong>, un tratto tecnicamente impegnativo. Il secondo tratto è ben segnalato e offre la possibilità di esplorare punti panoramici unici.</p>

<p>La <strong>trekking</strong> inizia da Massa, proseguendo verso il Rifugio Massa. Da qui, il sentiero si inoltra nel cuore del Parco Regionale della Majella, con salite ripide e tratti esposti che richiedono una buona preparazione fisica.  La discesa verso il Callare del Matanna è un momento cruciale dell''escursione, con panorami impareggiabili sulla valle.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi ad affrontare un''<strong>escursione</strong> impegnativa, con un dislivello considerevole e tratti rocciosi. Il sentiero è ben segnalato, ma è fondamentale avere una buona orientamento e una mappa dettagliata. Durante l''escursione, avrete la possibilità di ammirare la bellezza incontaminata della <strong>natura</strong>, godendo di panorami mozzafiato e di una silenziosa immersione nella <strong>montagna</strong> italiana.  Potete avvistare fauna selvatica come <strong>mufloni</strong> e <strong>cavalli selvatici</strong>, a seconda delle stagioni e delle condizioni ambientali.</p>

<p>Questo <strong>sentiero</strong> permette di percorrere diverse <strong>creste</strong> offrendo una vista unica sulla Majella e sulla sua vegetazione. L''escursione a <strong>Matanna - Nona</strong> è un''opportunità per praticare <strong>trekking</strong> e <strong>escursionismo</strong> in un ambiente selvaggio e incontaminato.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Difficile</li>
  <li><strong>Distanza Totale:</strong> Circa 18 km (andata e ritorno)</li>
  <li><strong>Dislivello:</strong> Circa 1200 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 6-8 ore (a seconda del ritmo)</li>
  <li><strong>Punti di Interesse:</strong> <strong>Monte Nona</strong> (cima), <strong>Monte Matanna</strong> (cima), Punti Panoramici, <strong>Sentieri</strong> 109-5-121-3-109</li>
  <li><strong>Fauna Selvatica:</strong> Possibilità di avvistare <strong>mufloni</strong> e <strong>cavalli selvatici</strong></li>
  <li><strong>Consigli:</strong> Scarpe da trekking adatte, abbigliamento tecnico, acqua e cibo a sufficienza, mappa, bussola o GPS. Informarsi sulle condizioni meteorologiche prima di partire.</li>
</ul>

<p>La <strong>trekking</strong> a <strong>Matanna - Nona</strong> rappresenta un''esperienza indimenticabile per gli amanti del <strong>sentiero</strong> e della <strong>natura</strong>.  Esplorate i più belli <strong>sentieri Italia</strong> e godetevi un''escursione tra le montagne.</p>',
  'Tutte le Attività e Paesi',
  11.58,
  1,
  851,
  1,
  442,
  '07:22',
  NULL,
  NULL,
  665,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Palagnana',
  '2021-10-01',
  '2021-10-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/matanna-nona-con-lupus-in-trekking-87371489',
  NULL,
  43.987355,
  10.344456,
  'POINT(10.344456 43.987355)',
  '72487475ef2dd8e424df334edb52ea511700bb32db5a100a9c11f5c3e94348ce',
  'Escursione Matanna - Nona: Toscana, Palagnana. Trek di 11.5km, difficoltà media, +1000m dislivello. Salita al Monte Nona e al Monte Matanna. Ammira i panorami e...',
  'Monte Nona - Matanna: Escursione Anello Toscana',
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
VALUES (87371489, 'https://it.wikiloc.com/percorsi-escursionismo/matanna-nona-con-lupus-in-trekking-87371489', NOW(), '72487475ef2dd8e424df334edb52ea511700bb32db5a100a9c11f5c3e94348ce')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371489);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371489/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371489;

COMMIT;

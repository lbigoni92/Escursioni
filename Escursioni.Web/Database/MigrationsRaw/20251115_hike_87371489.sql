BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371489,
  'Matanna - Nona',
  'il percorso è faticoso in due tratti: Salita del nona Salita dal rifugio Massa fino al Callare del Matanna. Per il resto è ben segnalato e fattibile i punti panoramici più belli sono : Monte Nona - cima Monte Matanna - cima Sentieri 109-5-121-3-109 +(2 creste) sul percorso vediamo se siamo fortunati mufloni e cavalli selvatici.',
  '<h2 id="matanna-nona">Escursione a Matanna - Nona: Un Anello di Montagna con Panorami Mozzafiato</h2>

<p>
Ho appena concluso un''escursione fantastica a <strong>Matanna - Nona</strong>, un anello di montagna che mi ha regalato panorami incredibili e una bella sfida.  Questo percorso, situato nel cuore della <strong>Toscana</strong>, è perfetto per chi cerca un''esperienza immersa nella natura, ma con un po'' di impegno. Preparatevi a sudare, perché il sentiero presenta alcuni tratti impegnativi, ma la ricompensa è più che meritevole!
</p>

<h3>Come arrivare al punto di partenza</h3>

<p>
Il punto di partenza dell''escursione è raggiungibile facilmente in auto da <strong>Palagnana</strong>. Da qui, seguiamo le indicazioni per il Rifugio Massa, il punto di partenza del primo tratto del sentiero. In alternativa, è possibile raggiungere il punto di partenza a piedi, seguendo sentieri locali (consigliabile solo per escursionisti esperti).</p>

<h3>Il percorso passo per passo</h3>

<p>
L''escursione inizia con una faticosa salita al <strong>Monte Nona</strong>, seguita da un''altra salita dal rifugio Massa fino al <strong>Callare del Matanna</strong>. Una volta superati questi tratti più impegnativi, il sentiero si snoda attraverso punti panoramici mozzafiato, conducendoci in cima al <strong>Monte Matanna</strong> e lungo le <strong>creste</strong>.  Il sentiero è ben segnalato, ma richiede attenzione, soprattutto nei tratti più esposti. Non perdetevi i sentieri 109-5-121-3-109 per ammirare i panorami.</p>

<h3>Difficoltà e cosa aspettarsi</h3>

<p>
Questa <strong>escursione</strong> è di <strong>difficoltà media</strong>. Richiede una buona preparazione fisica, soprattutto per i tratti più ripidi.  È consigliabile indossare scarpe da trekking adeguate e portare con sé acqua, cibo e un kit di pronto soccorso.  Durante il percorso, potrete ammirare panorami spettacolari, ma anche incontrare la fauna locale:  si dice che a volte si possano avvistare <strong>mufloni</strong> e <strong>cavalli selvatici</strong>!
</p>

<h3>Traccia GPS e informazioni pratiche</h3>

<p>
Potete scaricare la <strong>traccia GPS</strong> di questa escursione per seguirla durante la vostra avventura.  Ecco le informazioni pratiche:</p>

<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 11.58 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 1316 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Rifugio Massa, raggiungibile in auto da Palagnana</li>
  <li><strong>Comune:</strong> Palagnana, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.58,
  1316,
  851,
  1318,
  442,
  '6:21',
  332,
  '5:32',
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
  'Alpi Apuane',
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

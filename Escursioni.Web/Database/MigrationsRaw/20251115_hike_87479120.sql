BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87479120,
  'San Giuliano Terme - Villa del polacco',
  'Il percorso è molto bello e fattibile sia in notturna, sia in diurna. Si passa da Passo di dante dove vi è una targa che lo commemora, il percorso è ben segnato e non vi sono problemi tecnici. L''unico punto più impegnativo è la salita al monte dopo il Passo di Dannte, in seguito raggiungiamo "il Castagno", da li poco dopo giriamo sulla sinistra. Non ci sono fontanelle. Di notte usate la torcia e scarpe adeguate. Molto carino al livello storico, lo consiglio',
  '<h2>San Giuliano Terme - Villa del Polacco: Trekking Esplorativo nella Montagna</h2>

<h3>Il Percorso</h3>

<p>Immergiti in un’esperienza di trekking indimenticabile lungo il sentiero che collega <strong>San Giuliano Terme</strong> a <strong>Villa del Polacco</strong>. Questo percorso escursionistico offre panorami mozzafiato e la possibilità di scoprire la bellezza selvaggia della <strong>montagna</strong>. Il sentiero, adatto sia in notturna che diurna, è ben segnalato e presenta un dislivello moderato, rendendolo accessibile a escursionisti di diversi livelli di esperienza. L''escursione si snoda attraverso un paesaggio suggestivo, ideale per gli amanti del trekking e della <strong>natura</strong>.</p>

<p>Il percorso inizia da <strong>Passo di Dante</strong>, dove potrai ammirare una targa commemorativa. Da qui, la discesa è piacevole e agevole, proseguendo attraverso sentieri naturali, un''opportunità unica per un''<strong>escursione</strong> immersa nella tranquillità della <strong>montagna italiana</strong>. Il sentiero è caratterizzato da una facile percorribilità, minimizzando le difficoltà tecniche, pur offrendo panorami spettacolari.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
    <li>Percorso ben segnalato, ideale per trekking e escursioni.</li>
    <li>Dislivello moderato, adatto a escursionisti di diversi livelli.</li>
    <li>Possibilità di trekking notturno (consigliata torcia e scarpe adeguate).</li>
    <li>Bellezza naturale e panorami mozzafiato sulla <strong>montagna</strong>.</li>
    <li>Un''esperienza di trekking in un ambiente suggestivo, perfetto per gli amanti della <strong>natura</strong>.</li>
</ul>

<p>La salita al <strong>Monte</strong> dopo il Passo di Dante rappresenta l''unico punto più impegnativo del percorso, ma la ricompensa è un panorama unico.  Dopo aver superato questa breve salita, si raggiunge "Il Castagno", da lì il sentiero prosegue facilmente, offrendo una facile e piacevole discesa. Ricorda di prepararti adeguatamente per l''<strong>escursione</strong>, con scarpe adeguate e l''attrezzatura necessaria.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Distanza:</strong> Circa 6 km</li>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Punti di Interesse:</strong> Passo di Dante, "Il Castagno"</li>
    <li><strong>Note Importanti:</strong> Non ci sono fontanelle lungo il percorso. È consigliabile portare con sé acqua e cibo a sufficienza, soprattutto durante le <strong>escursioni</strong> notturne.  L''escursione richiede un''adeguata preparazione fisica ed equipaggiamento.</li>
</ul>

<p>Scopri la bellezza del territorio di <strong>San Giuliano Terme</strong> con questa splendida <strong>trekking</strong>. Un''occasione unica per un''<strong>escursione</strong> nella natura, adatta sia ai principianti che agli escursionisti esperti.  Vivi un’esperienza indimenticabile in questo affascinante sentiero, perfetto per un''<strong>escursione</strong> domenicale o per una giornata all''aria aperta. Approfitta di questa opportunità per immergerti nella tranquillità della <strong>montagna italiana</strong>.</p>',
  'Tutte le Attività e Paesi',
  8.17,
  348,
  86,
  130,
  357,
  '05:57',
  NULL,
  NULL,
  2502,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'San Giuliano Terme',
  '2020-08-01',
  '2020-08-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/san-giuliano-terme-villa-del-polacco-con-lupus-in-trekking-87479120',
  NULL,
  43.764146,
  10.443598,
  'POINT(10.443598 43.764146)',
  'f390729c10e0b7a4018c325dc7670a37d2ca6c863b096fc9704320b81035988e',
  'Escursione a San Giuliano Terme: Villa del Polacco! Percorso facile e suggestivo tra storia e natura. Viste mozzafiato, facile da percorrere!',
  'Trekking Villa del Polacco San Giuliano Terme: Sentiero Facile',
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
VALUES (87479120, 'https://it.wikiloc.com/percorsi-escursionismo/san-giuliano-terme-villa-del-polacco-con-lupus-in-trekking-87479120', NOW(), 'f390729c10e0b7a4018c325dc7670a37d2ca6c863b096fc9704320b81035988e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479120);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479120/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479120;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87378212,
  'Le Pozze di Malbacco - Cascata Malbacco',
  'Cascata Malbacco IL SENTIERO VERO E PROPRIO INIZIA AL KM 1.7. ma abbiamo dovuto parcheggiare prima per l''elevato numero di persone consiglio d''andare presto, il percorso è banale e adatto a tutti, grandi e bambini. Portatevi il costume e la maschera anche il fondale è bello per chi ama fare snorkeling, uno spettacolo tutto apuano. possibile arrivarci anche con scarpe da ginnastica.',
  '<h2 id="le-pozze-di-malbacco-cascata-malbacco">Escursione alle Pozze di Malbacco e alla Cascata Malbacco</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il vero inizio del sentiero si trova al chilometro 1.7, ma per evitare il traffico, consiglio di parcheggiare prima in quanto il punto di partenza è molto frequentato, soprattutto nel fine settimana.  È possibile raggiungere il punto di partenza in auto, seguendo le indicazioni per **Azzano** in **Toscana**.  Si parcheggia nei pressi del parcheggio provvisorio apposito, assicurandosi di arrivare il prima possibile per godere appieno dell''escursione.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo sentiero è perfetto per chi cerca un''**escursione** facile e piacevole. Il percorso è banale e adatto a tutti, inclusi grandi e bambini. Iniziate dal chilometro 1.7 e proseguite lungo il sentiero che si snoda tra il verde della foresta e l’acqua cristallina delle **Pozze di Malbacco**. Il sentiero è ben tenuto e facilmente percorribile, con alcuni tratti leggermente ripidi. Il percorso culmina all’arrivo alla suggestiva **Cascata Malbacco**, un luogo incantevole dove potrete ammirare la forza e la bellezza della natura.  Un''ottima **trekking** per tutta la famiglia!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>**Difficoltà:** **Medio**.  Questa **escursione** è consigliata a persone con un minimo di allenamento, ma è accessibile anche a famiglie con bambini che sono in buona forma.  Non ci sono passaggi particolarmente impegnativi o tecnici.</p>
<p>Aspettatevi un dislivello di circa 421 metri e una distanza di 13.63 km percorsa in modalità solo andata.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per seguire il percorso, vi consigliamo di utilizzare una **traccia GPS**.  Potete scaricare la **traccia GPS** per questa **escursione** sul vostro dispositivo mobile.  Ricordatevi di consultare le previsioni meteo prima di partire e di indossare scarpe da ginnastica adatte per l''**escursione**.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 13.63 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 421 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong>  KM 1.7, sentiero raggiungibile in auto da Azzano, Toscana</li>
  <li><strong>Comune:</strong> Azzano, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.63,
  421,
  156,
  480,
  306,
  '4:53',
  255,
  '4:15',
  3693,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Azzano',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/le-pozze-di-malbacco-cascata-malbacco-con-lupus-in-trekking-87378212',
  NULL,
  44.018059,
  10.218663,
  'POINT(10.218663 44.018059)',
  'ed764f856d269919cbae03f9b92839c15e743fe1564a1a6be205c2d61c3fd1e4',
  'Escursione Pozze di Malbacco Azzano Toscana: Trekking facile 13.6km +767m. Cascata Malbacco perfetta per famiglie e snorkeling! Parcheggio affollato, vai pre...',
  'Pozze di Malbacco: Escursione Cascata Malbacco (Toscana)',
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
VALUES (87378212, 'https://it.wikiloc.com/percorsi-escursionismo/le-pozze-di-malbacco-cascata-malbacco-con-lupus-in-trekking-87378212', NOW(), 'ed764f856d269919cbae03f9b92839c15e743fe1564a1a6be205c2d61c3fd1e4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87378212);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87378212/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87378212;

COMMIT;

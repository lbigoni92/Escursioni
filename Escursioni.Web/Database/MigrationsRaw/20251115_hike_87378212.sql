BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87378212,
  'Le Pozze di Malbacco - Cascata Malbacco',
  'Cascata Malbacco IL SENTIERO VERO E PROPRIO INIZIA AL KM 1.7. ma abbiamo dovuto parcheggiare prima per l''elevato numero di persone consiglio d''andare presto, il percorso è banale e adatto a tutti, grandi e bambini. Portatevi il costume e la maschera anche il fondale è bello per chi ama fare snorkeling, uno spettacolo tutto apuano. possibile arrivarci anche con scarpe da ginnastica.',
  '<h2>Le Pozze di Malbacco – Cascata Malbacco: Trekking e Escursioni in Montagna ad Appiano</h2>

<h3>Il Percorso</h3>

<p>Il <strong>sentiero Le Pozze di Malbacco – Cascata Malbacco</strong> è un''escursione indimenticabile nel cuore dell''Appennino Tosco-Emiliano. Questo <em>trekking</em>, facilmente accessibile, si snoda attraverso un paesaggio mozzafiato, perfetto per famiglie e per chi cerca una <strong>escursione in montagna</strong> rilassante. Il percorso inizia in maniera leggermente impervia a partire dal chilometro 1.7, ma è consigliabile arrivare prima per evitare le code dovute all''alta affluenza di visitatori. La strada di accesso è spesso congestionata, quindi un arrivo anticipato è fondamentale per godere appieno di questa splendida <strong>escursione in Italia</strong>.</p>

<p>Il <strong>sentiero</strong> è caratterizzato da una pendenza dolce e da un terreno ben tenuto, rendendolo adatto a persone di tutte le età e livelli di preparazione. È possibile affrontare l''escursione anche con scarpe da ginnastica, anche se per una maggiore comfort si consiglia l''utilizzo di scarpe da trekking.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi ad essere incantati dalla bellezza selvaggia delle <strong>Pozze di Malbacco</strong>, un''oasi di acque cristalline immersa nella <strong>natura</strong> incontaminata. La <em>Cascata Malbacco</em> è un vero spettacolo, un getto d''acqua impetuoso che si getta nelle pozze creando una scenografia naturale di rara bellezza.  Questo <strong>trekking</strong> offre la possibilità di immergersi in un ambiente naturale protetto, lontano dal caos cittadino.  La zona è ricca di flora e fauna, con la possibilità di avvistare diverse specie di uccelli e altri animali selvatici. L''acqua è perfetta per il bagno e lo snorkeling, con un fondale interessante per chi ama esplorare le profondità.</p>

<p>Non dimenticate di portare con voi il costume da bagno e una maschera da snorkeling per sfruttare al massimo le <strong>Pozze di Malbacco</strong>.  Potrete godervi un''esperienza unica e indimenticabile, perfetta per una giornata di relax e divertimento in famiglia o con gli amici.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Distanza:</b> Circa 3 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> Circa 150 metri</li>
    <li><b>Tempo di percorrenza:</b> Circa 1.5 - 2 ore</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Attrezzatura consigliata:</b> Scarpe da trekking, costume da bagno, maschera da snorkeling, acqua, snack, cappello, crema solare</li>
    <li><b>Accessibilità:</b> Facile, raggiungibile anche con mezzi pubblici (verifica orari e fermate).</li>
    <li><b>Ubicazione:</b> Appiano, provincia di Parma, Emilia Romagna - Italia.</li>
</ul>

<p>Questo <strong>sentiero escursionistico</strong> rappresenta un''ottima opportunità per scoprire la bellezza del territorio appenninico. Se siete alla ricerca di una <strong>trekking</strong> facile e divertente, le <strong>Pozze di Malbacco – Cascata Malbacco</strong> sono la scelta ideale.  Provare a fare un''<strong>escursione</strong> in questo luogo speciale è un''esperienza da non perdere!</p>',
  'Tutte le Attività e Paesi',
  13.63,
  767,
  156,
  480,
  306,
  '05:06',
  NULL,
  NULL,
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

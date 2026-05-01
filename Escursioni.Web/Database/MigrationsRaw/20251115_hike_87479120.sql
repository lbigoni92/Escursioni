BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87479120,
  'San Giuliano Terme - Villa del polacco',
  'Il percorso è molto bello e fattibile sia in notturna, sia in diurna. Si passa da Passo di dante dove vi è una targa che lo commemora, il percorso è ben segnato e non vi sono problemi tecnici. L''unico punto più impegnativo è la salita al monte dopo il Passo di Dannte, in seguito raggiungiamo "il Castagno", da li poco dopo giriamo sulla sinistra. Non ci sono fontanelle. Di notte usate la torcia e scarpe adeguate. Molto carino al livello storico, lo consiglio',
  '<h2 id="san-giuliano-terme-villa-del-polacco">Escursione a Villa del Polacco da San Giuliano Terme</h2>

<p>
  Volevo condividere questa bellissima escursione adatta a tutti, perfetta per una giornata all''aria aperta. Il sentiero che collega San Giuliano Terme a Villa del Polacco è un anello ben segnalato e, se siete amanti dei silenzi, lo consiglio anche di notte! 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
  Il punto di partenza dell''escursione è facilmente raggiungibile. Potete arrivare a San Giuliano Terme in auto e da lì, seguendo le indicazioni stradali, vi troverete all''inizio del sentiero. Ci sono parcheggi disponibili nelle vicinanze.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
  Il percorso inizia con una salita dolce, passando per il suggestivo <strong id="passo-di-dante">Passo di Dante</strong>, dove potrete ammirare la targa che commemora questo luogo. Dopo il passo, la salita diventa leggermente più ripida, ma il sentiero rimane ben visibile. Raggiungerete il punto chiamato "Il Castagno", da lì proseguirete il giro con una discesa graduale che vi porterà a raggiungere <strong id="villa-del-polacco">Villa del Polacco</strong>.  Un percorso semplice e piacevole, ideale per una giornata di trekking.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
  Questa escursione è classificata come <strong id="difficoltà-facile">Facile</strong>, adatta a persone di tutte le età e livelli di esperienza. La distanza totale è di circa 8,17 km con un dislivello positivo di 269 metri. Il sentiero è ben tenuto e segnalato, ma è importante indossare scarpe da trekking e abbigliamento adeguato alle condizioni atmosferiche.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
  (Inserire qui la traccia GPS dell''escursione - esempio: [link alla traccia GPS])
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong id="distanza">Distanza:</strong> Circa 8,17 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 269 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> San Giuliano Terme, inizio sentiero</li>
  <li><strong id="comune">Comune:</strong> San Giuliano Terme, Toscana, Italia</li>
  <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.17,
  269,
  -86,
  130,
  178,
  '2:58',
  155,
  '2:35',
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
  'Escursione San Giuliano Terme - Villa del Polacco: Anello facile 8.17km, +348m nei Castelli Romagnoli. Percorso storico ben segnalato, adatto anche di notte....',
  'Villa del Polacco: Escursione facile da San Giuliano Term...',
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

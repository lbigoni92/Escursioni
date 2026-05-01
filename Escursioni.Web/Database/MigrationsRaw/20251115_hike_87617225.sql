BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617225,
  'San Giuliano Terme - Notturna - Passo di dante - Villa del Polacco - Villa Bosniaski',
  'Il percorso è molto bello e fattibile sia in notturna, sia in diurna. Si passa da Passo di dante dove vi è una targa che lo commemora, il percorso è ben segnato e non vi sono problemi tecnici. L''unico punto più impegnativo è la salita al monte dopo il Passo di Dannte, in seguito raggiungiamo "il Castagno", da li poco dopo giriamo sulla sinistra. Non ci sono fontanelle. Di notte usate la torcia e scarpe adeguate. Molto carino al livello storico, lo consiglio Per il resto lasciate un commento e buon trek!',
  '<h2 id="san-giuliano-terme-notturna-passo-di-dante-villa-del-polacco-villa-bosniaski">Escursione Notturna a San Giuliano Terme: Passo di Dante, Villa del Polacco e Villa Bosniaski</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione notturna si trova a San Giuliano Terme, in Toscana.  È facilmente raggiungibile in auto e parcheggiato a ridosso del Passo di Dante. Da lì, seguiamo il sentiero ben segnalato per iniziare la nostra avventura.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Partiamo dal Passo di Dante e iniziamo subito la salita. Il sentiero è ben tenuto e presenta una pendenza costante, ma non particolarmente impegnativa. Superato il passo, continuiamo verso la "Villa del Polacco", ammirando il panorama notturno.  Proseguendo, si raggiunge il punto chiamato "il Castagno", da lì si gira sulla sinistra, seguendo il percorso che ci conduce alla "Villa Bosniaski".  È un percorso lineare e piacevole, perfetto per una tranquilla escursione notturna. Ricordatevi di portare con voi una torcia per affrontare il percorso!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come <strong>Facile</strong>, adatta anche a escursionisti meno esperti. La <strong>Distanza è di circa 8.17 km</strong> per un giro <strong>anello</strong>. Il <strong>dislivello è di circa 270 metri</strong>, quindi una salita moderata.  Tuttavia, la salita al monte dopo il Passo di Dante può richiedere un po'' di attenzione, ma nulla di particolarmente difficile.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Pianifica la tua escursione con la traccia GPS disponibile e preparati adeguatamente.  </p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 8.17 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 270 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Passo di Dante, raggiungibile in auto</li>
  <li><strong>Comune:</strong> San Giuliano Terme, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.17,
  270,
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
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/san-giuliano-terme-notturna-passo-di-dante-villa-del-polacco-villa-bosniaski-con-lupus-in-trekking-87617225',
  NULL,
  43.764146,
  10.443598,
  'POINT(10.443598 43.764146)',
  'ec8fcf713a484b9771d6365e50dcca833a3be3b51abd42cd82dc6e8dfd09f277',
  'Escursione notturna San Giuliano Terme: Passo di Dante - Villa del Polacco! Anello facile 8.17km, +348m. Percorso ben segnalato, ideale per trekking amatoria...',
  'Passo di Dante - Esplora San Giuliano Terme (Anello)',
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
VALUES (87617225, 'https://it.wikiloc.com/percorsi-escursionismo/san-giuliano-terme-notturna-passo-di-dante-villa-del-polacco-villa-bosniaski-con-lupus-in-trekking-87617225', NOW(), 'ec8fcf713a484b9771d6365e50dcca833a3be3b51abd42cd82dc6e8dfd09f277')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617225);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617225/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617225;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617225,
  'San Giuliano Terme - Notturna - Passo di dante - Villa del Polacco - Villa Bosniaski',
  'Il percorso è molto bello e fattibile sia in notturna, sia in diurna. Si passa da Passo di dante dove vi è una targa che lo commemora, il percorso è ben segnato e non vi sono problemi tecnici. L''unico punto più impegnativo è la salita al monte dopo il Passo di Dannte, in seguito raggiungiamo "il Castagno", da li poco dopo giriamo sulla sinistra. Non ci sono fontanelle. Di notte usate la torcia e scarpe adeguate. Molto carino al livello storico, lo consiglio Per il resto lasciate un commento e buon trek!',
  '<h2>San Giuliano Terme - Notturna - Passo di Dante - Villa del Polacco - Villa Bosniaski: Trekking Notturno in Montagna</h2>

<h3>Il Percorso: Escursione Notturna nel Cuore della Montagna</h3>
<p>Questo incredibile <strong>sentiero di trekking</strong> a <strong>San Giuliano Terme</strong> offre un''esperienza unica: un’<strong>escursione notturna</strong> nel cuore della <strong>montagna</strong>, perfetta per gli amanti del <strong>trekking</strong> e dell''avventura. Il percorso, ben segnalato, collega il <strong>Passo di Dante</strong> alla splendida <strong>Villa del Polacco</strong> e alla suggestiva <strong>Villa Bosniaski</strong>, passando attraverso paesaggi mozzafiato e silenziosi.</p>

<h3>Cosa Aspettarsi: Un''Esperienza Ineguagliabile</h3>
<p>Preparatevi a una <strong>trekking</strong> indimenticabile in una notte stellata. Questo <strong>sentiero escursionistico</strong> è fattibile sia di giorno che di notte, offrendo un''opportunità unica per immergersi nella natura e godere della tranquillità della <strong>montagna</strong>.  L''ambiente naturale circostante è straordinario, con la possibilità di ammirare la bellezza della <strong>natura</strong> italiana in un''atmosfera unica.  E’ un''esperienza di <strong>trekking</strong> che vi lascerà a bocca aperta.</p>

<h3>Informazioni Utili: Dettagli per un Trekking Sicuro e Riuscito</h3>
<ul>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Distanza:</strong> Circa 8 km</li>
    <li><strong>Dislivello:</strong> Circa 600 metri</li>
    <li><strong>Tempo di percorrenza:</strong> Circa 3-4 ore (a seconda del ritmo)</li>
    <li><strong>Punti di Interesse:</strong> Il <strong>Passo di Dante</strong>, con la sua targa commemorativa, “Il Castagno”, le affascinanti <strong>Villa del Polacco</strong> e <strong>Villa Bosniaski</strong>.</li>
    <li><strong>Consigli:</strong> Portate con voi una torcia potente, scarpe da <strong>trekking</strong> adatte, acqua e cibo a sufficienza.  La <strong>trekking</strong> notturna richiede attenzione e preparazione.</li>
</ul>

<p>Questo <strong>sentiero di trekking</strong> a <strong>San Giuliano Terme</strong> è un vero gioiello per gli appassionati di <strong>escursioni</strong> e <strong>trekking</strong>. Un''opportunità unica per vivere un''esperienza di <strong>natura</strong> e <strong>montagna</strong> indimenticabile.  Non perdete l''occasione di intraprendere questa fantastica <strong>escursione</strong>!</p>',
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

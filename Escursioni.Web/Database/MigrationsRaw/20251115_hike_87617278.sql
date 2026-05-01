BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617278,
  'Calambrone - Passeggiata',
  'Il percorso è molto carino e dura appena un pio d''ore non vi sono dislivelli e i sentieri sono ben segnati e semplici da seguire. Staremo in mezzo a sentieri taglia fuoco e la presenza d''animali è assicurata ho spesso incontrato oche volpi e lepri. Siamo nel parco di San Rossore quindi mi raccomando non cogliete bacche come more o funghi senza permesso. I sentieri sono puliti e ve è possibile anche andarci a correre.',
  '<h2 id="escursione-calambrone-passeggiata">Escursione al Calambrone: Passeggiata Facile nel Parco di San Rossore</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione si trova a Calambrone, un piccolo comune della provincia di Toscana. È facilmente raggiungibile in auto, seguendo le indicazioni stradali per Calambrone. Una volta arrivati nel paese, dovrete trovare il parcheggio più vicino al punto di inizio del sentiero. Da lì, il percorso è ben segnalato e facilmente raggiungibile a piedi.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione al Calambrone è un''ottima passeggiata adatta a tutti, anche a chi non ha molta esperienza nel trekking. Si tratta di un anello di circa 8.89 km che non presenta dislivelli e segue sentieri ben segnati. Percorrerete sentieri "taglia fuoco" e potrete avvistare una grande varietà di fauna selvatica, come oche, volpi e lepri. È un''occasione unica per immergersi nella natura del Parco di San Rossore, quindi ricordatevi di rispettare l''ambiente e di non raccogliere bacche o funghi senza l''autorizzazione appropriata.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa escursione è **Facile**. Non ci sono dislivelli significativi, il percorso è ben segnalato e adatto a persone di tutte le età e livelli di preparazione fisica. È perfetta per una giornata in montagna con la famiglia o con gli amici, un''escursione rilassante e piacevole.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare una traccia GPS di questo percorso per seguirla durante l''escursione. Ricordate di avere con voi acqua, snack, scarpe da trekking adatte e un cappello per proteggervi dal sole. Il sentiero è anche perfetto per una corsa mattutina!</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 8.89 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 0 m</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Calambrone, accessibile in auto</li>
    <li><strong>Comune:</strong> Calambrone, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
    <li><strong>Parco Nazionale:</strong> Parco di San Rossore</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.89,
  0,
  21,
  28,
  153,
  '2:33',
  133,
  '2:13',
  1228,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2019-03-01',
  '2019-03-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-passeggiata-87617278',
  NULL,
  43.593673,
  10.300018,
  'POINT(10.300018 43.593673)',
  '49de65301d2bfaf73e25c99b380543cc882f6850b2d1a24b0236134c35730322',
  'Escursione Calambrone: Anello facile nel Parco San Rossore (Toscana)! 8.89km, +36m, sentieri semplici, oche, volpi e lepri! Perfetto per famiglie e corsa.',
  'Calambrone: Escursione Facile nel Parco San Rossore',
  'Livorno e costa toscana',
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
VALUES (87617278, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-passeggiata-87617278', NOW(), '49de65301d2bfaf73e25c99b380543cc882f6850b2d1a24b0236134c35730322')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617278);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617278/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617278;

COMMIT;

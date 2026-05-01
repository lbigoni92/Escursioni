BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87377309,
  'Chioma - Montenero - Castellaccio',
  'Ottimo per chi vuole fare una bella camminata lungo la costa toscana si vedono scorci stupendi del mare che vanno da Castel boccale fin tutto il romito. Tranne per il sentiero chiamato Tzunami il resto è facile e perfettamente percorribile da tutti. Vi consiglio di mettere i pantaloni lunghi ci sono dei rovi, ma per il resto è una bella camminata specialmente quando si arriva a montenero dove possiamo vedere il famoso santuario e il monumento a Ciano',
  '<h2 id="chioma-montenero-castellaccio">Escursione Chioma – Montenero – Castellaccio</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa splendida escursione si trova a <strong>Quercianella</strong>, un caratteristico paese sulla costa toscana. Si può raggiungere in auto, parcheggiando nei pressi del centro. Da qui, seguiamo le indicazioni per il sentiero che sale verso la costa, un''esperienza che non dimenticherai.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Questo <strong>anello di trekking</strong> di <strong>21.26 km</strong> con un dislivello di <strong>+695 m</strong> offre panorami mozzafiato lungo la costa toscana. Inizieremo con una salita graduale attraverso il sentiero, godendoci lo spettacolo del mare che si estende da <strong>Castel Boccale</strong> fino al <strong>Romito</strong>. Il sentiero è principalmente <strong>facile</strong> e ben tenuto, perfetto per una piacevole camminata.</p>
<p>Proseguiremo fino a <strong>Montenero</strong>, dove potremo visitare il <strong>santuario</strong> e il <strong>monumento a Ciano</strong>, immersi in un''atmosfera suggestiva. Da Montenero, il sentiero prosegue verso il <strong>Castellaccio</strong>, offrendo panorami spettacolari sulla costa e sul mare.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è considerata di <strong>difficoltà facile</strong>, adatta a escursionisti occasionali e famiglie. Il dislivello è moderato, ma il percorso è ben segnalato e facilmente percorribile.  È consigliabile indossare scarpe da trekking e portare con sé acqua e snack.  L''abbigliamento consigliato sono i <strong>pantaloni lunghi</strong> per proteggersi dai rovi presenti lungo il sentiero.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Puoi scaricare la <strong>traccia GPS</strong> di questa escursione per seguire il percorso durante la tua camminata. Per maggiori informazioni e dettagli sul sentiero, ti consiglio di consultare risorse online o app di trekking.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 21.26 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 695 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Quercianella (accessibile in auto)</li>
  <li><strong>Comune:</strong> Quercianella, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  21.26,
  695,
  25,
  316,
  478,
  '7:30',
  391,
  '6:31',
  5952,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quercianella',
  '2021-06-01',
  '2021-06-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/chioma-montenero-castellaccio-con-lupus-in-trekking-87377309',
  NULL,
  43.462525,
  10.367171,
  'POINT(10.367171 43.462525)',
  '8e9a1648fcef75197005ff1426369673edcaf9f6f94df21e3cdc2eede55720df',
  'Escursione Chioma-Montenero-Castellaccio: facile giro in Toscana (21km, 695m dislivello) lungo la costa, con vista mare e Santuario. Perfetto per famiglie!',
  'Chioma - Montenero - Castellaccio: Escursione Facile Toscana',
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
VALUES (87377309, 'https://it.wikiloc.com/percorsi-escursionismo/chioma-montenero-castellaccio-con-lupus-in-trekking-87377309', NOW(), '8e9a1648fcef75197005ff1426369673edcaf9f6f94df21e3cdc2eede55720df')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87377309);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87377309/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87377309;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87377309,
  'Chioma - Montenero - Castellaccio',
  'Ottimo per chi vuole fare una bella camminata lungo la costa toscana si vedono scorci stupendi del mare che vanno da Castel boccale fin tutto il romito. Tranne per il sentiero chiamato Tzunami il resto è facile e perfettamente percorribile da tutti. Vi consiglio di mettere i pantaloni lunghi ci sono dei rovi, ma per il resto è una bella camminata specialmente quando si arriva a montenero dove possiamo vedere il famoso santuario e il monumento a Ciano',
  '<h2>Chioma - Montenero - Castellaccio: Trekking Costiero in Toscana</h2>

<h3>Il percorso</h3>
<p>Questo fantastico <em>sentiero di trekking</em> offre un''esperienza indimenticabile lungo la costa toscana. Partendo da <strong>Chioma</strong>, si sale verso <strong>Montenero</strong>, un luogo ricco di storia e spiritualità, dominato dal suggestivo <strong>santuario</strong>. Il percorso prosegue poi fino al <strong>Castellaccio</strong>, un''imponente formazione rocciosa che si erge maestosa verso il mare. L''<em>escursione</em> è adatta a tutti, con una difficoltà generalmente facile e un''atmosfera naturale che vi conquisterà. La bellezza del <em>trekking</em> in <strong>montagna</strong> è completa con una vista mozzafiato sulla costa, da <strong>Castel Boccale</strong> fino al <strong>Romito</strong>.</p>

<h3>Cosa aspettarsi</h3>
<p>Preparatevi a una <em>bella camminata</em> attraverso paesaggi spettacolari. Il <em>sentiero</em> si snoda tra la macchia mediterranea, offrendo la possibilità di ammirare scorci incantevoli del mare. È consigliabile indossare <strong>pantaloni lunghi</strong> per proteggersi dai rovi presenti in alcune zone. L''<em>escursione</em> è particolarmente piacevole quando si raggiunge <strong>Montenero</strong> e si può ammirare il monumento a Ciano.  L''atmosfera di questa <em>trekking</em> è rilassante e immersiva nella <strong>natura</strong>.  Una fantastica <em>escursione</em> per tutti gli amanti del <em>trekking</em> e del <em>sentiero</em> in <strong>Italia</strong>.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 8-10 km (il percorso può variare leggermente)</li>
    <li><strong>Dislivello:</strong> Circa 300-400 metri</li>
    <li><strong>Tempi di percorrenza:</strong> 3-4 ore (a seconda del ritmo)</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Attenzione:</strong> Portare acqua, scarpe da trekking adatte e protezioni solari.</li>
    <li><strong>Punti di interesse:</strong> Santuario di Montenero, monumento a Ciano, vista panoramica sulla costa toscana</li>
</ul>

<p>Scoprite la bellezza della <strong>Toscana</strong> con questa splendida <em>escursione</em>. Un''occasione perfetta per un''<em>escursione</em> di <em>trekking</em> in <strong>montagna</strong>, tra panorami mozzafiato e sentieri ben tracciati.  Perfetto per un''<em>escursione</em> di <em>trekking</em> in <strong>Italia</strong>, questo <em>sentiero</em> vi regalerà emozioni indimenticabili.  Non perdete l''occasione di vivere una fantastica <em>trekking</em> sulla costa toscana!</p>',
  'Tutte le Attività e Paesi',
  21.26,
  695,
  25,
  316,
  478,
  '07:58',
  NULL,
  NULL,
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
  'Escursioni Chioma Montenero Castellaccio: sentiero costa Toscana, vista mare, santuario e Ciano. Facile e panoramico! 🏞️🇮🇹',
  'Trekking Chioma Montenero Castellaccio: Escursione Toscana',
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

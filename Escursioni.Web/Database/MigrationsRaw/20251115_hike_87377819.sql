BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87377819,
  'Sanbuca Livornese - Notturno',
  'Percorso fatto in notturna, prevalentemente sul sentiero 00, molto facile l''ho segutio andando a memoria, abbiamo cenato ai tavolini davanti alla Sanbuca Livornese. Non abbiamo trovato animali e ci siamo fermati a vedere le stelle in una notte stupenda al km 9.1. Poco umido e pieno di lucciole. Lo spettacolo dato dalle luci della città è fenomenale. Portate le torce frontali',
  '<h2 id="sanbuca-livornese-notturno">Escursione al Sanbuca Livornese - Notturno</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa fantastica escursione notturna è l''inizio del sentiero 00 a Valle Benedetta. È facilmente raggiungibile in auto e parcheggi disponibile nelle vicinanze. Da lì, segui semplicemente le indicazioni per il sentiero 00 e sarai pronto per iniziare la tua avventura!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione di trekking è stata un''esperienza incredibile! Abbiamo percorso il sentiero 00 in notturna, godendoci il silenzio della montagna e ammirando il panorama illuminato dalla città. Abbiamo seguito il sentiero a memoria, con soste per cenare ai tavolini davanti alla iconica Sanbuca Livornese. Dopo circa 9.1 km, ci siamo fermati per ammirare le stelle in un cielo stellato mozzafiato. Il sentiero è prevalentemente facile e adatto anche a escursionisti alle prime armi. Il tratto più impegnativo è il rientro, con un leggero dislivello.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è classificata come <b>Facile</b>, ideale per famiglie e principianti. La distanza totale è di circa 11.83 km con un dislivello di +307 metri. Porta con te delle torce frontali per illuminare il tuo cammino e preparati a un''esperienza unica nel cuore della notte.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Non disponibile traccia GPS. Consigliamo di scaricare la mappa della zona e di informarsi sulle condizioni del sentiero prima di partire. Il sentiero è ben segnalato ed è facile da seguire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
  <li><strong id="distanza">Distanza:</strong> Circa 11.83 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 307 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Inizio sentiero 00, Valle Benedetta, Toscana, Italia</li>
  <li><strong id="comune">Comune:</strong> Valle Benedetta, Toscana</li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.83,
  307,
  129,
  322,
  242,
  '4:03',
  211,
  '3:31',
  2659,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sanbuca-livornese-notturno-con-lupus-in-trekking-87377819',
  NULL,
  43.526069,
  10.412709,
  'POINT(10.412709 43.526069)',
  '4023f4c9e50eeda04c4b0cd219cb33a519c6e99bbdfded93542957237e304fc1',
  'Escursione notturna Sanbuca Livornese: Anello facile 11.8km Valle Benedetta (Toscana) +307m. Trekking al km 9.1 sotto le stelle con luci città & lucciole! 🔦',
  'Sanbuca Livornese: Escursione Notturna Facile (Toscana)',
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
VALUES (87377819, 'https://it.wikiloc.com/percorsi-escursionismo/sanbuca-livornese-notturno-con-lupus-in-trekking-87377819', NOW(), '4023f4c9e50eeda04c4b0cd219cb33a519c6e99bbdfded93542957237e304fc1')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87377819);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87377819/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87377819;

COMMIT;

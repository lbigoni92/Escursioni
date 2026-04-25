BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87377819,
  'Sanbuca Livornese - Notturno',
  'Percorso fatto in notturna, prevalentemente sul sentiero 00, molto facile l''ho segutio andando a memoria, abbiamo cenato ai tavolini davanti alla Sanbuca Livornese. Non abbiamo trovato animali e ci siamo fermati a vedere le stelle in una notte stupenda al km 9.1. Poco umido e pieno di lucciole. Lo spettacolo dato dalle luci della città è fenomenale. Portate le torce frontali',
  '<h2>Sanbuca Livornese - Notturno: Trekking Notturno nella Montagna Livornica</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un’esperienza unica e indimenticabile con l’escursione notturna <strong>Sanbuca Livornese - Notturno</strong>. Questo <em>sentiero di trekking</em> vi condurrà attraverso il cuore della <strong>Montagna Livornica</strong>, seguendo il <strong>sentiero 00</strong>, con un’andatura prevalentemente <em>facile</em>. L''escursione è stata realizzata a memoria, rendendola un''esperienza personale e suggestiva. Il percorso è pensato per essere seguito senza particolari difficoltà, ideale per chi desidera un’<em>escursione di trekking</em> notturna senza particolari ostacoli.</p>

<p>Iniziando dalla suggestiva <strong>Sanbuca Livornese</strong>, vi inoltrerete nel silenzio della notte, ammirando le luci della città che si riflettono sulla montagna.  Il sentiero, percorso principalmente, offre panorami mozzafiato e la possibilità di immergersi completamente nella natura, sfruttando le caratteristiche uniche di un <em>trekking notturno</em>.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
    <li><strong>Escursione Notturna:</strong> Un''esperienza unica sotto le stelle.</li>
    <li><strong>Sentiero 00:</strong> Percorso prevalentemente facile e accessibile.</li>
    <li><strong>Ambiente Naturale:</strong> Un’immersione nella flora e fauna della <strong>Montagna Livornica</strong>.</li>
    <li><strong>Sanbuca Livornese:</strong> Punto di partenza ideale per iniziare l''escursione.</li>
    <li><strong>Punto di Sosta:</strong> Fermata al km 9.1 per ammirare le stelle e le lucciole.</li>
</ul>

<p>Durante l’escursione, avrete l''opportunità di cenare ai tavolini presenti davanti alla <strong>Sanbuca Livornese</strong>, gustando un momento di relax e tranquillità.  Non mancherà l''opportunità di osservare la fauna locale, data l''assenza di animali avvistati durante il percorso.  La notte, illuminata solo dalle torce frontali, regala uno spettacolo magico, con la possibilità di ammirare le stelle in tutta la loro bellezza.</p>

<h3>Informazioni Utili</h3>

<p>Il percorso è stato svolto in condizioni poco umide e con la presenza di lucciole, creando un’atmosfera suggestiva.  L''escursione è ideale per amanti del <em>trekking</em> e dell''<em>escursionismo</em> che desiderano vivere un''esperienza diversa, lontano dal caos cittadino.  La <strong>distanza del sentiero</strong> è accessibile a tutti, rendendo l''<em>escursione di trekking</em> un’attività adatta anche a chi è alle prime armi. Ricordate di portare con voi delle torce frontali per affrontare la notte in sicurezza e godervi appieno questo meraviglioso <em>sentiero Italia</em>.</p>

<p>Questo <em>trekking notturno</em> nella <strong>Sanbuca Livornese</strong> è un''occasione unica per scoprire la bellezza della <strong>Montagna Livornica</strong> e vivere un’esperienza di <em>natura</em> indimenticabile. Preparatevi per un’<em>escursione di montagna</em> da non perdere!</p>',
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

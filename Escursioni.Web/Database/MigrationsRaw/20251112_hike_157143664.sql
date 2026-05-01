BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  157143664,
  'Marina di Cecina - Geocaching',
  'Passeggiata d''inizio anno, chi cammina il primo dell''anno cammina tutto l''anno! Siamo andati a fare un giro Geocache. per risolvere delle Mistery : https://www.geocaching.com/geocache/GCABKEC https://www.geocaching.com/geocache/GCABKG4 Camminata facile e molto bella non c''eravamo mai stati, torneremo per fare le ultime cache La Riserva naturale Tomboli di Cecina si trova a Marina di Cecina e comprende appunto i Tomboli, lunghi cordoni di dune ricoperti da una fitta vegetazione che dalla spiaggia, si spingono verso l’interno della fascia costiera e rappresentano un caratteristico ecosistema creato per difendere le zone coltivate dai venti marini. La Riserva, che si estende per 15 chilometri, è una tra le più belle foreste italiane, ricca di una folta e varia vegetazione che si differenzia via via che ci si inoltra dal mare.',
  '<h2 id="escursione-marina-di-cecina-geocaching">Escursione a Marina di Cecina: Geocaching e la Riserva Naturale</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa escursione è a Marina di Cecina, in Toscana.  È facilmente raggiungibile in auto o con i mezzi pubblici. Da qui, il sentiero inizia direttamente dalla spiaggia, un punto di accesso perfetto per iniziare il nostro avventura.  Ti consiglio di informarti sui punti di geocaching più vicini per iniziare subito la caccia al tesoro!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo è un giro anello di circa 14.68 km che ci porterà alla scoperta della Riserva Naturale Tomboli di Cecina. Inizieremo dalla spiaggia di Marina di Cecina e ci inoltreremo nel sentiero, seguendo il percorso del sentiero escursionistico. Il percorso è ben segnalato, quindi non avrai problemi a orientarti. Lungo il cammino, avremo la possibilità di fare delle pause per ammirare il panorama e risolvere i puzzle del geocaching.  Il sentiero è in gran parte pianeggiante, con qualche lieve pendenza. Ci perderemo tra le dune, la vegetazione lussureggiante e i panorami mozzafiato sul mare.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa escursione è stata classificata come Medio. Il dislivello è di soli +31 metri, quindi è adatta anche a escursionisti meno esperti.  Ti consiglio di indossare scarpe da trekking comode e di portare con te acqua e snack.  È importante avere una mappa e una bussola (o un''app di navigazione) per orientarti.  L''escursione è una bella opportunità per fare un po'' di geocaching e scoprire una splendida riserva naturale.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Ecco le informazioni pratiche per la tua escursione: Distanza: 14.68 km. Dislivello: 31 metri. Tipo di percorso: Anello.  Non ho una traccia GPS da fornirti direttamente, ma puoi scaricare le tracciate di geocaching per il percorso del giro.  Ti consiglio di consultare le mappe online o di chiedere indicazioni al parco naturale Tomboli di Cecina.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 14.68 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 31 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Spiaggia di Marina di Cecina, Marina di Cecina, Toscana</li>
  <li><strong>Comune:</strong> Marina di Cecina, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  14.68,
  31,
  -3,
  15,
  258,
  '4:18',
  224,
  '3:44',
  2200,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Marina di Cecina',
  '2024-01-01',
  '2024-01-01',
  '2024-01-01 00:00:00',
  '2024-01-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/marina-di-cecina-geocaching-157143664',
  NULL,
  43.302738,
  10.49388,
  'POINT(10.49388 43.302738)',
  '4bc44e53ad12519ff821983b4760220f0d1fa99cc2663dc0d9c5e5d2032b3289',
  'Geocaching a Marina di Cecina (Toscana): escursione anello di 14.68km, +22m dislivello. Scopri le cache nella Riserva Tomboli! Perfetto per un''escursione fac...',
  'Marina di Cecina: Geocaching Anello nella Riserva (Toscana)',
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
VALUES (157143664, 'https://it.wikiloc.com/percorsi-escursionismo/marina-di-cecina-geocaching-157143664', NOW(), '4bc44e53ad12519ff821983b4760220f0d1fa99cc2663dc0d9c5e5d2032b3289')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 157143664);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/157143664/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

COMMIT;

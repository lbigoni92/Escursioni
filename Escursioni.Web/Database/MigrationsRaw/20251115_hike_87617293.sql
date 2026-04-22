BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617293,
  'Valle benedetta - acquedotto di Colognole v1',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2>Valle Benedetta - Acquedotto di Colognole: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>
La <strong>Valle Benedetta - Acquedotto di Colognole v1</strong> è un’escursione classica e molto apprezzata nella <strong>montagna toscana</strong>, perfetta per un <strong>treno di trekking</strong> domenicale. Partendo da <strong>Valle Benedetta</strong>, il sentiero vi condurrà lungo sentieri ben segnalati, offrendo un’esperienza di <strong>trekking</strong> immersa nella <strong>natura</strong> e nella ricca biodiversità della regione. L’escursione è un ottimo esempio di <strong>sentieri di trekking</strong> in Italia, adatta anche a principianti.
</p>

<h3>Cosa Aspettarsi</h3>

<p>
Preparatevi a una piacevole <strong>escursione</strong> attraverso paesaggi mozzafiato. Il percorso è caratterizzato da una discesa graduale, culminante all''arrivo all''<strong>acquedotto di Colognole</strong>.  L''imbocco dell’acquedotto offre un punto di particolare interesse, ricordandovi di prestare attenzione al terreno umido.  Potrete scegliere di attraversare l''acquedotto sopra o sotto, quest’ultimo più panoramico e suggestivo. La <strong>difficoltà del sentiero</strong> è facile, ideale per famiglie e appassionati di <strong>trekking</strong>.
</p>

<p>
La <strong>Valle Benedetta - Acquedotto di Colognole v1</strong> è una splendida opportunità per immergervi nella bellezza della <strong>natura italiana</strong> e respirare l’aria fresca di montagna. Un’<em>escursione</em> da non perdere per chi cerca un’esperienza di <strong>trekking</strong> semplice e gratificante.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Distanza:</b> Circa 6 km</li>
    <li><b>Dislivello:</b> Circa 300 metri</li>
    <li><b>Difficoltà:</b> Facile – Media</li>
    <li><b>Tipo:</b> Trekking, Escursioni, Sentieri</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Attrezzatura consigliata:</b> Scarpe da trekking adeguate, acqua, snack, cappello, crema solare, mappa del sentiero</li>
    <li><b>Punto di partenza:</b> Valle Benedetta</li>
    <li><b>Punto di arrivo:</b> Acquedotto di Colognole</li>
</ul>

<p>
Ricordatevi di utilizzare scarpe adeguate al <strong>trekking</strong>, soprattutto se scegliete di attraversare l''acquedotto sotto.  La <strong>Valle Benedetta - Acquedotto di Colognole v1</strong> è un percorso <em>fattibile anche in notturno</em> per escursionisti esperti, ma sempre con la dovuta cautela. Godetevi questa <strong>escursione di trekking</strong> in <strong>montagna</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.32,
  285,
  203,
  412,
  160,
  '02:40',
  NULL,
  NULL,
  2002,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-05-01',
  '2021-05-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v1-87617293',
  NULL,
  43.523062,
  10.416098,
  'POINT(10.416098 43.523062)',
  '6f050557e54cc4da2716a5a5ff59e2631e73d5661d6e4ff637ad8073be691004',
  'Escursione Valle Benedetta: Acquedotto di Colognole - Anello facile 7.3km, +285m. Trekking in Toscana, sentieri segnalati. Ideale per una giornata domenicale!',
  'Valle Benedetta: escursione all''Acquedotto di Colognole (facile)',
  'Lucchesia e colline toscane',
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
VALUES (87617293, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v1-87617293', NOW(), '6f050557e54cc4da2716a5a5ff59e2631e73d5661d6e4ff637ad8073be691004')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617293);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617293/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617293;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87478884,
  'Forato da Stazzema',
  'Partenza da Stazzema - al parcheggio (costo 3 euro) Il sentiero è bello e si passa vicino a delle cappelle poste per il pellegrinaggio. Si segue il sentiero fino a foce di petrosciana; da li s''imbocca il sentiero 110 e s''arriva al monte forato, un paio di punti possono dare problemi a chi ha problemi con l''altezze, ma niente di complesso. Abbiamo pranzato sul Forato e vista la croce, in seguito siamo scesi sul 12 e tornati a Stazzema. Sentiero molto bello lo consiglio ma portatevi scarpe adeguate',
  '<h2>Forato da Stazzema: Trekking e Escursione in Montagna</h2>

<h3>Il Percorso</h3>

<p>L''escursione al <strong>Forato da Stazzema</strong> è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>montagna</strong>. Il percorso inizia direttamente dal piccolo paese di <strong>Stazzema</strong>, partendo dal parcheggio dove è previsto un costo di 3 euro.  La <strong>sentiero</strong> si snoda attraverso un paesaggio vario, con tratti piuttosto facili e altri più impegnativi, offrendo un''opportunità unica per immergersi nella <strong>natura</strong> incontaminata della Toscana.  L''escursione culmina con una vista mozzafiato dalla cima del <strong>Monte Forato</strong>, raggiungibile dopo aver seguito il <strong>sentiero</strong> che si inerpica lungo il pendio.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi per una giornata all''aria aperta, immersi nel profumo della <strong>montagna</strong> e nella bellezza del paesaggio. Il <strong>sentiero</strong> presenta una <strong>difficoltà</strong> media, con alcuni tratti ripidi che richiedono un buon passo e un''adeguata preparazione fisica.  Sarà possibile ammirare le caratteristiche <strong>cappelle</strong> lungo il percorso, testimonianza di un antico <strong>pellegrinaggio</strong>.  Un momento culminante sarà il pranzo sulla cima del <strong>Monte Forato</strong>, con una vista panoramica impareggiabile sulla valle e sulla <strong>Petrosciana</strong>.  Potrebbero esserci punti dove l''altezza potrebbe creare disagio, quindi è importante valutare attentamente le proprie condizioni fisiche.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Distanza Totale:</strong> Circa 7 km</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero di <strong>trekking</strong></li>
    <li><strong>Punti di Interesse:</strong> <strong>Cappelle</strong> di <strong>pellegrinaggio</strong>, cima del <strong>Monte Forato</strong>, vista sulla <strong>Petrosciana</strong></li>
    <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Equipaggiamento Consigliato:</strong> Scarpe da <strong>trekking</strong> adeguate, acqua, cibo, cappello, crema solare, mappa del <strong>sentiero</strong>.</li>
</ul>

<p>Questa <strong>escursione</strong> nel cuore della <strong>Toscana</strong> offre un''occasione unica per praticare <strong>trekking</strong> e godersi la <strong>natura</strong>.  Esplorate il <strong>sentiero</strong> del <strong>Forato da Stazzema</strong> e lasciatevi conquistare dalla sua bellezza.</p>',
  'Tutte le Attività e Paesi',
  14.53,
  1,
  554,
  1,
  381,
  '06:21',
  NULL,
  NULL,
  4490,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Orzale',
  '2021-05-01',
  '2021-05-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884',
  NULL,
  44.001784,
  10.338317,
  'POINT(10.338317 44.001784)',
  '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8',
  'Escursione Monte Forato da Stazzema (Toscana): percorso facile di 14.5km, +700m dislivello. Partenza da Orzale, ideale per famiglie e amanti del trekking. Vist...',
  'Monte Forato: escursione da Stazzema (facile, panorama)',
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
VALUES (87478884, 'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884', NOW(), '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478884);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478884/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478884;

COMMIT;

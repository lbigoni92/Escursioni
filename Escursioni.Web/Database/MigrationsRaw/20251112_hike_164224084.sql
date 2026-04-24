BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  164224084,
  'Collesalvetti',
  'Ho trascorso un''oretta mentre aspettavo un parente al centro di riabilitazione, così ho deciso di fare una passeggiata improvvisata. Per raggiungere i sentieri è molto semplice: basta percorrere 500 metri di strada e poi ci si troverà immersi in sentieri larghi e facili da seguire. Durante il percorso si attraversano terreni privati dove ci sono alcuni cani che abbaiano, ma non c''è motivo di preoccuparsi. Durante la camminata ho avvistato un fagiano e alcuni cavalli lungo i sentieri. Consiglio questi luoghi tranquilli a chiunque voglia fare una passeggiata rilassante.',
  '<h2>Escursione Trekking Collesalvetti: Sentiero Facile in Montagna</h2>

<h3>Il Percorso</h3>
<p>
La <strong>escursione trekking</strong> al Collesalvetti è un''opportunità perfetta per chi cerca un''esperienza di <strong>trekking</strong> rilassante e accessibile. Il sentiero, di circa 500 metri, si sviluppa partendo da una strada facilmente raggiungibile e conduce direttamente immersi nella natura incontaminata della **montagna** circostante. Il <strong>sentiero</strong> è progettato per essere ampio e semplice da seguire, rendendolo adatto anche a principianti e famiglie con bambini.  Percorrendo questo sentiero in **escursione** potrai scoprire un angolo di paradiso vicino a **Collesalvetti**.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante questa facile <strong>escursione</strong>, ti imbatterai in un ambiente naturale ricco di vita.  La flora locale include maestosi faggi e una varietà di arbusti mediterranei.  Potrai avvistare fauna selvatica come il <strong>fagiano</strong> e, occasionalmente, cavalli che pascolano lungo il sentiero.  L''atmosfera è tranquilla e rilassante, ideale per una pausa dalla frenesia della vita quotidiana.  Considera che il percorso attraversa terreni privati con presenza di cani, ma non sussiste alcun pericolo.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Distanza:</b> Circa 500 metri</li>
    <li><b>Durata:</b> Circa 1 ora</li>
    <li><b>Tipo di Escursione:</b> Trekking, Escursione, Passeggiata</li>
    <li><b>Ideale per:</b> Famiglie, Principianti, Amanti della Natura, Escursioni in **Montagna**</li>
    <li><b>Luogo:</b> In prossimità di **Collesalvetti**, Italia</li>
    <li><b>Punti di Interesse:</b> Fauna locale (fagiani, cavalli), Flora mediterranea, Ammira la **natura**</li>
</ul>

<p>
Questa breve <strong>escursione trekking</strong> a **Collesalvetti** è un''ottima scelta per chi cerca un''attività all''aria aperta, un modo per connettersi con la **natura** e godersi il silenzio e la bellezza della **montagna**.  Non perdere l''occasione di fare un''<strong>escursione** indimenticabile!</p>',
  'Tutte le Attività e Paesi',
  4.48,
  144,
  7,
  84,
  97,
  '1:37',
  84,
  '1:24',
  710,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Collesalvetti',
  '2024-03-01',
  '2024-03-01',
  '2024-03-17 00:00:00',
  '2024-03-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/collesalvetti-164224084',
  NULL,
  43.588558,
  10.478635,
  'POINT(10.478635 43.588558)',
  '02093ce8469d0515747cde4bce4175ac9ed529c788d7a8243092542701c9cd9b',
  'Escursione Collesalvetti (Toscana): Anello di 4.48km, difficoltà media +59m. Passeggiata rilassante tra sentieri facili e natura selvaggia! Perfetta per una ...',
  'Collesalvetti: escursione anello facile (Toscana)',
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
VALUES (164224084, 'https://it.wikiloc.com/percorsi-escursionismo/collesalvetti-164224084', NOW(), '02093ce8469d0515747cde4bce4175ac9ed529c788d7a8243092542701c9cd9b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 164224084);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/164224084/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164224084/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164224084/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164224084/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164224084/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164224084/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164224084;

COMMIT;

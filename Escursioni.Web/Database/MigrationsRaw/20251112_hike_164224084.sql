BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  164224084,
  'Collesalvetti',
  'Ho trascorso un''oretta mentre aspettavo un parente al centro di riabilitazione, così ho deciso di fare una passeggiata improvvisata. Per raggiungere i sentieri è molto semplice: basta percorrere 500 metri di strada e poi ci si troverà immersi in sentieri larghi e facili da seguire. Durante il percorso si attraversano terreni privati dove ci sono alcuni cani che abbaiano, ma non c''è motivo di preoccuparsi. Durante la camminata ho avvistato un fagiano e alcuni cavalli lungo i sentieri. Consiglio questi luoghi tranquilli a chiunque voglia fare una passeggiata rilassante.',
  '<h2 id="escursione-collesalvetti">Escursione a Collesalvetti: Una Passeggiata Rilassante nel Cuore della Toscana</h2>

<p>Durante una mia breve attesa per un parente al centro di riabilitazione di <strong>Collesalvetti</strong>, ho deciso di concedermi una piacevole passeggiata. Il percorso è incredibilmente accessibile: basta percorrere 500 metri di strada per ritrovarsi immersi in sentieri larghi e facili da seguire. Questa <strong>escursione</strong> ad <strong>anello</strong> di <strong>4.48 km</strong> offre un''esperienza autentica nel cuore della <strong>Toscana</strong>.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza è facilmente raggiungibile: percorri 500 metri di strada da <strong>Collesalvetti</strong>. Una volta arrivato, il sentiero è immediatamente visibile e ben segnalato.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Il sentiero si snoda dolcemente attraverso terreni privati, offrendo splendidi panorami. Lungo il percorso, potrai ammirare alcuni cani che giocano, ma non preoccuparti, non ci sono problemi. Durante la camminata, ho avuto la fortuna di avvistare un <strong>fagiano</strong> e alcuni <strong>cavalli</strong> che pascolavano lungo i sentieri. È un''<strong>escursione</strong> perfetta per chi cerca una passeggiata tranquilla e immersa nella natura.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa <strong>escursione</strong> di <strong>difficoltà media</strong> è adatta a persone con un minimo di allenamento. Il <strong>dislivello</strong> è di circa <strong>144 metri</strong>, rendendo il percorso accessibile a tutti. Ti consiglio di indossare scarpe da trekking e di portare con te acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per aiutarti a pianificare il tuo viaggio, ti forniamo la <strong>traccia GPS</strong> (a breve disponibile) e le informazioni pratiche:</p>

<ul>
    <li><strong>Distanza:</strong> Circa 4.48 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 144 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Sentiero accessibile da <strong>Collesalvetti</strong></li>
    <li><strong>Comune:</strong> <strong>Collesalvetti</strong>, <strong>Toscana</strong></li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li><strong>Distanza:</strong> Circa 4.48 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 144 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Sentiero accessibile da Collesalvetti</li>
    <li><strong>Comune:</strong> Collesalvetti, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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

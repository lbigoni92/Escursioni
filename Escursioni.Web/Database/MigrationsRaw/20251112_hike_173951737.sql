BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  173951737,
  'Convento Di Nicosia, Monte Verruca e La Focetta da Caprona',
  'Percorso ad anello da Caprona passando per: - Convento Di Nicosia (2.1 km) - Fonte di Sant''Agata (2.4 km) - Monte Verruca (5.0 km) - La Focetta (8.1 km) Il Sentiero, passa sia dalla “Torre degli Upezzinghi" conosciuta anche come "torre di Caprona", caratteristica della zona in quanto costruita sullo sperone roccioso del monte che sovrasta il paese di Caprona sia dalla fortezza vicina conosciuta come, come la Rocca della Verruca. Il percorso è abbastanza facile da seguire anche se c''è qualche roccetta a cui prestare attenzione in vari tratti, specialmente nella salita alla Verruca, si deve prestare attenzione in caso di pioggia. I sentieri sono sempre abbastanza larghi e in alcuni tratti si piò camminare affiancati. Non ci sono fontanelle se non un paio nei primi 2 km ma nel nostro caso erano in secca, non prestateci troppo affidamento. Senieri: 143-139-La Focetta-145-139-arrivo -139 -focetta-strada bianca',
  '<h2 id="escursione-convento-di-nicosia-monte-verruca-e-la-focetta-da-caprona">Escursione al Convento Di Nicosia, Monte Verruca e La Focetta da Caprona</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa fantastica escursione è a <strong>Caprona</strong>, un piccolo borgo incastonato nel cuore della <strong>Toscana</strong>. Raggiungere Caprona è relativamente semplice: potete arrivare in auto tramite strada statale oppure, per un''esperienza più immersiva, con un breve tratto di cammino dal paese. Una volta arrivati a Caprona, seguite le indicazioni per il sentiero di partenza, facilmente riconoscibile grazie ai cartelli escursionistici.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Quest''escursione ad anello di <strong>11.12 km</strong> vi porterà attraverso paesaggi mozzafiato, con un dislivello di <strong>+585 metri</strong>. Il percorso inizia da Caprona e segue il <strong>sentiero</strong> che vi condurrà prima al <strong>Convento Di Nicosia</strong> (2.1 km), un luogo ricco di storia e fascino. Da lì, proseguirete verso la <strong>Fonte di Sant''Agata</strong> (2.4 km), una sosta rinfrescante e un momento di tranquillità.  Il sentiero prosegue poi verso il <strong>Monte Verruca</strong> (5.0 km), con una salita impegnativa ma ricompensata da un panorama spettacolare. Dopo la Verruca, raggiungerete <strong>La Focetta</strong> (8.1 km), un''altra tappa caratteristica del percorso. Infine, il sentiero vi riporterà a Caprona, attraversando la <strong>Torre degli Upezzinghi</strong>, una torre medievale che domina il paese.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di difficoltà <strong>Media</strong>. Il sentiero è generalmente ben tenuto, ma presenta alcuni tratti rocciosi e salite impegnative, in particolare verso il <strong>Monte Verruca</strong>. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack. Prestare attenzione in caso di pioggia, quando il sentiero potrebbe diventare scivoloso.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per facilitare la vostra escursione, abbiamo incluso una traccia GPS. Ricordatevi di scaricare la traccia sul vostro dispositivo GPS o smartphone prima di partire. La distanza totale dell''escursione è di 11.12 km con un dislivello di 585 metri. Il tipo di giro è ad anello.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 11.12 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 585 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Caprona (accessibile in auto/a piedi)</li>
  <li><strong>Comune:</strong> Caprona, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.12,
  585,
  11,
  541,
  270,
  '4:30',
  235,
  '3:55',
  1932,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Caprona',
  '2024-06-01',
  '2024-06-01',
  '2024-06-13 00:00:00',
  '2024-06-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/convento-di-nicosia-monte-verruca-e-la-focetta-da-caprona-173951737',
  NULL,
  43.710542,
  10.50592,
  'POINT(10.50592 43.710542)',
  '5d57915de17a9fbbf5e958963a53cf2163aac3720f69da8b8061cc32e8ff82eb',
  'Escursione Caprona: Monte Verruca e Convento Di Nicosia | Anello Toscano 11km, 585m dislivello | Trekking facile/medio',
  'Monte Verruca: escursione da Caprona (anello, Toscana)',
  'Monti Pisani',
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
VALUES (173951737, 'https://it.wikiloc.com/percorsi-escursionismo/convento-di-nicosia-monte-verruca-e-la-focetta-da-caprona-173951737', NOW(), '5d57915de17a9fbbf5e958963a53cf2163aac3720f69da8b8061cc32e8ff82eb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 173951737);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/173951737/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173951737/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173951737;

COMMIT;

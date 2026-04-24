BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  135150055,
  'Caprona - Verruca - Torre degli Upezzinghi',
  'Il Sentiero, passa sia dalla “Torre degli Upezzinghi" conosciuta anche come "torre di Caprona", caratteristica della zona in quanto costruita sullo sperone roccioso del monte che sovrasta il paese di Caprona sia dalla fortezza vicina conosciuta come, come la Rocca della Verruca. Il percorso è abbastanza facile da seguire anche se c''è qualche roccetta a cui prestare attenzione in vari tratti, specialmente nella salita alla Verruca, si deve prestare attenzione in caso di pioggia. I sentieri sono sempre abbastanza larghi e in alcuni tratti si piò camminare affiancati. Non ci sono fontanelle se non un paio nei primi 2 km ma nel nostro caso erano in secca, non prestateci troppo affidamento. Senieri: 143-139-La Focetta-145-139-arrivo -139 -focetta-strada bianca',
  '<h2>Caprona - Verruca - Torre degli Upezzinghi: Trekking in Montagna e Sentieri Naturali</h2>

<h3>Il Percorso: Un’Escursione tra Storia e Natura</h3>
<p>
Questo <strong>sentiero di trekking</strong> vi condurrà attraverso un paesaggio montano mozzafiato, passando dalla <strong>Torre degli Upezzinghi</strong>, un luogo iconico della zona di <strong>Caprona</strong>, costruita su uno sperone roccioso del <strong>monte</strong> che domina il paese. L''escursione include anche la visita alla <strong>Rocca della Verruca</strong>, una fortezza storica nelle immediate vicinanze.  La <strong>trekking</strong> è adatta anche a famiglie e appassionati di <strong>escursioni</strong> alla ricerca di un''esperienza immersa nella <strong>natura</strong> italiana. Il percorso, considerato abbastanza facile, è ben tracciato e si snoda attraverso una <strong>montagna</strong> ricca di storia e bellezze naturali.
</p>

<h3>Cosa Aspettarsi: Una Giornata di Trekking in Valmarecchia</h3>
<p>
Preparatevi a una giornata di <strong>trekking</strong> in un ambiente selvaggio e incontaminato. Il sentiero presenta alcuni tratti rocciosi che richiedono attenzione, soprattutto durante la salita alla <strong>Rocca della Verruca</strong>. La difficoltà è moderata, adatta a escursionisti di livello base.  La <strong>distanza del sentiero</strong> è di circa 14,3 km con un dislivello di 800 metri, rendendo questa <strong>escursione</strong> un''ottima sfida per chi ama la <strong>montagna</strong>.  La lunghezza del percorso, combinata con la bellezza del paesaggio, lo rende ideale per una giornata di <strong>sentieri</strong> e panorami mozzafiato.  Ricordatevi di controllare le previsioni meteo prima di partire e di indossare scarpe da <strong>trekking</strong> adatte.
</p>

<h3>Informazioni Utili: Dettagli e Consigli per la Vostra Escursione</h3>
<ul>
  <li><strong>Difficoltà:</strong> Facile/Moderata</li>
  <li><strong>Distanza:</strong> 14,3 km</li>
  <li><strong>Dislivello:</strong> 800 metri</li>
  <li><strong>Punto di Partenza:</strong> 143 (Focetta)</li>
  <li><strong>Punti di Interesse:</strong> <strong>Torre degli Upezzinghi</strong>, <strong>Rocca della Verruca</strong>, panorami sulla Valmarecchia</li>
  <li><strong>Segnavia:</strong> Ben segnalato</li>
  <li><strong>Attenzione:</strong> Prestare attenzione ai tratti rocciosi, soprattutto in caso di pioggia.</li>
  <li><strong>Fontanelle:</strong> Assenti, ma presenti alcuni resti di vecchie fontanelle nei primi 2 km (non sempre operative).</li>
</ul>

<p>
Questa <strong>trekking</strong> a <strong>Caprona</strong> offre un''opportunità unica per esplorare la Valmarecchia e scoprire le sue meraviglie.  Un''<strong>escursione</strong> indimenticabile per gli amanti del <strong>sentiero</strong> e della <strong>natura</strong>!
</p>',
  'Tutte le Attività e Paesi',
  9.78,
  523,
  6,
  540,
  242,
  '4:02',
  210,
  '3:30',
  1734,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Caprona',
  '2023-05-01',
  '2023-05-01',
  '2023-05-18 00:00:00',
  '2023-05-18 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/caprona-verruca-torre-degli-upezzinghi-135150055',
  NULL,
  43.710453,
  10.505687,
  'POINT(10.505687 43.710453)',
  'cafde6dfd12b2ebaf198a07e226594ffbbb0958182a188b53177fdc032d8c0b8',
  'Escursione Caprona Verruca Torre Upezzinghi: Anello Toscano 9.8km, +523m. Trekking facile/medio tra torre medievale e Rocca della Verruca. Ottimo giro a Capr...',
  'Caprona - Verruca - Torre Upezzinghi: Escursione Toscana',
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
VALUES (135150055, 'https://it.wikiloc.com/percorsi-escursionismo/caprona-verruca-torre-degli-upezzinghi-135150055', NOW(), 'cafde6dfd12b2ebaf198a07e226594ffbbb0958182a188b53177fdc032d8c0b8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 135150055);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/135150055/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135150055/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135150055;

COMMIT;

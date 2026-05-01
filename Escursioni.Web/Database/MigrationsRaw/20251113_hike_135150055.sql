BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  135150055,
  'Caprona - Verruca - Torre degli Upezzinghi',
  'Il Sentiero, passa sia dalla “Torre degli Upezzinghi" conosciuta anche come "torre di Caprona", caratteristica della zona in quanto costruita sullo sperone roccioso del monte che sovrasta il paese di Caprona sia dalla fortezza vicina conosciuta come, come la Rocca della Verruca. Il percorso è abbastanza facile da seguire anche se c''è qualche roccetta a cui prestare attenzione in vari tratti, specialmente nella salita alla Verruca, si deve prestare attenzione in caso di pioggia. I sentieri sono sempre abbastanza larghi e in alcuni tratti si piò camminare affiancati. Non ci sono fontanelle se non un paio nei primi 2 km ma nel nostro caso erano in secca, non prestateci troppo affidamento. Senieri: 143-139-La Focetta-145-139-arrivo -139 -focetta-strada bianca',
  '<h2 id="escursione-caprona-verruca-torre-ughezzinghi">Escursione a Caprona, Verruca e Torre degli Upezzinghi</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>

Il punto di partenza per questa bella escursione è la **Focetta** a **Caprona**, in provincia di **Toscana**. Raggiungibile facilmente in auto, la Focetta è un piccolo paese immerso nel cuore della **montagna** toscana. Da qui, il sentiero inizia direttamente dalla strada bianca, segnalato.

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>

Partendo dalla **Focetta**, il sentiero sale dolcemente verso la **Torre degli Upezzinghi**, un''antica torre di avvistamento costruita sullo sperone roccioso del **monte Caprona**. Il sentiero è abbastanza facile da seguire, anche se in alcuni tratti è necessario prestare attenzione a qualche roccetta, soprattutto durante la salita alla **Rocca della Verruca**. Il percorso è un **anello** di circa 9.78 km, che ti permette di ammirare panorami mozzafiato sulla campagna circostante. Il sentiero è spesso ampio e permette di camminare affiancati, ideale per un''escursione con amici o in famiglia. Questo **trekking** ti porterà ad ammirare una delle peculiarità della zona, la **Torre degli Upezzinghi**.

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

Questa **escursione** è di **difficoltà media**. Richiede una buona preparazione fisica, ma non è particolarmente impegnativa. Il **dislivello** è di circa 523 metri, quindi preparatevi a qualche salita, ma con un sentiero ben tracciato e panorami magnifici, la fatica è ampiamente compensata. Ricordatevi di informarsi sulle condizioni meteorologiche prima di partire e di indossare scarpe da trekking adatte.

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

Potete scaricare la **traccia GPS** per questa escursione per seguirla comodamente sul vostro smartphone o dispositivo GPS.

*   **Distanza:** Circa 9.78 km (anello)
*   **Dislivello:** Circa 523 metri
*   **Difficoltà:** Media
*   **Punto di partenza:** Focetta, Caprona, Toscana, Italia
*   **Comune:** Caprona
*   **Regione:** Italia

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul>
    <li><strong>Distanza:</strong> Circa 9.78 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 523 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Focetta, accessibile in auto, Caprona, Toscana</li>
    <li><strong>Comune:</strong> Caprona, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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

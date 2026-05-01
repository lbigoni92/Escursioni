BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  132731789,
  'Parco Mediceo di Pratolino',
  'Il Parco Mediceo di Pratolino è un complesso monumentale di proprietà della Città Metropolitana di Firenze, che vanta dal 2013 anche il riconoscimento UNESCO insieme alle altre Ville e Giardini Medicei. Molto sono le attrattive che il Parco può offrire al visitatore: oltre ad ospitare il Colosso dell’Appennino (opera del Giambologna per la quale il Parco è forse maggiormente conosciuto), custodisce le opere e manufatti del genio buontalentiano di impianto originale mediceo (Cappella, grotta di Cupido, Scuderie, Villa Paggeria, Gamberaie), ospita due giardini all’italiana nella parte medicea e allo stesso tempo è circondato da un giardino-paesaggio in stile romantico (frutto degli interventi ottocenteschi, quando la proprietà è passata prima ai Lorena e poi ai Demidoff) Il Parco è aperto al pubblico dal 1 aprile al 29 ottobre 2023, dal venerdì alla domenica e i giorni festivi (con le aperture straordinarie di lunedì 24 aprile e lunedì 14 agosto). L’orario di apertura è 10-20 da aprile a settembre, 10-18 per il mese di ottobre. L’ingresso è gratuito senza prenotazione.Dal lunedì al giovedi il parco è visitabile dalle 9 alle 14, solo su PRENOTAZIONE scrivendo a parcomediceodipratolino@cittametropolitana.fi.it',
  '<h2 id="escursione-parco-mediceo-di-pratolino">Escursione nel Parco Mediceo di Pratolino</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa splendida escursione è direttamente all''ingresso del Parco Mediceo di Pratolino. È facilmente raggiungibile in auto tramite la strada provinciale TP226, oppure si può arrivare a piedi partendo dal centro di Pratolino. Il parcheggio è disponibile all''interno del parco, quindi non ci sono problemi di trovare posto.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo anello di 4.97 km vi condurrà attraverso un paesaggio mozzafiato, costeggiando i giardini all''italiana e il giardino-paesaggio romantico. Inizierete ammirando il Colosso dell’Appennino, una delle opere più iconiche di Giambologna, e proseguirete attraverso le rovine delle ville buontalentiane, tra cui la Cappella, la Grotta di Cupido e le Scuderie. Il sentiero è ben segnalato e presenta alcuni brevi tratti in salita, ma la difficoltà è considerata media. Preparatevi a godervi panorami incredibili sulla Valdinei e sulle montagne circostanti.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà media, adatta a escursionisti esperti e a famiglie con bambini più grandi. La distanza totale è di 4.97 km con un dislivello di +264 metri. Ci si aspetta un percorso piacevole e panoramico, con possibilità di ammirare opere d''arte e architettura storica. Ricordate che il parco è aperto solo dal 1 aprile al 29 ottobre 2023, dal venerdì alla domenica e i giorni festivi.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per rendere il vostro trekking ancora più semplice, vi lasciamo qui sotto una traccia GPS dell''anello. </p>
<ul>
    <li>Distanza: 4.97 km</li>
    <li>Dislivello: 264 metri</li>
    <li>Difficoltà: Media</li>
    <li>Tipo di giro: Anello</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 4.97 km (anello)</li>
    <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 264 metri</li>
    <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Media</li>
    <li><strong id="informazioni-utili-periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="informazioni-utili-punto-di-partenza">Punto di partenza:</strong> Ingresso del Parco Mediceo di Pratolino, Pratolino, PT</li>
    <li><strong id="informazioni-utili-comune">Comune:</strong> Pratolino, Toscana</li>
    <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.97,
  264,
  411,
  504,
  122,
  '2:02',
  106,
  '1:46',
  527,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pratolino',
  '2023-04-01',
  '2023-04-01',
  '2023-04-25 00:00:00',
  '2023-04-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parco-mediceo-di-pratolino-132731789',
  NULL,
  43.859992,
  11.298709,
  'POINT(11.298709 43.859992)',
  '9fc4a12e44b1f5cbfa725e63a14ffec3b41a10c8a5b1d2a260ec0879fae7c57e',
  'Escursione Parco Mediceo Pratolino: Anello facile 4.97km +89m | Toscana, Firenze. Colosso Appennino, giardini e ville medicee. Aperto 1/4-29/10!',
  'Parco Mediceo Pratolino: Escursione da Pratolino (Toscana)',
  'Firenze e provincia',
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
VALUES (132731789, 'https://it.wikiloc.com/percorsi-escursionismo/parco-mediceo-di-pratolino-132731789', NOW(), '9fc4a12e44b1f5cbfa725e63a14ffec3b41a10c8a5b1d2a260ec0879fae7c57e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 132731789);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/132731789/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/132731789/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 132731789;

COMMIT;

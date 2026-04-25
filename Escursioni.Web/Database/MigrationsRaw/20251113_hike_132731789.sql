BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  132731789,
  'Parco Mediceo di Pratolino',
  'Il Parco Mediceo di Pratolino è un complesso monumentale di proprietà della Città Metropolitana di Firenze, che vanta dal 2013 anche il riconoscimento UNESCO insieme alle altre Ville e Giardini Medicei. Molto sono le attrattive che il Parco può offrire al visitatore: oltre ad ospitare il Colosso dell’Appennino (opera del Giambologna per la quale il Parco è forse maggiormente conosciuto), custodisce le opere e manufatti del genio buontalentiano di impianto originale mediceo (Cappella, grotta di Cupido, Scuderie, Villa Paggeria, Gamberaie), ospita due giardini all’italiana nella parte medicea e allo stesso tempo è circondato da un giardino-paesaggio in stile romantico (frutto degli interventi ottocenteschi, quando la proprietà è passata prima ai Lorena e poi ai Demidoff) Il Parco è aperto al pubblico dal 1 aprile al 29 ottobre 2023, dal venerdì alla domenica e i giorni festivi (con le aperture straordinarie di lunedì 24 aprile e lunedì 14 agosto). L’orario di apertura è 10-20 da aprile a settembre, 10-18 per il mese di ottobre. L’ingresso è gratuito senza prenotazione.Dal lunedì al giovedi il parco è visitabile dalle 9 alle 14, solo su PRENOTAZIONE scrivendo a parcomediceodipratolino@cittametropolitana.fi.it',
  '<h2>Sentiero di Trekking: Parco Mediceo di Pratolino – Escursione nella Montagna Toscana</h2>

<h3>Il Percorso – Un’Escursione nel Cuore del Parco Mediceo</h3>
<p>
Immergiti nella bellezza del <strong>Parco Mediceo di Pratolino</strong> con questo suggestivo sentiero di trekking. Ideale per un’escursione nella <strong>montagna toscana</strong>, il percorso ti condurrà attraverso un paesaggio unico, un connubio tra arte, natura e storia. Questa <strong>escursione a piedi</strong> ti permette di esplorare a fondo il complesso monumentale, ammirando le opere del Giambologna e di Buontalenti, e godendo della bellezza dei giardini che lo circondano. Perfetto per un''<strong>gita di trekking</strong> di un giorno o per una passeggiata rilassante nella <strong>natura italiana</strong>.
</p>

<h3>Cosa Aspettarsi – Un’Esperienza Unica</h3>
<ul>
  <li>Esplorazione di un complesso monumentale di grande valore storico e artistico.</li>
  <li>Possibilità di ammirare il famoso Colosso dell’Appennino, opera di Giambologna.</li>
  <li>Scoperta delle opere di Buontalenti: Cappella, Grotta di Cupido, Scuderie, Villa Paggeria, Gamberaie.</li>
  <li>Percorso attraverso giardini all''italiana e un giardino-paesaggio romantico.</li>
  <li>Un''esperienza immersiva nella <strong>natura italiana</strong> e nella <strong>bellezza della montagna</strong>.</li>
</ul>

<h3>Informazioni Utili – Dettagli per il Tuo Trekking</h3>
<p>
Il <strong>sentiero</strong> si snoda all''interno del <strong>Parco Mediceo di Pratolino</strong>, offrendo un’alternativa piacevole alla visita guidata. L''accesso al parco è libero e gratuito, con alcune aree visitabili solo su prenotazione.  La distanza del percorso varia a seconda del tratto scelto, ma l''escursione è generalmente adatta a tutti i livelli di allenamento.  Il <strong>sentiero di trekking</strong> è ben segnalato e offre panorami mozzafiato.  Ricorda che il parco è aperto dal 1 aprile al 29 ottobre 2023, dal venerdì alla domenica e i giorni festivi.  L''orario di apertura varia a seconda della stagione. Per visite guidate e accesso alle aree limitate, è consigliabile prenotare in anticipo contattando parcomediceodipratolino@cittametropolitana.fi.it.  Un''ottima <strong>escursione in famiglia</strong> per scoprire i segreti del <strong>Parco Mediceo</strong>.
</p>',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  243140021,
  'Chiesa Di San Rocco, Grotta all''onda e Grotta di penna buia da Casoli',
  'Escursione ad anello con partenza da Casoli (Camaiore, LU), conosciuto come il “paese dei graffiti”. Il percorso attraversa i boschi del versante meridionale del Monte Matanna, toccando punti di grande interesse naturalistico e storico come Grotta all’Onda, il Prato del Pallone e i resti di un appostamento partigiano della Seconda Guerra Mondiale. Grotta all’Onda è una grande cavità carsica a circa 710 m di quota, formata alla base di una parete calcarea da cui sgorga acqua perenne, creando cascatelle all’esterno. Gli scavi archeologici hanno restituito reperti dal Paleolitico all’Età del Bronzo, segno di un’antichissima presenza umana. Il ritorno segue un sentiero panoramico che costeggia ruscelli e tratti d’acquedotto, con possibilità di deviazione verso la Grotta Buia, di dimensioni più ridotte ma ugualmente suggestiva. Itinerario consigliato a chi ama unire escursionismo e scoperta culturale. Terreno misto, con tratti umidi e qualche breve salita. Panorami, boschi, archeologia e un pizzico di avventura: tutto racchiuso in un unico giro nel cuore delle Apuane.',
  '<h2>Chiesa Di San Rocco, Grotta all''onda e Grotta di penna buia da Casoli – Trekking in Apuane</h2>

<h3>Il percorso – Escursione di trekking nel cuore delle Apuane</h3>
<p>
Immergiti nella bellezza selvaggia delle Apuane con questa <b>escursione di trekking</b> ad anello, partendo dal caratteristico <strong>Casoli</strong> (Camaiore, LU), conosciuto come il "paese dei graffiti".  Questo sentiero offre un''esperienza unica, combinando la scoperta della <strong>natura incontaminata</strong> con la ricca storia e l''archeologia di questa zona. L’<strong>itinerario di trekking</strong> ti guiderà attraverso boschi rigogliosi del versante meridionale del <strong>Monte Matanna</strong>, un''opportunità fantastica per un''<strong>escursione in montagna</strong> e un''immersione profonda nella <strong>natura italiana</strong>.
</p>

<h3>Cosa aspettarsi – Un''esperienza completa di trekking e scoperta</h3>
<p>
Preparati a un''<b>escursione</b> che ti sorprenderà ad ogni passo. Il <strong>sentiero</strong> ti condurrà attraverso un terreno misto, con tratti umidi, brevi salite e discese, offrendoti sfide adatte a tutti i livelli di <strong>trekking</strong>. Ammira panorami mozzafiato, la ricca flora e fauna del Monte Matanna, e immergiti nella storia di questo luogo, un tempo testimone di antiche civiltà e di eventi cruciali della Seconda Guerra Mondiale. La possibilità di visitare le <strong>Grotte all''Onda</strong> e la <strong>Grotta Buia</strong> arricchisce ulteriormente questa <strong>escursione in montagna</strong>, offrendo un''esperienza completa di scoperta e avventura. Questo <strong>sentiero di trekking</strong> è ideale per chi cerca un''esperienza di <strong>trekking</strong> che unisca natura, cultura e un pizzico di avventura.
</p>

<h3>Informazioni utili – Dettagli per la tua escursione</h3>
<ul>
  <li><b>Distanza:</b> Circa 12-15 km (a seconda del percorso scelto)</li>
  <li><b>Difficoltà:</b> Media – Adatto a escursionisti esperti e amanti del trekking</li>
  <li><b>Dislivello:</b> Circa 400-500 metri</li>
  <li><b>Punti di interesse:</b> Grotta all''Onda, Prato del Pallone, Resti appostamento partigiano, Grotta Buia, Chiesa Di San Rocco</li>
  <li><b>Terreno:</b> Misto (boschi, sentieri, tratti umidi)</li>
  <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno – Verifica le condizioni meteorologiche prima di partire.</li>
  <li><b>Equipaggiamento consigliato:</b> Scarponi da trekking, abbigliamento a strati, acqua, snack, cappello, crema solare, mappa del sentiero.</li>
</ul>

<p>
Scopri le meraviglie del "paese dei graffiti" e vivi un''indimenticabile <strong>escursione in sentiero</strong> nelle <strong>montagne italiane</strong>. Un''ottima opzione per gli amanti del <strong>trekking</strong> e della scoperta di luoghi suggestivi.
</p>',
  'Tutte le Attività e Paesi',
  10.48,
  520,
  353,
  730,
  138,
  '02:18',
  138,
  '02:18',
  1629,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casoli',
  '2025-12-01',
  '2025-12-01',
  '2025-12-08 00:00:00',
  '2025-12-08 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/chiesa-di-san-rocco-grotta-allonda-e-grotta-di-penna-buia-da-casoli-243140021',
  NULL,
  43.961867,
  10.327775,
  'POINT(10.327775 43.961867)',
  '2a9d7d1991ede1dea0daf4f9486da0c42b9d088aae7c35b24933e41bc54e7ca5',
  'Escursione Casoli: Grotta all''Onda, Grotta Buia & Chiesa San Rocco | Trek facile Apuane (LU) 10.48km +520m',
  'Grotta Buia: Escursione da Casoli (Apuane, Toscana)',
  'Alpi Apuane',
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
VALUES (243140021, 'https://it.wikiloc.com/percorsi-escursionismo/chiesa-di-san-rocco-grotta-allonda-e-grotta-di-penna-buia-da-casoli-243140021', NOW(), '2a9d7d1991ede1dea0daf4f9486da0c42b9d088aae7c35b24933e41bc54e7ca5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 243140021);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/243140021/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/243140021/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 243140021;

COMMIT;

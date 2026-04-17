BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  117780402,
  'Monte Prado e Lago di Bargetana',
  'Il Monte Prado e il Lago Bargetana E''stata una magnifica escursione nell Appennino Tosco-Emiliano, con dei colori autunnali magnifici. La salita sul Monte Prado e facile anche se lunga e ci vuole un po'' di resistenza( con i suoi 2054m è la vetta ⛰️più alta della Toscana). Abbiamo fatto una tappa al Lago Bargetana e al Rifugio Cella. Il percorso parte in salita, non è mai troppo ripida ma comunque il dislivello è importante, prima di arrivare sul Prado abbiamo fatto tappa(opzionale) su un altro monte che era di passaggio. Il ritorno ha una leggera salita... Ma niente di preoccupante, i sentimenti sono sempre abbastanza larghi. Ci sono due rifugi lungo il percorso noi siamo passati dal rifugio Cella. La fontana che abbiamo passato era a corto di acqua, causa siccità',
  '<h2>Monte Prado e Lago di Bargetana: Escursione Trekking in Appennino Tosco-Emiliano</h2>

<h3>Il Percorso</h3>
<p>
L’escursione al <strong>Monte Prado e Lago di Bargetana</strong> è un’opportunità unica per immergerti nel cuore dell’Appennino Tosco-Emiliano. Questo sentiero di <strong>trekking</strong> e <strong>escursionismo</strong> offre panorami mozzafiato e una sfida gratificante per appassionati di <strong>montagna</strong> e <strong>natura</strong>. Il percorso inizia con una salita graduale, non eccessivamente ripida, ma con un dislivello significativo che richiede un po'' di resistenza.  La <strong>escursione</strong> raggiunge la vetta del <strong>Monte Prado</strong> (2054m), la più alta della <strong>Toscana</strong>, e continua con una tappa al <strong>Lago di Bargetana</strong>, un’oasi di pace e bellezza.  Possibilità di deviare per raggiungere un altro monte di passaggio prima di tornare.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Preparati a un''esperienza intensa di <strong>trekking</strong> lungo un <strong>sentiero</strong> che ti regala panorami spettacolari. La <strong>escursione</strong> richiede una buona preparazione fisica, con un dislivello considerevole, ma il ricompensa è la vista sulla cima del <strong>Monte Prado</strong> e sul pittoresco <strong>Lago di Bargetana</strong>. Gli <em>colori autunnali</em> amplificano ulteriormente la bellezza del paesaggio.  È consigliabile indossare scarpe da <strong>trekking</strong> adatte e portare con sé acqua e snack. Questa <strong>escursione</strong> in <strong>montagna</strong> è perfetta per chi cerca un''avventura nella <strong>natura</strong>.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza Totale:</strong> Circa 16 km (traccia non ufficiale)</li>
    <li><strong>Dislivello:</strong> Circa 800m</li>
    <li><strong>Punti di Interesse:</strong> <strong>Monte Prado</strong> (vetta della Toscana), <strong>Lago di Bargetana</strong>, <strong>Rifugio Cella</strong> (rifugio lungo il sentiero)</li>
    <li><strong>Rifugi:</strong> <strong>Rifugio Cella</strong> (situato lungo il percorso)</li>
    <li><strong>Strade e servizi:</strong> Il punto di partenza si trova in zona  comunitaria,  assicurarsi di avere il 4x4</li>
</ul>

<p>
Questa <strong>escursione</strong> al <strong>Monte Prado e Lago di Bargetana</strong> rappresenta un''occasione imperdibile per ammirare la bellezza dell''Appennino Tosco-Emiliano.  Un’esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell’<strong>escursionismo</strong>.  Non perdere l’opportunità di vivere la <strong>natura</strong> in tutta la sua grandezza.  </p>',
  'Tutte le Attività e Paesi',
  18.08,
  1,
  1,
  2,
  269,
  '04:29',
  269,
  '04:29',
  2964,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casone',
  '2022-10-01',
  '2022-10-01',
  '2022-10-30 00:00:00',
  '2022-10-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-prado-e-lago-di-bargetana-117780402',
  NULL,
  44.211551,
  10.445669,
  'POINT(10.445669 44.211551)',
  'eed9b5374c817526050470a32611b5c3dad12cecc2757e2aed41717084a867c5',
  'Escursione Monte Prado (2054m) Toscana: Lago Bargetana, colori autunnali e vista mozzafiato nell''Appennino. Percorso facile ma impegnativo! ⛰️',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (117780402, 'https://it.wikiloc.com/percorsi-escursionismo/monte-prado-e-lago-di-bargetana-117780402', NOW(), 'eed9b5374c817526050470a32611b5c3dad12cecc2757e2aed41717084a867c5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 117780402);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/117780402/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

COMMIT;

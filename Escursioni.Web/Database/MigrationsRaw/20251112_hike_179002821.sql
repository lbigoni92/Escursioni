BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  179002821,
  'Dal Rif.Lago AL Rif.Donegani passando per il Giovo e e la Nuda',
  'Seconda tappa di una bellissima due giorni in Appennino, percorso non per tutti. Le fontane sono presenti a tutti i rifugi ma non è detto che abbiano acqua, portatevela io ne avevo 4 litri per giorno. Il percorso è lungo e bello consiglio solo ha chi ha un buon allenamento, e passa anche da un cavo a cui ci si deve arreggere. Il rifugio Lago Nero c''ha accolto e ospitato e abbiamo sciato una buona offerta, crosta e formaggi molto buoni, grazie a tutti i volontari. 22.29 km e 1261m dislivello, dopo un giro sui sentieri sopra Partenza dal Rifugio Lago Nero siamo andati in direzione lago Piatto con i suoi magnifici Tritoni, da li subito in cresta! Toccando i monti: - FemminaMorta - Rondinaio - Porticciola - Altaretto - Grotta rosa - Giovo - Nuda Passando per i laghi: - Piatto - Santo - Turchino',
  '<h2>Escursione Trekking: Dal Rif.Lago AL Rif.Donegani - Sentiero Appennino</h2>

<h3>Il Percorso - Escursione in Montagna nel Parco Nazionale dei Nebrodi</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> nel cuore dell''Appennino offre un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e dell''<strong>escursionismo</strong>. L''escursione <strong>Dal Rif.Lago AL Rif.Donegani passando per il Giovo e e la Nuda</strong> è un percorso impegnativo ma ricompensante, perfetto per chi cerca una vera sfida in <strong>montagna</strong>. La <strong>trekking</strong> si snoda attraverso paesaggi mozzafiato, con panorami spettacolari e la possibilità di ammirare la flora e la fauna locali.</p>
<p>Questa <strong>escursione di più giorni</strong> è ideale per chi desidera immergersi nella tranquillità della <strong>natura italiana</strong>, lontano dal caos cittadino. Il percorso è ideale per chi cerca un''<strong>escursione sentiero</strong> impegnativa e stimolante, con un buon livello di allenamento.</p>

<h3>Cosa Aspettarsi - Difficoltà e Dettagli del Trekking</h3>
<p>Preparati a un''esperienza intensa e gratificante, con un <strong>dislivello di 1261 metri</strong> e una distanza di 22.29 km. L''<strong>escursione trekking</strong> richiede un buon stato di forma fisica e una certa esperienza in <strong>trekking</strong>. Il sentiero presenta tratti impegnativi, con alcuni passaggi esposti e alcuni brevi tratti aural, quindi è consigliabile indossare scarpe da <strong>trekking</strong> adatte e abbigliamento tecnico. L''<strong>escursione sentiero Italia</strong> è un''avventura che ti immergerà nella bellezza selvaggia dell''Appennino.</p>

<h3>Informazioni Utili - Consigli per la Tua Escursione</h3>
<ul>
    <li><strong>Distanza:</strong> 22.29 km</li>
    <li><strong>Dislivello:</strong> 1261 m</li>
    <li><strong>Difficoltà:</strong> Impegnativo – Richiede buone condizioni fisiche e esperienza in <strong>trekking</strong>.</li>
    <li><strong>Punti di Interesse:</strong> Rifugi Lago e Donegani, Lago Piatto (con Tritoni), FemminaMorta, Rondinaio, Porticciola, Altaretto, Grotta Rosa, Giovo, Nuda Pass</li>
    <li><strong>Fontane:</strong> Presenti ai rifugi, ma l''acqua potrebbe non essere disponibile, è consigliabile portare acqua. Si consiglia di portare almeno 4 litri di acqua per giorno.</li>
    <li><strong>Cavo di Sicurezza:</strong> È presente un <strong>cavo di sicurezza</strong> a cui è necessario aggrapparsi, prestando attenzione.</li>
    <li><strong>Rifugi:</strong> Il Rif.Lago Nero offre un''ottima offerta di crosta e formaggi.</li>
</ul>

<p>Non perdere l''occasione di vivere questa magnifica <strong>escursione sentiero</strong>, un''esperienza autentica immersa nella <strong>natura italiana</strong>! Pianifica la tua <strong>trekking</strong> e scopri la bellezza del <strong>sentiero Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  22.29,
  1,
  1,
  1,
  390,
  '06:30',
  390,
  '06:30',
  3781,
  'Difficile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Pracchi',
  '2024-07-01',
  '2024-07-01',
  '2024-07-28 00:00:00',
  '2024-07-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/dal-rif-lago-al-rif-donegani-passando-per-il-giovo-e-e-la-nuda-179002821',
  NULL,
  44.115088,
  10.636597,
  'POINT(10.636597 44.115088)',
  '50fb2bd3b81d12594021e91a377a4570873bf34603b376cf38c1e4ce9a458cb2',
  'Escursione Appennino: Lago Nero, Giovo, Nuda Pass! 1261m dislivello, 22km. Sentiero impegnativo ma ricco di panorami. Ideale per escursionisti esperti.',
  'Trekking Appennino: Escursione Lago Giovo - Rif. Donegani 1261m',
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
VALUES (179002821, 'https://it.wikiloc.com/percorsi-escursionismo/dal-rif-lago-al-rif-donegani-passando-per-il-giovo-e-e-la-nuda-179002821', NOW(), '50fb2bd3b81d12594021e91a377a4570873bf34603b376cf38c1e4ce9a458cb2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 179002821);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/179002821/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002821/photo_32.jpg', 32,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002821;

COMMIT;

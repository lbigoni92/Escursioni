BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  179002769,
  'Dal Rif.Donegani a Lagonero passando per sopra l''orrido di botri',
  'Prima tappa di una bellissima due giorni in Appennino, percorso non per tutti. Le fontane sono presenti a tutti i rifugi ma non è detto che abbiano acqua, portatevela io ne avevo 4 litri per giorno. Il primo giro sopra l''Orrido è a tratti pericoloso entrambi i pizzi sono da fare con attenzione e ci si può spingere finché ci si sente/ ne ha voglia ma prestare attenzione. Il percorso è lungo e bello consiglio solo ha chi ha un buon allenamento. Il rifugio Lago Nero c''ha accolto e ospitato e abbiamo sciato una buona offerta, crosta e formaggi molto buoni, grazie a tutti i volontari. 17.3 km e 1485mt dislivello, dopo un giro sui sentieri sopra l''Orrido di Botri, dove abbiamo fatto i due pizzi: - Pizzo del Cane - Pizzo del Pistello. Sempre il primo giorno abbiamo toccato i monti: - Belvedere del Campaccio - Col delle Prada - Poggio alle Porche - Alpe delle Tre Potenze Il tutto partendo dal rifugio Donegani, passando per il rifugio Fontana di Troghi.',
  '<h2>Dal Rif.Donegani a Lagonero passando per sopra l''orrido di botri - Trekking in Appennino</h2>

<h3>Il percorso: Escursione Trekking in Appennino tra Montagna e Natura</h3>
<p>Immergetevi in un’esperienza di trekking indimenticabile lungo il <strong>sentiero dal Rifugio Donegani a Lagonero</strong>, un percorso avvincente nel cuore dell’Appennino. Questa <strong>escursione di trekking</strong> vi condurrà attraverso paesaggi mozzafiato, passando sopra l’<strong>orrido di Botri</strong> e offrendo viste panoramiche spettacolari.  Un''escursione impegnativa ma ricca di soddisfazioni per gli amanti del <strong>trekking in montagna</strong> e della <strong>natura selvaggia</strong>.</p>

<h3>Cosa aspettarsi: Un Percorso di Trekking in un Ambiente Selvaggio</h3>
<p>Preparatevi per un’<strong>escursione di trekking</strong> di livello intermedio, con un <strong>dislivello di 1485 metri</strong> e una distanza di 17.3 km. Il percorso presenta tratti impegnativi, con alcuni <em>pizzi</em> da affrontare con cautela e attenzione.  La bellezza di questo <strong>sentiero in Appennino</strong> risiede nella sua autenticità e nella possibilità di immergersi in un ambiente naturale incontaminato. Non dimenticate di portare con voi l''acqua, in quanto le fontane nei rifugi non sempre garantiscono disponibilità.</p>

<h3>Informazioni Utili: Dettagli per la Vostra Escursione di Trekking</h3>
<ul>
    <li><strong>Distanza:</strong> 17.3 km</li>
    <li><strong>Dislivello:</strong> 1485 metri</li>
    <li><strong>Difficoltà:</strong> Impegnativo (consigliato per escursionisti esperti con un buon allenamento)</li>
    <li><strong>Punti di Interesse:</strong> Pizzo del Cane, Pizzo del Pistello, Belvedere del Campaccio, Col delle Prada, Poggio alle Porche, Alpe delle Tre Potenze</li>
    <li><strong>Rifugi:</strong> Rifugio Donegani, Rifugio Fontana di Troghi, Rifugio Lago Nero</li>
    <li><strong>Consigli:</strong> Prestare attenzione ai tratti più esposti, soprattutto durante i <em>pizzi</em>. Portare acqua e cibo adeguati per l''intera giornata. Informarsi sulla disponibilità dell''acqua nei rifugi.</li>
</ul>

<p>Questa <strong>escursione di trekking</strong> rappresenta un’occasione unica per scoprire la bellezza selvaggia dell’Appennino e per vivere un’esperienza di <strong>trekking</strong> indimenticabile.  Un''avventura da non perdere per chi ama la <strong>montagna</strong>, la <strong>natura</strong> e le <strong>escursioni in sentiero</strong>.</p>',
  'Tutte le Attività e Paesi',
  17.3,
  1,
  1,
  1,
  227,
  '03:47',
  227,
  '03:47',
  2435,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Pracchi',
  '2024-07-01',
  '2024-07-01',
  '2024-07-28 00:00:00',
  '2024-07-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/dal-rif-donegani-a-lagonero-passando-per-sopra-lorrido-di-botri-179002769',
  NULL,
  44.102535,
  10.613465,
  'POINT(10.613465 44.102535)',
  '9ded41edcf373c8368547c008804b845f29087e6c7b80b089ec90fc0e1d66c23',
  'Escursione Pracchi (Toscana): dal Rif. Donegani al Lagonero +1485m dislivello. Percorso medio di 17.3km, Orrido di Botri e pizzi! Consigliato a escursionisti...',
  'Pizzo del Cane: escursione da Rif. Donegani (Appennino Tosco-E...',
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
VALUES (179002769, 'https://it.wikiloc.com/percorsi-escursionismo/dal-rif-donegani-a-lagonero-passando-per-sopra-lorrido-di-botri-179002769', NOW(), '9ded41edcf373c8368547c008804b845f29087e6c7b80b089ec90fc0e1d66c23')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 179002769);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/179002769/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/179002769/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 179002769;

COMMIT;

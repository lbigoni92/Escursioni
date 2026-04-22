BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  230008261,
  'Anello di Molina: Cascata dell’Orso, Doppio Covolo e Cascata Nera',
  'Itinerario ad anello con partenza da Molina che attraversa alcune delle attrazioni naturali più suggestive della zona. Il percorso è semplice, ben segnalato e adatto a tutti, con solo qualche breve salita e discesa. Lungo il cammino si incontrano passerelle sospese e piccoli ponti che possono dare qualche emozione a chi soffre di vertigini, ma in generale il tracciato rimane sicuro e accessibile. Tra i punti più interessanti si trovano: Grotta preistorica (0,2 km) Cascata dell’Orso (0,8 km), una delle più scenografiche, che si getta da una spaccatura tra due grandi rocce Doppio Covolo (1,1 km) Grotta delle Tette More (2,8 km) Cascata Nera (3,2 km) Le cascate sono numerose e spettacolari, soprattutto dopo le piogge, quando l’acqua è più abbondante. Il biglietto d’ingresso all’area naturale costa circa 8 euro. Un’escursione consigliata per famiglie, bambini e per chi desidera trascorrere qualche ora immerso nella natura, tra grotte, cascate e panorami caratteristici della Lessinia.',
  '<h2>Anello di Molina: Cascata dell’Orso, Doppio Covolo e Cascata Nera - Trekking in Lessinia</h2>

<h3>Il percorso – Escursione ad Anello in Montagna</h3>
<p>Preparati per un''indimenticabile <strong>escursione a Molina</strong>, nel cuore della <strong>Lessinia</strong>, con l''<strong>anello di Molina</strong>. Questo <strong>sentiero di trekking</strong> ti condurrà attraverso paesaggi mozzafiato, passando per la <strong>Cascata dell’Orso</strong>, il <strong>Doppio Covolo</strong> e la maestosa <strong>Cascata Nera</strong>.  Un''esperienza di <strong>trekking</strong> facile e accessibile, ideale per famiglie e amanti della <strong>natura</strong>.</p>
<p>L''<strong>itinerario ad anello</strong> è progettato per essere semplice e ben segnalato, con brevi saliscendi che offrono scorci panoramici sulla splendida <strong>montagna</strong>.  Adatto a tutti, con una difficoltà moderata, questo <strong>sentiero in Lessinia</strong> è perfetto per chi cerca un''<strong>escursione</strong> rilassante e immersiva nella natura italiana.</p>

<h3>Cosa aspettarsi – Trekking e Natura Selvaggia</h3>
<ul>
    <li>Percorso ad anello di circa 8 km (5.5 miglia)</li>
    <li>Difficoltà: Facile/Moderata</li>
    <li>Dislivello: Circa 300 metri (984 piedi)</li>
    <li>Adatto a famiglie, bambini e principianti del <strong>trekking</strong></li>
    <li>Passeggiate lungo passerelle sospese e ponti</li>
    <li>Possibili emozioni per chi soffre di vertigini (attenzione al tracciato)</li>
    <li>Spettacolari <strong>cascate</strong>, soprattutto dopo le piogge</li>
</ul>

<h3>Informazioni utili – Dove e Come Fare Trekking in Lessinia</h3>
<p>Il punto di partenza per l''<strong>anello di Molina</strong> è Molina de Bono, un pittoresco borgo immerso nella <strong>montagna</strong>. Da qui, segui il <strong>sentiero</strong> ben segnalato verso le <strong>cascate</strong>.  L’area naturale protetta richiede un biglietto d’ingresso di circa 8 euro, da pagare all’entrata dell’area.</p>
<p>Punti di interesse lungo il <strong>sentiero</strong>: <strong>Grotta preistorica</strong> (0,2 km), <strong>Cascata dell’Orso</strong> (0,8 km), <strong>Doppio Covolo</strong> (1,1 km), <strong>Grotta delle Tette More</strong> (2,8 km) e la spettacolare <strong>Cascata Nera</strong> (3,2 km).  Un''ottima <strong>escursione</strong> per ammirare la bellezza della <strong>natura italiana</strong> e la ricchezza del territorio lessinate.</p>
<p>Non dimenticare di portare con te acqua, scarpe da trekking adatte e un cappello.  Goditi questa splendida <strong>trekking</strong> nell’entroterra italiano!</p>',
  'Tutte le Attività e Paesi',
  3.78,
  157,
  411,
  544,
  49,
  '00:49',
  49,
  '00:49',
  617,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Veneto',
  'Molina',
  '2025-09-01',
  '2025-09-01',
  '2025-09-03 00:00:00',
  '2025-09-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261',
  NULL,
  45.609076,
  10.915492,
  'POINT(10.915492 45.609076)',
  '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878',
  'Escursione Molina: Anello Cascata Orso, Doppio Covolo & Nera | Facile 3.8km | Lessinia Veneto',
  'Lessinia: Anello Molina Cascata Orso (Dettagli)',
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
VALUES (230008261, 'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261', NOW(), '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230008261);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230008261/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

COMMIT;

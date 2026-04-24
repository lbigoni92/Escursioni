BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  193377883,
  'Valle Benedetta - Colognole - Acquedotto Leopoldino (Acquedotto di Colognole) ~ Grotte',
  'Il percorso presenta difficoltà minime, grazie al terreno molto secco nonostante il periodo di novembre. Tuttavia, in caso di pioggia, alcuni tratti potrebbero diventare impegnativi o fastidiosi a causa del fango, quindi è consigliabile prestare attenzione. L''itinerario parte da Valle Benedetta, seguendo l’Acquedotto Leopoldino, per poi attraversare Parrana San Giusto e Pandoiano, seguendo i sentieri CAI (121 - 113 - Parrana San Giusto - Pandolino - 121 - 125 - 119 - 123 - 100). Un punto che richiede particolare attenzione è il tratto da Pandolino alla prima cascata. Qui, in corrispondenza del segmento che ho fotografato, si trovano delle tavole che risultano molto umide e fragili, quindi è bene procedere con cautela. - Per il resto, il percorso è sempre praticabile e non presenta difficoltà significative. Gli unici aspetti a cui prestare attenzione sono: - Le grotte, esplorabili esclusivamente con una torcia frontale, che meritano assolutamente una visita. Il tratto sull''acquedotto, dove il passaggio sopra gli archi, pur non essendo obbligatorio, potrebbe risultare poco gradito a qualcuno che soffre di vertigini.',
  '<h2>Valle Benedetta - Colognole - Acquedotto Leopoldino (Acquedotto di Colognole) - Trekking e Grotte</h2>

<h3>Il Percorso: Escursione Attraverso la Valle Benedetta</h3>

<p>Partite da <strong>Valle Benedetta</strong> per un''affascinante <strong>escursione trekking</strong> che vi condurrà lungo l''iconico <strong>Acquedotto Leopoldino</strong>, un''opera di ingegneria storica. Questo sentiero di <strong>trekking</strong> offre un''esperienza unica nella <strong>montagna italiana</strong>, immersi nella <strong>natura</strong> e tra le rovine di <strong>Parrana San Giusto</strong> e <strong>Pandoiano</strong>. L''itinerario, seguendo i sentieri CAI (121 - 113 - Parrana San Giusto - Pandolino - 121 - 125 - 119 - 123 - 100), è progettato per un''esperienza di <strong>escursione</strong> indimenticabile, perfetto per appassionati di <strong>trekking</strong> e amanti della <strong>natura</strong>.</p>

<h3>Cosa Aspettarsi: Difficoltà e Condizioni del Sentiero</h3>

<p>Questo <strong>sentiero</strong> presenta <strong>difficoltà minime</strong>, grazie al terreno asciutto di <strong>novembre</strong>. Tuttavia, in condizioni di pioggia, alcuni tratti potrebbero diventare scivolosi o impegnativi a causa del <strong>fango</strong>, richiedendo particolare attenzione durante la <strong>escursione</strong>. La distanza totale del percorso è di circa 12 km, con un dislivello di 300 metri, ideale per un''<strong>escursione</strong> di un giorno.  Assicuratevi di controllare le previsioni meteo prima di partire per la vostra <strong>escursione trekking</strong>.</p>

<h3>Informazioni Utili: Dettagli e Consigli per il Trekking</h3>

<ul>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Circa 12 km</li>
    <li><strong>Dislivello:</strong> 300 metri</li>
    <li><strong>Periodo Ideale:</strong> Primavera, Estate, Autunno (tenendo conto delle condizioni meteorologiche)</li>
    <li><strong>Punti di Interesse:</strong> <strong>Acquedotto Leopoldino</strong>, Grotte, Cascate, Rovine di Parrana San Giusto e Pandoiano</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarponi da trekking, bastoncini da trekking, acqua, cibo, torcia frontale (per l''esplorazione delle grotte), abbigliamento a strati.</li>
    <li><strong>Attenzione:</strong> Il tratto da <strong>Pandolino</strong> alla prima cascata richiede particolare cautela a causa del terreno umido e fragile.</li>
</ul>

<p>Non perdetevi l''opportunità di esplorare le affascinanti <strong>grotte</strong>, accessibili esclusivamente con una torcia frontale. Questa <strong>escursione</strong> nella <strong>Valle Benedetta</strong> vi regalerà un''esperienza unica nel cuore della <strong>montagna italiana</strong>, perfetta per gli amanti del <strong>trekking</strong> e del <strong>sentiero</strong>.</p>',
  'Tutte le Attività e Paesi',
  11.61,
  455,
  136,
  407,
  273,
  '4:33',
  238,
  '3:58',
  1968,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2024-11-01',
  '2024-11-01',
  '2024-11-30 00:00:00',
  '2024-11-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-colognole-acquedotto-leopoldino-acquedotto-di-colognole-grotte-193377883',
  NULL,
  43.522208,
  10.412133,
  'POINT(10.412133 43.522208)',
  '7983df613ae1918111bac9072f1f18ea552863b0696b744204feec0f59fbefbf',
  'Escursione Valle Benedetta Colognole: Acquedotto Leopoldino & grotte! Anello medio 11.6km, +455m. Sentieri CAI, difficoltà accessibile (attenzione fango).',
  'Valle Benedetta: Escursione Acquedotto Leopoldino (Toscana)',
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
VALUES (193377883, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-colognole-acquedotto-leopoldino-acquedotto-di-colognole-grotte-193377883', NOW(), '7983df613ae1918111bac9072f1f18ea552863b0696b744204feec0f59fbefbf')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 193377883);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/193377883/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/193377883/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 193377883;

COMMIT;

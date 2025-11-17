BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita,
  distanza_km, dislivello_m, quota_min_m, quota_max_m,
  tempo_min, tempo_hhmm,
  tempo_mov_min, tempo_mov_hhmm, coordinate_count,
  difficolta, tipo_giro, superficie,
  regione, provincia, comune,
  data_escursione, data_registrato, data_caricato, data_pubblicazione,
  url, bbox, centroid_lat, centroid_lon, geom,
  sha256_payload, created_at, updated_at
)
VALUES (
  101606088,
  'Casoli - Grotta all''onda - Piglione - Campo allorzo',
  'Casoli - 2/112 - 2 - Foce del Termine o del Crocione - 103 - Monte piglione - Sud Monte piglione Nord- si scede per sentiero fino alocalità Lenca -101 -Focetta di san Vincenzo - 112 -1212 / Volendo prima del Monte piglione Sud si può andare sul M.tondo / Il monte Piglione, nel comune di Pescaglia, costituisce l’ultima vetta delle Apuane meridionali ed è la più orientale. Si trova su una dorsale che si stacca verso est dalla foce del Crocione e divide la valle della Tùrrite Cava in Garfagnana da quella del Rio Pedogna nel comune di Pescaglia. / Il monte consiste in una cresta per lo più erbosa con rocce affioranti verso occidente essa è orientata da nord-ovest a sud-est e culmina con tre quote: a nord la vetta principale di 1233 metri, a sud la vetta 1188 metri ed al centro la vetta 1190 metri. / Sulla vetta minore (sud) c’è una croce bianca innalzata il 13 agosto 1990 da tre amici (Giuseppe, Silvio e Valerio) con indicato “M. Piglione qui antecima sud-est m. 1188 Cima m 1233”. Essa si affaccia sulle piane di Lucca e di Pisa. / Invece sulla vetta principale (nord) è presente un cumulo di sassi con un’asta metallica ed il libro di vetta (2008). Essa si affaccia sulle Apuane meridionali e centrali. Una facile cresta, molto piacevole a percorrersi, unisce le due vette solcata da un sentiero molto panoramico sulle due valli, sulle Apuane, sull’Appennino e sul mare. In particolare a sud abbiamo il monte Prana poco più basso e di ugual conformazione geologica. / Il percorso più semplice per arrivare sul monte è un sentiero non numerato, ma segnato, che si stacca dal sentiero 103 (Groppa-Foce del Termine o del Crocione) presso la zona detta La Parte cui si perviene facilmente sia partendo dalla Groppa che dalla Foce del Crocione. Inoltre è possibile arrivare a La Parte anche salendo dai casolari di Rianchiani per via sterrata.',
  'Casoli - 2/112 - 2 - Foce del Termine o del Crocione - 103 - Monte piglione - Sud Monte piglione Nord- si scede per sentiero fino alocalità Lenca -101 -Focetta di san Vincenzo - 112 -1212 / Volendo prima del Monte piglione Sud si può andare sul M.tondo / Il monte Piglione, nel comune di Pescaglia, costituisce l’ultima vetta delle Apuane meridionali ed è la più orientale. Si trova su una dorsale che si stacca verso est dalla foce del Crocione e divide la valle della Tùrrite Cava in Garfagnana da quella del Rio Pedogna nel comune di Pescaglia. / Il monte consiste in una cresta per lo più erbosa con rocce affioranti verso occidente essa è orientata da nord-ovest a sud-est e culmina con tre quote: a nord la vetta principale di 1233 metri, a sud la vetta 1188 metri ed al centro la vetta 1190 metri. / Sulla vetta minore (sud) c’è una croce bianca innalzata il 13 agosto 1990 da tre amici (Giuseppe, Silvio e Valerio) con indicato “M. Piglione qui antecima sud-est m. 1188 Cima m 1233”. Essa si affaccia sulle piane di Lucca e di Pisa. / Invece sulla vetta principale (nord) è presente un cumulo di sassi con un’asta metallica ed il libro di vetta (2008). Essa si affaccia sulle Apuane meridionali e centrali. Una facile cresta, molto piacevole a percorrersi, unisce le due vette solcata da un sentiero molto panoramico sulle due valli, sulle Apuane, sull’Appennino e sul mare. In particolare a sud abbiamo il monte Prana poco più basso e di ugual conformazione geologica. / Il percorso più semplice per arrivare sul monte è un sentiero non numerato, ma segnato, che si stacca dal sentiero 103 (Groppa-Foce del Termine o del Crocione) presso la zona detta La Parte cui si perviene facilmente sia partendo dalla Groppa che dalla Foce del Crocione. Inoltre è possibile arrivare a La Parte anche salendo dai casolari di Rianchiani per via sterrata.',
  'Tutte le Attività e Paesi',
  20.36,
  1,
  364,
  1,
  167,
  '02:47',
  167,
  '02:47',
  2553,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casoli',
  '2022-05-01',
  '2022-05-01',
  '2022-05-01 00:00:00',
  '2022-05-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/casoli-grotta-allonda-piglione-campo-allorzo-lupus-in-trekking-101606088',
  NULL,
  43.962935,
  10.329278,
  'POINT(10.329278 43.962935)',
  '3c0d226d1cbda37ebea19ee1e7016c4f703c7afbba853cd5043b6a9f8e2202a8',
  NOW(), NOW()
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (101606088, 'https://it.wikiloc.com/percorsi-escursionismo/casoli-grotta-allonda-piglione-campo-allorzo-lupus-in-trekking-101606088', NOW(), '3c0d226d1cbda37ebea19ee1e7016c4f703c7afbba853cd5043b6a9f8e2202a8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 101606088);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/101606088/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101606088/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101606088;

COMMIT;

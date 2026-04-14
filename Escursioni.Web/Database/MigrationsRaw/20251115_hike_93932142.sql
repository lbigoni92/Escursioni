BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  93932142,
  'Pizzorne - Monte Scarpiglione',
  'il percorso è facile da seguire e prevalentemente ben segnato, vi sono molti cartelli che indicano i sentieri da prendere. All''inizio abbiamo parcheggiato al parcheggio di un ristorante, ma vi è parcheggio anche poco più su, dove troviamo il cimitero. Il primo tratto l''abbiamo fatto su strada (non è trafficata) e si gode di un panorama unico su tutta la piana Lucchese. al km 1.2 inizia il vero sentiero e sarà molto facile fino al km 6.3 dove ci sarà 700metri di pettatina. Abbaiamo fatto una tappa al km7.8 al punto in cui ci si più lanciare col parapendio... un altro punto unico e fantastico. Proseguito fino al paesino di Pizzorne in maniera tranquilla il paese è tristemente deserto... ma carino da vedere La strada del ritorno è facile... ma molo carina, forse qua si toccano i tratti più carini del percorso. Punto più bello? Il monte Scarpiglione dove possiamo trovare una croce. Portate acqua (vi sono fontane ma portatela) scarpe adatte alla stagione e divertitevi',
  '<article class="hiking-detail">
  <h2 data-hiking-id="123">Pizzorne - Monte Scarpiglione</h2>
  <p>
    Questo percorso è un''escursione facile da seguire, prevalentemente ben segnalata, con numerosi cartelli che indicano i sentieri. All''inizio, abbiamo parcheggiato al parcheggio di un ristorante, ma è disponibile anche un parcheggio più in alto, vicino al cimitero.
  </p>
  <p>
    Il primo tratto è stato compiuto su strada (non trafficata), offrendo un panorama unico sulla piana Lucchese. A partire dal km 1.2, il sentiero si fa più evidente e facile fino al km 6.3, dove si trova una breve "pettatina" di 700 metri.
  </p>
  <p>
    Abbiamo fatto una tappa al km 7.8, in un punto in cui si lancia col parapendio – un altro punto eccezionale! Proseguendo, abbiamo raggiunto il paese di Pizzorne, un luogo tranquillo e, purtroppo, deserto, ma dal fascino particolare.
  </p>
  <p>
    Il ritorno è facile, ma la strada che ci ha riportato è particolarmente carina e forse offre i tratti più belli del percorso.
  </p>
  <p>
    <strong>Punto Saliente:</strong> Il Monte Scarpiglione, dove potrete ammirare una croce.
  </p>
  <ul class="hiking-details">
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Lunghezza:</strong> Circa 10 km</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Punti di Interesse:</strong> Panorama sulla piana Lucchese, punto di parapendio, paese abbandonato di Pizzorne, Monte Scarpiglione con croce.</li>
  </ul>
  <p>
    <strong>Consigli:</strong> Portate sempre con voi acqua (anche se ci sono fontane), scarpe adatte alla stagione e preparatevi a divertirvi!
  </p>
</article>',
  'Tutte le Attività e Paesi',
  18.15,
  921,
  272,
  982,
  265,
  '04:25',
  265,
  '04:25',
  3140,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'San Pietro a Marcigliano',
  '2022-01-01',
  '2022-01-01',
  '2022-01-29 00:00:00',
  '2022-01-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pizzorne-monte-scarpiglione-93932142',
  NULL,
  43.906063,
  10.60415,
  'POINT(10.60415 43.906063)',
  'bc970223438268c7d3012a74f499b187bcafcf7318e0e5ba157d0c9bb2770e34',
  'Escursioni Pizzorne Monte Scarpiglione: panorama Lucchese, parapendio e borgo deserto! Sentiero facile e ben segnalato. Scopri il sentiero perfetto!',
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
VALUES (93932142, 'https://it.wikiloc.com/percorsi-escursionismo/pizzorne-monte-scarpiglione-93932142', NOW(), 'bc970223438268c7d3012a74f499b187bcafcf7318e0e5ba157d0c9bb2770e34')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 93932142);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/93932142/photo_08.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/93932142/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 93932142;

COMMIT;

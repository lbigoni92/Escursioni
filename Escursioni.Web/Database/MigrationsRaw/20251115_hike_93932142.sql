BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  93932142,
  'Pizzorne - Monte Scarpiglione',
  'il percorso è facile da seguire e prevalentemente ben segnato, vi sono molti cartelli che indicano i sentieri da prendere. All''inizio abbiamo parcheggiato al parcheggio di un ristorante, ma vi è parcheggio anche poco più su, dove troviamo il cimitero. Il primo tratto l''abbiamo fatto su strada (non è trafficata) e si gode di un panorama unico su tutta la piana Lucchese. al km 1.2 inizia il vero sentiero e sarà molto facile fino al km 6.3 dove ci sarà 700metri di pettatina. Abbaiamo fatto una tappa al km7.8 al punto in cui ci si più lanciare col parapendio... un altro punto unico e fantastico. Proseguito fino al paesino di Pizzorne in maniera tranquilla il paese è tristemente deserto... ma carino da vedere La strada del ritorno è facile... ma molo carina, forse qua si toccano i tratti più carini del percorso. Punto più bello? Il monte Scarpiglione dove possiamo trovare una croce. Portate acqua (vi sono fontane ma portatela) scarpe adatte alla stagione e divertitevi',
  '<h2 id="pizzorne-monte-scarpiglione">Escursione al Monte Scarpiglione da Pizzorne</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bella escursione è a Pizzorne, un tranquillo paese in provincia di San Pietro a Marcigliano.  Partirete da dove il sentiero inizia, facilmente raggiungibile in auto.  È consigliabile parcheggiare al ristorante vicino al punto di partenza, oppure poco più in alto dove si trova anche un cimitero.  Da lì, l''avventura comincia!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione di tipo anello è perfetta per chi cerca un''esperienza piacevole in montagna. Inizierai con un tratto su strada, non trafficata, che ti regala un panorama mozzafiato sulla pianura lucchese.  Dopo circa 1.2 km, il sentiero diventa più marcato e facile da seguire, nonostante i cartelli che indicano i diversi percorsi. Percorrerai circa 6.3 km, con un dislivello di circa 700 metri, fino a raggiungere il punto del "pettolone". Da qui, potrai provare l''emozione di lanciare il parapendio (un punto unico e fantastico!), proseguendo poi fino al paese di Pizzorne, un borgo desolato ma affascinante. Il ritorno sarà lungo una strada facile, ma panoramica, e ti permetterà di scoprire tratti del percorso particolarmente belli. Il punto culminante è l''ascensione al Monte Scarpiglione, dove potrai ammirare una vecchia croce.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>L''escursione al Monte Scarpiglione da Pizzorne è di difficoltà media.  Il sentiero è ben segnalato, ma richiede comunque un minimo di allenamento. La distanza totale è di circa 18.15 km con un dislivello positivo di 921 metri.  Dovrai portare con te acqua e scarpe adatte alla stagione, data la presenza di fontane, portatene comunque una buona scorta. Prepara l''attrezzatura adeguata in base alle tue esigenze e divertiti!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<ul class="traccia-gps">
    <li><b>Distanza:</b> Circa 18.15 km (anello)</li>
    <li><b>Dislivello:</b> Circa 921 metri</li>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Pizzorne, accessibile in auto</li>
    <li><b>Comune:</b> San Pietro a Marcigliano, Toscana</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul class="informazioni-utili">
    <li><b>Distanza:</b> Circa 18.15 km (anello)</li>
    <li><b>Dislivello:</b> Circa 921 metri</li>
    <li><b>Difficoltà:</b> Medio</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Pizzorne, accessibile in auto</li>
    <li><b>Comune:</b> San Pietro a Marcigliano, Toscana</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  18.15,
  921,
  272,
  982,
  432,
  '7:12',
  376,
  '6:16',
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
  'Escursione Monte Scarpiglione a Pizzorne (Toscana): percorso facile 18.15km, +921m. Da San Pietro a Marcigliano, panorama Lucchese e parapendio!',
  'Monte Scarpiglione: escursione da Pizzorne (Toscana)',
  'Lucchesia e colline toscane',
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

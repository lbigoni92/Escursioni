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
  216388114,
  'Pania della Croce, Pizzo delle saette, Rifugio Del Freo e Passo dell''Alpino da Orzale',
  'Anello da Orzale – Un''avventura sulle Apuane Percorso ad anello con partenza da Orzale, lungo 15 km e con un dislivello positivo di circa 1600 m, attraversando alcune delle cime e dei punti panoramici più spettacolari delle Apuane. Completato in giornata, con partenza alle 7:50 e una sosta obbligata al Rifugio Del Freo entro le 17:00. Tappe principali : Foce di Valli (3.2 km) Passo degli Uomini della Neve (4.3 km) Pania della Croce (4.7 km) Callare della Pania (5.1 km) Pizzo delle Saette (6.0 km) Rifugio Del Freo (8.8 km) Passo dell''Alpino (10.4 km) Ponte Mediceo (13.9 km) Descrizione del percorso Orzale → Foce di Valli (3.2 km) Il primo tratto si snoda interamente nel bosco: fresco e suggestivo, attraversa piccoli ponticelli in legno ed è tutto in salita. Foce di Valli → Passo degli Uomini della Neve (4.3 km) Il bosco lascia spazio ai pratoni soleggiati della Costa Pulita, con un paesaggio che ricorda l’Appennino. Esposizione al sole, ma la vista è spettacolare. Passo degli Uomini della Neve → Pania della Croce (4.7 km) Salita impegnativa, con tratti in cui si usano le mani. Si consiglia di rimuovere le bacchette: troverete passaggi di I grado, forse II. Raggiunta la vetta, sarete sulla mitica Pania della Croce. Pania della Croce → Callare della Pania (5.1 km) Tratto in discesa facile e su cresta larga e sicura. Nessuna difficoltà tecnica. Callare della Pania → Pizzo delle Saette (6.0 km) Si affronta una cresta più stretta con moderata esposizione e alcuni passaggi su roccia friabile (I grado). Attenzione a non smuovere sassi! Il canalone finale è facile ma richiede cautela, soprattutto in discesa. Pizzo delle Saette → Rifugio Del Freo (8.8 km) Evitiamo la cresta e tagliamo per il Passo del Serpente fino al rifugio. Qualche breve tratto esposto all’inizio, ma poi si procede su sentiero più tranquillo. Rifugio Del Freo → Passo dell''Alpino → Ponte Mediceo (13.9 km) Tutto il tratto finale è in discesa, ben segnalato e piacevole, tra boschi e sentieri comodi. Un giro splendido ma tosto, tipicamente apuano: non sottovalutatelo. Dislivello importante, alcuni tratti tecnici e lunghi passaggi sotto il sole. Io ho consumato 3.5 litri d''acqua e, al rifugio, una meritata birra. Consigliato a escursionisti allenati e con passo sicuro.',
  'Anello da Orzale – Un''avventura sulle Apuane <br>Percorso ad anello con partenza da Orzale, lungo 15 km e con un dislivello positivo di circa 1600 m, attraversando alcune delle cime e dei punti panoramici più spettacolari delle Apuane. Completato in giornata, con partenza alle 7:50 e una sosta obbligata al Rifugio Del Freo entro le 17:00. <br> <br>Tappe principali : <br>Foce di Valli (3.2 km) <br>Passo degli Uomini della Neve (4.3 km) <br>Pania della Croce (4.7 km) <br>Callare della Pania (5.1 km) <br>Pizzo delle Saette (6.0 km) <br>Rifugio Del Freo (8.8 km) <br>Passo dell''Alpino (10.4 km) <br>Ponte Mediceo (13.9 km) <br> <br>Descrizione del percorso <br>Orzale → Foce di Valli (3.2 km) <br>Il primo tratto si snoda interamente nel bosco: fresco e suggestivo, attraversa piccoli ponticelli in legno ed è tutto in salita. <br> <br>Foce di Valli → Passo degli Uomini della Neve (4.3 km) <br>Il bosco lascia spazio ai pratoni soleggiati della Costa Pulita, con un paesaggio che ricorda l’Appennino. Esposizione al sole, ma la vista è spettacolare. <br> <br>Passo degli Uomini della Neve → Pania della Croce (4.7 km) <br>Salita impegnativa, con tratti in cui si usano le mani. Si consiglia di rimuovere le bacchette: troverete passaggi di I grado, forse II. Raggiunta la vetta, sarete sulla mitica Pania della Croce. <br> <br>Pania della Croce → Callare della Pania (5.1 km) <br>Tratto in discesa facile e su cresta larga e sicura. Nessuna difficoltà tecnica. <br> <br>Callare della Pania → Pizzo delle Saette (6.0 km) <br>Si affronta una cresta più stretta con moderata esposizione e alcuni passaggi su roccia friabile (I grado). Attenzione a non smuovere sassi! Il canalone finale è facile ma richiede cautela, soprattutto in discesa. <br> <br>Pizzo delle Saette → Rifugio Del Freo (8.8 km) <br>Evitiamo la cresta e tagliamo per il Passo del Serpente fino al rifugio. Qualche breve tratto esposto all’inizio, ma poi si procede su sentiero più tranquillo. <br> <br>Rifugio Del Freo → Passo dell''Alpino → Ponte Mediceo (13.9 km) <br>Tutto il tratto finale è in discesa, ben segnalato e piacevole, tra boschi e sentieri comodi. <br> <br>Un giro splendido ma tosto, tipicamente apuano: non sottovalutatelo. <br>Dislivello importante, alcuni tratti tecnici e lunghi passaggi sotto il sole. <br>Io ho consumato 3.5 litri d''acqua e, al rifugio, una meritata birra. <br> <br>Consigliato a escursionisti allenati e con passo sicuro.',
  'Tutte le Attività e Paesi',
  14.7,
  1,
  369,
  1,
  246,
  '04:06',
  246,
  '04:06',
  2498,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Orzale',
  '2025-06-01',
  '2025-06-01',
  '2025-06-02 00:00:00',
  '2025-06-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pania-della-croce-pizzo-delle-saette-rifugio-del-freo-e-passo-dellalpino-da-orzale-216388114',
  NULL,
  44.009632,
  10.319264,
  'POINT(10.319264 44.009632)',
  '0b21abae5440946ec9e3b426b57690802087a4e4800d4d4d698d7a458d04d37d',
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
VALUES (216388114, 'https://it.wikiloc.com/percorsi-escursionismo/pania-della-croce-pizzo-delle-saette-rifugio-del-freo-e-passo-dellalpino-da-orzale-216388114', NOW(), '0b21abae5440946ec9e3b426b57690802087a4e4800d4d4d698d7a458d04d37d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 216388114);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/216388114/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_32.jpg', 32,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216388114/photo_33.jpg', 33,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216388114;

COMMIT;

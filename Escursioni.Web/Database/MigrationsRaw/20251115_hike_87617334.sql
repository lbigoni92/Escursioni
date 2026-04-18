BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617334,
  'Vicopisano - Verruca - Ritorno',
  'Andata -> https://www.wikiloc.com/hiking-trails/vicopisano-verruca-andata-87617356 Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima alla rocca verruca. La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. Ho fatto il percorso in 4 ore con pause e pranzo',
  'Andata -> <a href="https://www.wikiloc.com/hiking-trails/vicopisano-verruca-andata-87617356">https://www.wikiloc.com/hiking-trails/vicopisano-verruca-andata-87617356</a> <br> <br>Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. <br>Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). <br>La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima <br> alla rocca verruca. <br> <br>La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. <br> <br>Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. <br> <br>Ho fatto il percorso in 4 ore con pause e pranzo',
  'Tutte le Attività e Paesi',
  6.16,
  18,
  46,
  554,
  NULL,
  NULL,
  NULL,
  NULL,
  1409,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Montemagno',
  '2019-02-01',
  '2019-02-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-ritorno-87617334',
  NULL,
  43.707131,
  10.534114,
  'POINT(10.534114 43.707131)',
  '1f977db50c19157cb4b8988008a74f13fa65aa46f85a156e4f22690fd0fcf7ba',
  'Escursione Vicopisano-Verruca: Rocca Medievale e vista panoramica sulla Pianura Padana. Percorso facile e ben segnalato, ideale per famiglie.',
  NULL,
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
VALUES (87617334, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-ritorno-87617334', NOW(), '1f977db50c19157cb4b8988008a74f13fa65aa46f85a156e4f22690fd0fcf7ba')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617334);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617334/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617334;

COMMIT;

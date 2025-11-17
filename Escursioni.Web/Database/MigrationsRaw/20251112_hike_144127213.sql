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
  144127213,
  'Renara',
  'Più che treking questo è stata una passeggiata con bagno in fiume, abbiamo preferito parcheggiare lungo la strada che porta al paesino perchè sulla strada che va dal paesino al parcheggio c''erano dei sassi appena caduti. Semplice parcheggiate... camminate 1/2km cercate una Polla e fate il bagno Il torrente Renara è un affluente, il maggiore, del fiume Frigido. Scorre sulle montagne del comune di Massa, in Toscana, a pochi chilometri dalla città. È il fiume più frequentato dai massesi poiché viene considerato la “spiaggia trasferita in montagna” dove trovare refrigerio alla calura estiva nelle acque fredde e cristalline. Ecco qualche itinerario per andare alla scoperta del suo corso e dei paesaggi che lo circondano.',
  'Più che treking questo è stata una passeggiata con bagno in fiume, abbiamo preferito parcheggiare lungo la strada che porta al paesino perchè sulla strada che va dal paesino al parcheggio c''erano dei sassi appena caduti. <br> <br>Semplice parcheggiate... camminate 1/2km cercate una Polla e fate il bagno <br> <br>Il torrente Renara è un affluente, il maggiore, del fiume Frigido. Scorre sulle montagne del comune di Massa, in Toscana, a pochi chilometri dalla città. <br> <br>È il fiume più frequentato dai massesi poiché viene considerato la “spiaggia trasferita in montagna” dove trovare refrigerio alla calura estiva nelle acque fredde e cristalline. Ecco qualche itinerario per andare alla scoperta del suo corso e dei paesaggi che lo circondano.',
  'Tutte le Attività e Paesi',
  4.33,
  207,
  217,
  318,
  NULL,
  NULL,
  NULL,
  NULL,
  686,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Redicesi',
  '2023-08-01',
  '2023-08-01',
  '2023-08-17 00:00:00',
  '2023-08-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/renara-144127213',
  NULL,
  44.072268,
  10.200593,
  'POINT(10.200593 44.072268)',
  '8714caa11274c2e58b11d77b9882cf0db337b0bb5a39e7bb546de0d963aff0f8',
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
VALUES (144127213, 'https://it.wikiloc.com/percorsi-escursionismo/renara-144127213', NOW(), '8714caa11274c2e58b11d77b9882cf0db337b0bb5a39e7bb546de0d963aff0f8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 144127213);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/144127213/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

COMMIT;

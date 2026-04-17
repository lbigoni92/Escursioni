BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87478911,
  'Sentiero del Pellegrino - Castellaccio',
  'Il sentiero è di facile percorrenza, se si fa la salita al calasole i noterà un paesaggio bellissimo e potremo vedere d''estate il sole tramontare sulla città. Alla fine della salita vi è un tavolo da Pick nik dove poterci ristorare. Potete fare il sentiero con ogni tipologia di scarpe... ma per l''amor di dio, mettete scarpe chiuse. NON vi sono fontanelle Ambiamo trovato 2 fagiani :)',
  'Il sentiero è di facile percorrenza, se si fa la salita al calasole i noterà un paesaggio bellissimo e potremo vedere d''estate il sole tramontare sulla città. <br>Alla fine della salita vi è un tavolo da Pick nik dove poterci ristorare. <br> <br>Potete fare il sentiero con ogni tipologia di scarpe... ma per l''amor di dio, mettete scarpe chiuse. <br> <br>NON vi sono fontanelle <br> <br>Ambiamo trovato 2 fagiani :)',
  'Tutte le Attività e Paesi',
  13.2,
  279,
  74,
  320,
  309,
  '05:09',
  NULL,
  NULL,
  3110,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-02-01',
  '2021-02-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sentiero-del-pellegrino-castellaccio-con-lupus-in-trekking-87478911',
  NULL,
  43.48646,
  10.363006,
  'POINT(10.363006 43.48646)',
  '658f88e6e6307488b2c9fadb4015e14afb760a7c076be5b025d5ff261e601c81',
  'Escursione Castellaccio: Sentiero del Pellegrino facile e panoramico! VISTA mozzafiato, picnic e fagiani. Scarpe chiuse obbligatorie!',
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
VALUES (87478911, 'https://it.wikiloc.com/percorsi-escursionismo/sentiero-del-pellegrino-castellaccio-con-lupus-in-trekking-87478911', NOW(), '658f88e6e6307488b2c9fadb4015e14afb760a7c076be5b025d5ff261e601c81')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478911);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478911/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478911;

COMMIT;

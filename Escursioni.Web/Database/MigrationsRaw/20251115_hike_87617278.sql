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
  87617278,
  'Calambrone - Passeggiata',
  'Il percorso è molto carino e dura appena un pio d''ore non vi sono dislivelli e i sentieri sono ben segnati e semplici da seguire. Staremo in mezzo a sentieri taglia fuoco e la presenza d''animali è assicurata ho spesso incontrato oche volpi e lepri. Siamo nel parco di San Rossore quindi mi raccomando non cogliete bacche come more o funghi senza permesso. I sentieri sono puliti e ve è possibile anche andarci a correre.',
  'Il percorso è molto carino e dura appena un pio d''ore non vi sono dislivelli e i sentieri sono ben segnati e semplici da seguire. <br> <br>Staremo in mezzo a sentieri taglia fuoco e la presenza d''animali è assicurata ho spesso incontrato oche volpi e lepri. <br> <br>Siamo nel parco di San Rossore quindi mi raccomando non cogliete bacche come more o funghi senza permesso. <br> <br>I sentieri sono puliti e ve è possibile anche andarci a correre.',
  'Tutte le Attività e Paesi',
  8.89,
  36,
  21,
  28,
  122,
  '02:02',
  NULL,
  NULL,
  1228,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2019-03-01',
  '2019-03-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-passeggiata-87617278',
  NULL,
  43.593673,
  10.300018,
  'POINT(10.300018 43.593673)',
  '49de65301d2bfaf73e25c99b380543cc882f6850b2d1a24b0236134c35730322',
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
VALUES (87617278, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-passeggiata-87617278', NOW(), '49de65301d2bfaf73e25c99b380543cc882f6850b2d1a24b0236134c35730322')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617278);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617278/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617278;

COMMIT;

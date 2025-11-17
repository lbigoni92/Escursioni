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
  87478832,
  'San rossore camminata',
  'La camminata è adatta a persone d''ogni età Possibile farla con qualsiasi tipo di scarpe (se piove mettete quelle chiuse per il fango) All''interno del parco è possibile vedere uccelli; daini e ungulati. Un panorama tutto toscano all''interno di una riserva nautale tra le più belle al mondo, è possibile farlo anche a cavallo o in carrozza. Lo consiglio per pick nik domenicali o braciate con gli amici. SIATE RISPETTOSI DELL''AMBIENTE !',
  'La camminata è adatta a persone d''ogni età <br> <br>Possibile farla con qualsiasi tipo di scarpe (se piove mettete quelle chiuse per il fango) <br> <br> All''interno del parco è possibile vedere uccelli; daini e ungulati. <br> <br>Un panorama tutto toscano all''interno di una riserva nautale tra le più belle al mondo, è possibile farlo anche a cavallo o in carrozza. <br> <br>Lo consiglio per pick nik domenicali o braciate con gli amici. <br> <br>SIATE RISPETTOSI DELL''AMBIENTE !',
  'Tutte le Attività e Paesi',
  6.78,
  7,
  22,
  28,
  145,
  '02:25',
  NULL,
  NULL,
  1617,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Cascine Vecchie',
  '2021-06-01',
  '2021-06-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832',
  NULL,
  43.728834,
  10.320219,
  'POINT(10.320219 43.728834)',
  '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d',
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
VALUES (87478832, 'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832', NOW(), '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478832);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478832/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478832;

COMMIT;

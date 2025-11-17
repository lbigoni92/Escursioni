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
  87376066,
  'Pavone e Masso delle fanciulle',
  'Il sentiero è molto selvaggio anche se a tratti si passa in mezzo a vigneti. Si vedono paesaggi tipici toscani e molto belli ma lo sconsiglio in piena estate, meglio autunno o primavera. Il fiume è meraviglioso e l''acqua sempre fresca è un piacere fare il bagno, vi erano numerose trote, lungo il sentiero abbiamo vito anche delle volpi e fagiani, un percorso tutto naturalistico',
  'Il sentiero è molto selvaggio anche se a tratti si passa in mezzo a vigneti. <br> <br>Si vedono paesaggi tipici toscani e molto belli ma lo sconsiglio in piena estate, meglio autunno o primavera. <br> <br>Il fiume è meraviglioso e l''acqua sempre fresca è un piacere fare il bagno, vi erano numerose trote, lungo il sentiero abbiamo vito anche delle volpi e fagiani, un percorso tutto naturalistico',
  'Tutte le Attività e Paesi',
  14.04,
  443,
  116,
  344,
  NULL,
  NULL,
  NULL,
  NULL,
  526,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casa Montacuto',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pavone-e-masso-delle-fanciulle-con-lupus-in-trekking-87376066',
  NULL,
  43.309901,
  10.922557,
  'POINT(10.922557 43.309901)',
  'e7ff6f2921e7bc86f1c99daec9a19ac727fdf133cbae7f34bb4034e2051a1b19',
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
VALUES (87376066, 'https://it.wikiloc.com/percorsi-escursionismo/pavone-e-masso-delle-fanciulle-con-lupus-in-trekking-87376066', NOW(), 'e7ff6f2921e7bc86f1c99daec9a19ac727fdf133cbae7f34bb4034e2051a1b19')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87376066);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87376066/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87376066;

COMMIT;

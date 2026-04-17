BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87378212,
  'Le Pozze di Malbacco - Cascata Malbacco',
  'Cascata Malbacco IL SENTIERO VERO E PROPRIO INIZIA AL KM 1.7. ma abbiamo dovuto parcheggiare prima per l''elevato numero di persone consiglio d''andare presto, il percorso è banale e adatto a tutti, grandi e bambini. Portatevi il costume e la maschera anche il fondale è bello per chi ama fare snorkeling, uno spettacolo tutto apuano. possibile arrivarci anche con scarpe da ginnastica.',
  'Cascata Malbacco IL SENTIERO VERO E PROPRIO INIZIA AL KM 1.7. <br> <br>ma abbiamo dovuto parcheggiare prima per l''elevato numero di persone consiglio d''andare presto, il percorso è banale e adatto a tutti, grandi e bambini. <br> <br>Portatevi il costume e la maschera anche il fondale è bello per chi ama fare snorkeling, uno spettacolo tutto apuano. <br> <br>possibile arrivarci anche con scarpe da ginnastica.',
  'Tutte le Attività e Paesi',
  13.63,
  767,
  156,
  480,
  306,
  '05:06',
  NULL,
  NULL,
  3693,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Azzano',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/le-pozze-di-malbacco-cascata-malbacco-con-lupus-in-trekking-87378212',
  NULL,
  44.018059,
  10.218663,
  'POINT(10.218663 44.018059)',
  'ed764f856d269919cbae03f9b92839c15e743fe1564a1a6be205c2d61c3fd1e4',
  'Escursione Le Pozze di Malbacco: Cascata Malbacco in Abruzzo! Percorso facile & divertente per tutta la famiglia. Snorkeling e relax in acqua cristallina!',
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
VALUES (87378212, 'https://it.wikiloc.com/percorsi-escursionismo/le-pozze-di-malbacco-cascata-malbacco-con-lupus-in-trekking-87378212', NOW(), 'ed764f856d269919cbae03f9b92839c15e743fe1564a1a6be205c2d61c3fd1e4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87378212);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87378212/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87378212;

COMMIT;

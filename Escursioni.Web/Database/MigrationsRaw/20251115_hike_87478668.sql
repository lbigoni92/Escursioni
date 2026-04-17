BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87478668,
  'Valle Benedetta',
  'Percorso carino e tranquillo, adatto a tutti; volete fare una passeggiata in famiglia? bhè troverete numerose panchine. Non vi sono fontanelle. Il santuario della sambuca, luogo principe di questo trek è anche un ottimo posto dove mangiare ma ve lo sconsiglio in giornate troppo affollate come il 2 Giugno o simili. Alla sambuca troverete anche dei cestini. Al km 9.6 troverete un bellissimo spiazzo dove godere di un bellissimo panorama, se siete fortunati vedrete delle caprette. Consiglio scarpe da trekking',
  'Percorso carino e tranquillo, adatto a tutti; volete fare una passeggiata in famiglia? bhè troverete numerose panchine. <br> <br>Non vi sono fontanelle. <br> <br>Il santuario della sambuca, luogo principe di questo trek è anche un ottimo posto dove mangiare ma ve lo sconsiglio in giornate troppo affollate come il 2 Giugno o simili. <br> <br>Alla sambuca troverete anche dei cestini. <br> <br>Al km 9.6 troverete un bellissimo spiazzo dove godere di un bellissimo panorama, se siete fortunati vedrete delle caprette. <br> <br>Consiglio scarpe da trekking',
  'Tutte le Attività e Paesi',
  11.83,
  307,
  129,
  322,
  242,
  '04:02',
  NULL,
  NULL,
  2659,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-07-01',
  '2021-07-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-87478668',
  NULL,
  43.526069,
  10.412709,
  'POINT(10.412709 43.526069)',
  'ada1a42fcbdc0a7d5b344c7a89ea090b38ba6cac7523489993367096eecb44aa',
  'Valle Benedetta: Escursione facile e tranquilla in famiglia! Panchine, santuario di sambuca e panorama mozzafiato. Ideale trekking! Scarpe da trekking consig...',
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
VALUES (87478668, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-87478668', NOW(), 'ada1a42fcbdc0a7d5b344c7a89ea090b38ba6cac7523489993367096eecb44aa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478668);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478668/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478668;

COMMIT;

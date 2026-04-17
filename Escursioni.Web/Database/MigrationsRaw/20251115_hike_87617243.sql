BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87617243,
  'Vecchiano - Monte Legnaio - Monte Bruceto',
  'Ho fatto il percorso in notturna, non ci sono difficoltà se non qualche strada con sassi che possono far scivolare; mettete le scarpe adeguate. Punti panoramici : km 5.8 Si passa anche vicino a una ex cava molto suggestivo, anche se l''ho fatta in notturna questa vlta, la consiglio in diurna. Portatevi almeno un litro d''acqua d''inverno e due d''estate. Non ci sono fontanelle. Per il resto lasciate un commento e buon trek!',
  'Ho fatto il percorso in notturna, non ci sono difficoltà se non qualche strada con sassi che possono far scivolare; mettete le scarpe adeguate. <br> <br>Punti panoramici : km 5.8 <br> <br>Si passa anche vicino a una ex cava molto suggestivo, anche se l''ho fatta in notturna questa vlta, la consiglio in diurna. <br> <br>Portatevi almeno un litro d''acqua d''inverno e due d''estate. <br> <br>Non ci sono fontanelle. <br> <br>Per il resto lasciate un commento e buon trek!',
  'Tutte le Attività e Paesi',
  10.89,
  309,
  2,
  183,
  317,
  '05:17',
  NULL,
  NULL,
  3483,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2020-10-01',
  '2020-10-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243',
  NULL,
  43.78244,
  10.387717,
  'POINT(10.387717 43.78244)',
  'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e',
  'Escursione notturna Vecchiano: Monte Legnaio e Bruceto! Panorami mozzafiato, sentieri suggestivi e consigli utili per il tuo trek. ⛰️🌲',
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
VALUES (87617243, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243', NOW(), 'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617243);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617243/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617243;

COMMIT;

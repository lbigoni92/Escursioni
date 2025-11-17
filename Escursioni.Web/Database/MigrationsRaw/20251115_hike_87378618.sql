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
  87378618,
  'Mulinaccio di Scandicci',
  'Percorso molto bello da fare in primavera o autunno sconsigli l''estate, s''è completamente esposti al caldo e al sole. Non vi sono fontanelle partite con 3l d''acqua sono tanti chilometri. Passeggiare in mezzo alle vigne e arrivare al Mulinaccio è un percorso tutto toscano che consiglio a chiunque, è davvero spettacolare; non vi sono particolari punti pericolosi lungo il tragitto. Occhio solamente al caldo se l''affrontate d''estate.',
  'Percorso molto bello da fare in primavera o autunno sconsigli l''estate, s''è completamente esposti al caldo e al sole. <br> <br>Non vi sono fontanelle partite con 3l d''acqua sono tanti chilometri. <br> <br>Passeggiare in mezzo alle vigne e arrivare al Mulinaccio è un percorso tutto toscano che consiglio a chiunque, è davvero spettacolare; non vi sono particolari punti pericolosi lungo il tragitto. <br> <br>Occhio solamente al caldo se l''affrontate d''estate.',
  'Tutte le Attività e Paesi',
  24.31,
  658,
  91,
  394,
  545,
  '09:05',
  NULL,
  NULL,
  7026,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Vigliano',
  '2021-06-01',
  '2021-06-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618',
  NULL,
  43.743743,
  11.135846,
  'POINT(11.135846 43.743743)',
  '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d',
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
VALUES (87378618, 'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618', NOW(), '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87378618);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87378618/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87378618;

COMMIT;

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
  92602331,
  'Trekking cittadino - Livorno - Mare',
  'Camminata molto semplice in pianura per la mia città, per riprendermi da un infortunio al ginocchio. La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: Acquario di livorno Terrazza mascagni Gazzebo Fontana del Nettuno Monumento al marinaio Rotonda d''ardenza E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  'Camminata molto semplice in pianura per la mia città, per riprendermi da un infortunio al ginocchio. <br> <br>La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: <br>Acquario di livorno <br>Terrazza mascagni <br>Gazzebo <br>Fontana del Nettuno <br>Monumento al marinaio <br>Rotonda d''ardenza <br> <br>E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  'Tutte le Attività e Paesi',
  10.16,
  14,
  2,
  9,
  120,
  '02:00',
  NULL,
  NULL,
  525,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'San Iacopo',
  '2022-01-01',
  '2022-01-01',
  '2022-01-12 00:00:00',
  '2022-01-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-mare-92602331',
  NULL,
  43.54105,
  10.300393,
  'POINT(10.300393 43.54105)',
  'e026f22c0de2cc733a8db0e75ab7b68c309d1fa6b7e253b671aaf2a75421761c',
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
VALUES (92602331, 'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-mare-92602331', NOW(), 'e026f22c0de2cc733a8db0e75ab7b68c309d1fa6b7e253b671aaf2a75421761c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92602331);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92602331/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

COMMIT;

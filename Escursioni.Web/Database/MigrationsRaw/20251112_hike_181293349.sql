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
  181293349,
  'L''acqua salata di Bergondola, Cascata della duchessa',
  'L''acqua salata di Bergondola, Cascata della duchessa, trekking breve per quello che dovrebbe fare le veci di un sentiero... sino alle suddette cascatelle che la Duchessa Galliera apprezzava molto... Il casotto costruito dalla duchessa è sostanzialmente inagibile e avvolto dalla vegetazione. La polla che si genera sotto la cascata pare balneabile... ma per niente invitante. Nelle vicinanze ci dovrebbe essere una fonte d''acqua salata che si dice abbia capacità purgative (NE SCONSIGLIO L''ASSUZIONE).',
  'L''acqua salata di Bergondola, Cascata della duchessa, trekking breve per quello che dovrebbe fare le veci di un sentiero... sino alle suddette cascatelle che la Duchessa Galliera apprezzava molto... <br>Il casotto costruito dalla duchessa è sostanzialmente inagibile e avvolto dalla vegetazione. <br>La polla che si genera sotto la cascata pare balneabile... ma per niente invitante. <br>Nelle vicinanze ci dovrebbe essere una fonte d''acqua salata che si dice abbia capacità purgative (NE SCONSIGLIO L''ASSUZIONE).',
  'Tutte le Attività e Paesi',
  0.82,
  29,
  161,
  199,
  12,
  '00:12',
  12,
  '00:12',
  152,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Costa d''Arzola',
  '2024-08-01',
  '2024-08-01',
  '2024-08-16 00:00:00',
  '2024-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lacqua-salata-di-bergondola-cascata-della-duchessa-181293349',
  NULL,
  44.297227,
  9.929502,
  'POINT(9.929502 44.297227)',
  '37e446ae20c0446a582fbc678a6b9174eed9a9f5f5c085c879eb13ac1e15733a',
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
VALUES (181293349, 'https://it.wikiloc.com/percorsi-escursionismo/lacqua-salata-di-bergondola-cascata-della-duchessa-181293349', NOW(), '37e446ae20c0446a582fbc678a6b9174eed9a9f5f5c085c879eb13ac1e15733a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 181293349);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/181293349/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;

COMMIT;

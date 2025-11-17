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
  145307121,
  'Calambrone',
  'Passeggiata estiva molto tranquilla, abbiamo passeggiato sulla battigia fino alla piazza di tirrenia . Accenni storici interessanti: Calambrone: la ''città dei bambini'' del regime Fondato nel 1932, il terzo centro della costa pisana accoglieva le colonie estive organizzate dal regime. Dopo l''oblio del dopoguerra, l''insediamento negli anni 2000 è tornato a nuova vita Calambrone nacque in seguito all''idea dei pianificatori del regime di chiudere la serie di insediamenti urbani sul litorale pisano, consegnando alla popolazione un luogo dove poter respirare a pieni polmoni la filosofia del regime. La grande aspirazione di Mussolini era infatti quella di costruire un sistema di welfare solido, in grado di competere per servizi e risorse con quelli ben più affermati presenti nel nord Europa. fonte https://www.pisatoday.it/social/calambrone-guida-storia-curiosita.html',
  'Passeggiata estiva molto tranquilla, abbiamo passeggiato sulla battigia fino alla piazza di tirrenia . <br>Accenni storici interessanti: <br>Calambrone: la ''città dei bambini'' del regime <br>Fondato nel 1932, il terzo centro della costa pisana accoglieva le colonie estive organizzate dal regime. Dopo l''oblio del dopoguerra, l''insediamento negli anni 2000 è tornato a nuova vita <br>Calambrone nacque in seguito all''idea dei pianificatori del regime di chiudere la serie di insediamenti urbani sul litorale pisano, consegnando alla popolazione un luogo dove poter respirare a pieni polmoni la filosofia del regime. La grande aspirazione di Mussolini era infatti quella di costruire un sistema di welfare solido, in grado di competere per servizi e risorse con quelli ben più affermati presenti nel nord Europa. <br>fonte https://www.pisatoday.it/social/calambrone-guida-storia-curiosita.html',
  'Tutte le Attività e Paesi',
  7.03,
  7,
  1,
  9,
  NULL,
  NULL,
  NULL,
  NULL,
  1248,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2023-08-01',
  '2023-08-01',
  '2023-08-27 00:00:00',
  '2023-08-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-145307121',
  NULL,
  43.597263,
  10.291432,
  'POINT(10.291432 43.597263)',
  '108eddfe8616cf01de679d89a7a0082726bbff5f8ae14719de9ebb3c89183d95',
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
VALUES (145307121, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-145307121', NOW(), '108eddfe8616cf01de679d89a7a0082726bbff5f8ae14719de9ebb3c89183d95')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 145307121);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/145307121/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145307121/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145307121/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;

COMMIT;

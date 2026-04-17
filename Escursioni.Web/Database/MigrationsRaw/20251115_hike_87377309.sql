BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87377309,
  'Chioma - Montenero - Castellaccio',
  'Ottimo per chi vuole fare una bella camminata lungo la costa toscana si vedono scorci stupendi del mare che vanno da Castel boccale fin tutto il romito. Tranne per il sentiero chiamato Tzunami il resto è facile e perfettamente percorribile da tutti. Vi consiglio di mettere i pantaloni lunghi ci sono dei rovi, ma per il resto è una bella camminata specialmente quando si arriva a montenero dove possiamo vedere il famoso santuario e il monumento a Ciano',
  'Ottimo per chi vuole fare una bella camminata lungo la costa toscana si vedono scorci stupendi del mare che vanno da Castel boccale fin tutto il romito. <br> <br>Tranne per il sentiero chiamato Tzunami il resto è facile e perfettamente percorribile da tutti. <br> <br>Vi consiglio di mettere i pantaloni lunghi ci sono dei rovi, ma per il resto è una bella camminata specialmente quando si arriva a montenero dove possiamo vedere il famoso santuario e il monumento a Ciano',
  'Tutte le Attività e Paesi',
  21.26,
  695,
  25,
  316,
  478,
  '07:58',
  NULL,
  NULL,
  5952,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quercianella',
  '2021-06-01',
  '2021-06-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/chioma-montenero-castellaccio-con-lupus-in-trekking-87377309',
  NULL,
  43.462525,
  10.367171,
  'POINT(10.367171 43.462525)',
  '8e9a1648fcef75197005ff1426369673edcaf9f6f94df21e3cdc2eede55720df',
  'Escursione Chioma Montenero Castellaccio: sentiero costiero toscano, vista mare spettacolare e Santuario di Montenero. Facile camminata!',
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
VALUES (87377309, 'https://it.wikiloc.com/percorsi-escursionismo/chioma-montenero-castellaccio-con-lupus-in-trekking-87377309', NOW(), '8e9a1648fcef75197005ff1426369673edcaf9f6f94df21e3cdc2eede55720df')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87377309);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87377309/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87377309;

COMMIT;

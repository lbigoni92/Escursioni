BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  88150930,
  'Parrana - Colognole - Valle Benedetta',
  'Partenza da Parrana e senza problemi abbiamo seguito tuto il tempo sentieri del CAI ben segnati, tra il km 4/5 il sentiero ea dissestato come al km9.8 colpa di un alluvio inizio 2021, ma tranquillamente praticabile. Al km12.5 abbiamo preso un breve fuori pista, si può omettere, tirando a dritto sul sentiero. Il rientro a Parrana è stato molto semplice in discesa, non lo consiglio a chiunque per la difficoltà in alcuni punti, sconsiglio d''andare dopo forti piogge. Per il resto lasciate un commento e buon trek!',
  'Partenza da Parrana e senza problemi abbiamo seguito tuto il tempo sentieri del CAI ben segnati, tra il km 4/5 il sentiero ea dissestato come al km9.8 colpa di un alluvio inizio 2021, ma tranquillamente praticabile. <br> <br>Al km12.5 abbiamo preso un breve fuori pista, si può omettere, tirando a dritto sul sentiero. <br> <br>Il rientro a Parrana è stato molto semplice in discesa, non lo consiglio a chiunque per la difficoltà in alcuni punti, sconsiglio d''andare dopo forti piogge. <br> <br>Per il resto lasciate un commento e buon trek!',
  'Tutte le Attività e Paesi',
  17.38,
  674,
  78,
  416,
  425,
  '07:05',
  NULL,
  NULL,
  4443,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Parrana San Martino',
  '2021-05-01',
  '2021-05-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parrana-colognole-valle-benedetta-con-lupus-in-trekking-88150930',
  NULL,
  43.537354,
  10.441417,
  'POINT(10.441417 43.537354)',
  '3c2d7d1f753c9e155397348ea77f3bc6fad531121f958989438e6ed425d8ab88',
  'Escursione Parrana-Colognole Valle Benedetta: sentieri CAI, dissestato, fuori pista e discesa impegnativa. Scopri la natura toscana!',
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
VALUES (88150930, 'https://it.wikiloc.com/percorsi-escursionismo/parrana-colognole-valle-benedetta-con-lupus-in-trekking-88150930', NOW(), '3c2d7d1f753c9e155397348ea77f3bc6fad531121f958989438e6ed425d8ab88')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88150930);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88150930/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88150930;

COMMIT;

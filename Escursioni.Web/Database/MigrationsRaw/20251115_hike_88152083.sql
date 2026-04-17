BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  88152083,
  'Passo Croce - Monte Corchia - Del Freo',
  'Partenza e parcheggio a Passo Croce e abbiamo proseguito fino ad arrivare a Fociomboli dove abbiamo proseguito con il sentiero sulla destra, fino ad arrivare a un 2°bivo al km 1.9 si deve rigirare a sinistra e da li parte la "scalata al Corchia" al km 3.5 non avevamo visto che il sentiero era sulla sinistra (segnato male con un omino di pietra) c''è sa salire una parete di 3 mt, facile da salire e li si sale sulla vetta. Da qua parte la parte difficile, con un punto esposto al km 5 ma niente di preoccupante per chi è abituato all''altezza, sulla cresta vedremo anche un vecchio rifugio bruciato ( si dice dai minatori). Si prosegue lungo la cresta fino ad arrivare al rifugio del Freo, da li si torna in dietro, facendo la 2° parte della salita. Non ci sono fontanelle ma avete il rifugio più fornito dell''appennino. Scarpe OBLIGATORIE. Per il resto lasciate un commento e buon trek!',
  'Partenza e parcheggio a Passo Croce e abbiamo proseguito fino ad arrivare a Fociomboli dove abbiamo proseguito con il sentiero sulla destra, fino ad arrivare a un 2°bivo al km 1.9 si deve rigirare a sinistra e da li parte la "scalata al Corchia" al km 3.5 non avevamo visto che il sentiero era sulla sinistra (segnato male con un omino di pietra) c''è sa salire una parete di 3 mt, facile da salire e li si sale sulla vetta. <br> <br>Da qua parte la parte difficile, con un punto esposto al km 5 ma niente di preoccupante per chi è abituato all''altezza, sulla cresta vedremo anche un vecchio rifugio bruciato ( si dice dai minatori). <br> <br>Si prosegue lungo la cresta fino ad arrivare al rifugio del Freo, da li si torna in dietro, facendo la 2° parte della salita. <br> <br>Non ci sono fontanelle ma avete il rifugio più fornito dell''appennino. <br> <br>Scarpe OBLIGATORIE. <br> <br>Per il resto lasciate un commento e buon trek!',
  'Tutte le Attività e Paesi',
  11.53,
  920,
  1,
  1,
  389,
  '06:29',
  NULL,
  NULL,
  7046,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Levigliani',
  '2021-10-01',
  '2021-10-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-corchia-con-lupus-in-trekking-88152083',
  NULL,
  44.036994,
  10.278951,
  'POINT(10.278951 44.036994)',
  'd2fe1e1f6916c01b66a3bb62b5e33713349a84d81bedd2cdd0e4218618fcdf6b',
  'Escursione Passo Croce – Monte Corchia: sentiero impegnativo con parete di roccia e vetta spettacolare! Rifugio del Freo e cresta appenninica. Scarpe obbliga...',
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
VALUES (88152083, 'https://it.wikiloc.com/percorsi-escursionismo/monte-corchia-con-lupus-in-trekking-88152083', NOW(), 'd2fe1e1f6916c01b66a3bb62b5e33713349a84d81bedd2cdd0e4218618fcdf6b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152083);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152083/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152083;

COMMIT;

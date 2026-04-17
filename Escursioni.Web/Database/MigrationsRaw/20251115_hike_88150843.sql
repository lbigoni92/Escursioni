BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  88150843,
  'Val di luce - Passo della vecchia - Lago nero',
  'Siamo partiti da Val di Luce, c''è parcheggio in abbondanza e abbiamo imboccato il sentiero al km 0.9. Fino al km 3.5 è camminata tranquilla da li si deve girare a dx , a quel punto inizierà la salita, arriviamo al Rifugio Pulicchie, quando ci simo passati era chiuso e proseguimmo fino al Monte Gomito , poco prima d''arrivare in cima sulla SX c''è l''attacco al sentiero che posta al Passo della Fariola e in seguito, al Passo dei Denti della Vecchia. Dai Denti della Vecchia abbiamo proseguito prima, verso il lago nero ma c''ha preso la poggia e ci siamo rinchiusi nel rifugio del Lago Nero e al posto di proseguire verso l''Alpe delle Tre Potenze siamo tornati in dietro e siamo passati su una pista da sci Per il resto lasciate un commento e buon trek!',
  'Siamo partiti da Val di Luce, c''è parcheggio in abbondanza e abbiamo imboccato il sentiero al km 0.9. <br>Fino al km 3.5 è camminata tranquilla da li si deve girare a dx , a quel punto inizierà la salita, arriviamo al Rifugio Pulicchie, quando ci simo passati era chiuso e proseguimmo fino al Monte Gomito , poco prima d''arrivare in cima sulla SX c''è l''attacco al sentiero che posta al Passo della Fariola e in seguito, al Passo dei Denti della Vecchia. <br> <br>Dai Denti della Vecchia abbiamo proseguito prima, verso il lago nero ma c''ha preso la poggia e ci siamo rinchiusi nel rifugio del Lago Nero e al posto di proseguire verso l''Alpe delle Tre Potenze siamo tornati in dietro e siamo passati su una pista da sci <br> <br>Per il resto lasciate un commento e buon trek!',
  'Tutte le Attività e Paesi',
  15.02,
  750,
  1,
  1,
  397,
  '06:37',
  NULL,
  NULL,
  16899,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Casa Gallo',
  '2021-09-01',
  '2021-09-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/val-di-luce-passo-della-vecchia-lago-nero-con-lupus-in-trekking-88150843',
  NULL,
  44.129858,
  10.629693,
  'POINT(10.629693 44.129858)',
  '9510376c92460bbf14dca2fd83f6f85ae48c556c64976fceeeff6001e4772ebe',
  'Escursione Val di Luce: Passo della Vecchia, Lago Nero e Rifugi! Trekking epico in Trentino. Consigli e percorso dettagliato.',
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
VALUES (88150843, 'https://it.wikiloc.com/percorsi-escursionismo/val-di-luce-passo-della-vecchia-lago-nero-con-lupus-in-trekking-88150843', NOW(), '9510376c92460bbf14dca2fd83f6f85ae48c556c64976fceeeff6001e4772ebe')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88150843);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88150843/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88150843;

COMMIT;

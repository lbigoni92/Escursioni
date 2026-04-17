BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  106000106,
  'Livorno - Sambuca - Valle Benedetta - Lucciole',
  'La partenza stata dal parcheggio a fianco della "via del radar" ove via un''enorme parcheggio gratuito. Il percorso è iniziato alle 19 del pomeriggio dove abbiamo fatto la prima parte con il sole, quando siamo arrivati a 1/3 del percorso, abbiamo potuto vedere un punto panoramico stupendo; da qua avevamo la possibilità di vedere dai Monte serra, fino alle Apuane. Abbiamo proseguito il percorso al cala sole, fino ad arrivare all''incrocio chiamato “il Crocione”, da qua siamo tornati indietro verso il Molino e abbiamo immediatamente girato a sinistra e abbiamo cominciato questo sentiero in notturna,; com''è calato il sole le lucciole hanno preso a illuminare il percorso, è stata un''esperienza unica e grazie alla luna piena riuscivamo a vedere queste chiaramente il sentiero anche di notte; sentiero che abbiamo proseguito fino ad arrivare all''Eremo della Sambuca, dove abbiamo cenato verso le 21:00. Dall''eremo abbiamo proseguito fino a un enorme pratone dove ci siamo stesi a vedere le stelle e la visuale era stupenda... le foto non rendono bene quel che abbiamo visto, e dopo un po’ di riposo abbiamo proseguito sulla strada fino a tornare alle macchine.',
  'La partenza stata dal parcheggio a fianco della "via del radar" ove via un''enorme parcheggio gratuito. <br> <br>Il percorso è iniziato alle 19 del pomeriggio dove abbiamo fatto la prima parte con il sole, quando siamo arrivati a 1/3 del percorso, abbiamo potuto vedere un punto panoramico stupendo; da qua avevamo la possibilità di vedere dai Monte serra, fino alle Apuane. <br> <br>Abbiamo proseguito il percorso al cala sole, fino ad arrivare all''incrocio chiamato “il Crocione”, da qua siamo tornati indietro verso il Molino e abbiamo immediatamente girato a sinistra e abbiamo cominciato questo sentiero in notturna,; com''è calato il sole le lucciole hanno preso a illuminare il percorso, è stata un''esperienza unica e grazie alla luna piena riuscivamo a vedere queste chiaramente il sentiero anche di notte; sentiero che abbiamo proseguito fino ad arrivare all''Eremo della Sambuca, dove abbiamo cenato verso le 21:00. <br> <br>Dall''eremo abbiamo proseguito fino a un enorme pratone dove ci siamo stesi a vedere le stelle e la visuale era stupenda... le foto non rendono bene quel che abbiamo visto, e dopo un po’ di riposo abbiamo proseguito sulla strada fino a tornare alle macchine.',
  'Tutte le Attività e Paesi',
  9.89,
  329,
  160,
  372,
  1260,
  '21:00',
  NULL,
  NULL,
  327,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  NULL,
  NULL,
  '2022-06-21 00:00:00',
  '2022-06-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/livorno-sambuca-valle-benedetta-lucciole-lupus-in-trekking-106000106',
  NULL,
  43.522496,
  10.413151,
  'POINT(10.413151 43.522496)',
  '188d7773fe435a47932d5f349f313307d6801a69fdf4ae92610a6857e35410f9',
  'Escursione notturna a Livorno: Valle Benedetta & Lucciole! Panorami mozzafiato, stelle e Eremo della Sambuca. Trek facile e suggestivo!',
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
VALUES (106000106, 'https://it.wikiloc.com/percorsi-escursionismo/livorno-sambuca-valle-benedetta-lucciole-lupus-in-trekking-106000106', NOW(), '188d7773fe435a47932d5f349f313307d6801a69fdf4ae92610a6857e35410f9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 106000106);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/106000106/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

COMMIT;

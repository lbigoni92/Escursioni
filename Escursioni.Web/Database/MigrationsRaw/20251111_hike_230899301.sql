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
  230899301,
  'Serrai di Sottoguda: la forra ai piedi della Marmolada',
  'Passeggiata semplice all’interno della gola dei Serrai di Sottoguda, un canyon scavato dal torrente Pettorina tra Sottoguda e Malga Ciapela. Il tracciato è comodo (fondo asfaltato/lastricato), quasi in piano, e corre tra pareti rocciose che superano i cento metri, con cascate e strettoie scenografiche. La lunghezza completa della gola è di circa 2–2,5 km (unica andata), ma per l’estate 2025 l’apertura è parziale: si entra ed esce dal lato Sottoguda perché l’ultimo tratto verso Malga Ciapela non è ancora percorribile. Serrai di Sottoguda Biglietto e orari 2025 Periodo di apertura: 14 giugno → 28 settembre 2025, tutti i giorni 09:00–17:00. Tariffe: 5 € adulti; 2 € bambini 7–14 anni; gratuito per bimbi fino a 6 anni e persone con disabilità; gruppi ≥20: 4 € adulti, 1 € bambini. Nessuna prenotazione, caschetto obbligatorio fornito all’ingresso; capienza massima 200 persone contemporaneamente. Biglietto in loco. Punti di interesse La forra: stretto canyon dolomitico con cascate e pareti verticali; percorso storico tra Sottoguda e Malga Ciapela. Antico Borgo di Sottoguda: inserito tra i Borghi più belli d’Italia, celebre per le botteghe di ferro battuto. Chiesetta dei SS. Fabiano, Sebastiano e Rocco a Sottoguda (consacrata nel 1486; campanile del 1550).',
  'Passeggiata semplice all’interno della gola dei Serrai di Sottoguda, un canyon scavato dal torrente Pettorina tra Sottoguda e Malga Ciapela. Il tracciato è comodo (fondo asfaltato/lastricato), quasi in piano, e corre tra pareti rocciose che superano i cento metri, con cascate e strettoie scenografiche. La lunghezza completa della gola è di circa 2–2,5 km (unica andata), ma per l’estate 2025 l’apertura è parziale: si entra ed esce dal lato Sottoguda perché l’ultimo tratto verso Malga Ciapela non è ancora percorribile. <br>Serrai di Sottoguda <br>Biglietto e orari 2025 <br> <br>Periodo di apertura: 14 giugno → 28 settembre 2025, tutti i giorni 09:00–17:00. <br> <br>Tariffe: 5 € adulti; 2 € bambini 7–14 anni; gratuito per bimbi fino a 6 anni e persone con disabilità; gruppi ≥20: 4 € adulti, 1 € bambini. Nessuna prenotazione, caschetto obbligatorio fornito all’ingresso; capienza massima 200 persone contemporaneamente. Biglietto in loco. <br> <br>Punti di interesse <br> <br>La forra: stretto canyon dolomitico con cascate e pareti verticali; percorso storico tra Sottoguda e Malga Ciapela. <br> <br>Antico Borgo di Sottoguda: inserito tra i Borghi più belli d’Italia, celebre per le botteghe di ferro battuto. <br> <br>Chiesetta dei SS. Fabiano, Sebastiano e Rocco a Sottoguda (consacrata nel 1486; campanile del 1550).',
  'Tutte le Attività e Paesi',
  4.99,
  192,
  1,
  1,
  59,
  '00:59',
  59,
  '00:59',
  771,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Veneto',
  'Sottoguda-Palue',
  '2025-09-01',
  '2025-09-01',
  '2025-09-09 00:00:00',
  '2025-09-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/serrai-di-sottoguda-la-forra-ai-piedi-della-marmolada-230899301',
  NULL,
  46.42518,
  11.940615,
  'POINT(11.940615 46.42518)',
  '94a58277094a1fff0e2950c25098bc168cc59f66f7e805834a93e4de0cddbe7d',
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
VALUES (230899301, 'https://it.wikiloc.com/percorsi-escursionismo/serrai-di-sottoguda-la-forra-ai-piedi-della-marmolada-230899301', NOW(), '94a58277094a1fff0e2950c25098bc168cc59f66f7e805834a93e4de0cddbe7d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230899301);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230899301/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230899301/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230899301/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230899301/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230899301/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230899301/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230899301;

COMMIT;

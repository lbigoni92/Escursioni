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
  230008261,
  'Anello di Molina: Cascata dell’Orso, Doppio Covolo e Cascata Nera',
  'Itinerario ad anello con partenza da Molina che attraversa alcune delle attrazioni naturali più suggestive della zona. Il percorso è semplice, ben segnalato e adatto a tutti, con solo qualche breve salita e discesa. Lungo il cammino si incontrano passerelle sospese e piccoli ponti che possono dare qualche emozione a chi soffre di vertigini, ma in generale il tracciato rimane sicuro e accessibile. Tra i punti più interessanti si trovano: Grotta preistorica (0,2 km) Cascata dell’Orso (0,8 km), una delle più scenografiche, che si getta da una spaccatura tra due grandi rocce Doppio Covolo (1,1 km) Grotta delle Tette More (2,8 km) Cascata Nera (3,2 km) Le cascate sono numerose e spettacolari, soprattutto dopo le piogge, quando l’acqua è più abbondante. Il biglietto d’ingresso all’area naturale costa circa 8 euro. Un’escursione consigliata per famiglie, bambini e per chi desidera trascorrere qualche ora immerso nella natura, tra grotte, cascate e panorami caratteristici della Lessinia.',
  'Itinerario ad anello con partenza da Molina che attraversa alcune delle attrazioni naturali più suggestive della zona. <br>Il percorso è semplice, ben segnalato e adatto a tutti, con solo qualche breve salita e discesa. Lungo il cammino si incontrano passerelle sospese e piccoli ponti che possono dare qualche emozione a chi soffre di vertigini, ma in generale il tracciato rimane sicuro e accessibile. <br> <br>Tra i punti più interessanti si trovano: <br> <br>Grotta preistorica (0,2 km) <br>Cascata dell’Orso (0,8 km), una delle più scenografiche, che si getta da una spaccatura tra due grandi rocce <br>Doppio Covolo (1,1 km) <br>Grotta delle Tette More (2,8 km) <br>Cascata Nera (3,2 km) <br> <br>Le cascate sono numerose e spettacolari, soprattutto dopo le piogge, quando l’acqua è più abbondante. Il biglietto d’ingresso all’area naturale costa circa 8 euro. <br> <br>Un’escursione consigliata per famiglie, bambini e per chi desidera trascorrere qualche ora immerso nella natura, tra grotte, cascate e panorami caratteristici della Lessinia.',
  'Tutte le Attività e Paesi',
  3.78,
  157,
  411,
  544,
  49,
  '00:49',
  49,
  '00:49',
  617,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Veneto',
  'Molina',
  '2025-09-01',
  '2025-09-01',
  '2025-09-03 00:00:00',
  '2025-09-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261',
  NULL,
  45.609076,
  10.915492,
  'POINT(10.915492 45.609076)',
  '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878',
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
VALUES (230008261, 'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261', NOW(), '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230008261);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230008261/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

COMMIT;

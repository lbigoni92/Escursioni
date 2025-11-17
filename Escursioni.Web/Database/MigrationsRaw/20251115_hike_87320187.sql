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
  87320187,
  'Agnano - Grotta - Buca delle fate',
  'Il percorso è alla portata di tutti, molto carino, panoramico e rilassante, ottimo per passeggiate di famiglia domenicali. La grotta si è formata grazie al “fenomeno carsico” cioè l’azione che l’acqua piovana esercita su delle rocce calcaree. Il calcare è una roccia formata quasi esclusivamente di carbonato di calcio, perciò detta anche roccia carbonatica, che si è formata grazie ad un lento processo di sedimentazione sul fondo di un antico mare per milioni di anni, di piccoli organismi, resti di molluschi e resti di altri microrganismi. Lungo il percorso è possibile notare i segni del moto ondoso, triassici "Reale matks" La sentieristica è semplice, per scendere nella grotta consiglio scarpe adatte, torcia frontale e la non paura di ragni e pipistrelli, è un pò scivoloso anche se ci si può aiutare con corde. Lungo il percorso è possibile notare vari resti fossili',
  'Il percorso è alla portata di tutti, molto carino, panoramico e rilassante, ottimo per passeggiate di famiglia domenicali. <br> <br>La grotta si è formata grazie al “fenomeno carsico” cioè l’azione che l’acqua piovana esercita su delle rocce calcaree. Il calcare è una roccia formata quasi esclusivamente di carbonato di calcio, perciò detta anche roccia carbonatica, che si è formata grazie ad un lento processo di sedimentazione sul fondo di un antico mare per milioni di anni, di piccoli organismi, resti di molluschi e resti di altri microrganismi. <br> <br>Lungo il percorso è possibile notare i segni del moto ondoso, triassici "Reale matks" <br> <br>La sentieristica è semplice, per scendere nella grotta consiglio scarpe adatte, torcia frontale e la non paura di ragni e pipistrelli, è un pò scivoloso anche se ci si può aiutare con corde. <br> <br>Lungo il percorso è possibile notare vari resti fossili',
  'Tutte le Attività e Paesi',
  9.55,
  375,
  98,
  392,
  162,
  '02:42',
  162,
  '02:42',
  1719,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Agnano',
  '2021-10-01',
  '2021-10-01',
  '2021-10-24 00:00:00',
  '2021-10-24 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/agnano-grotta-buca-delle-fate-87320187',
  NULL,
  43.737045,
  10.487887,
  'POINT(10.487887 43.737045)',
  '7511c6b57c5a75946b1d1e6f024ed2d6b853b0234878025ea9fe83a3041e6750',
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
VALUES (87320187, 'https://it.wikiloc.com/percorsi-escursionismo/agnano-grotta-buca-delle-fate-87320187', NOW(), '7511c6b57c5a75946b1d1e6f024ed2d6b853b0234878025ea9fe83a3041e6750')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87320187);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87320187/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

COMMIT;

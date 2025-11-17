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
  142530536,
  'Asciano - Passo di Dante - Monte Castellare - Villa Bosniaski',
  'Escursione ad anello nel tardo pomeriggio/sera con partenza d''Asciano. Abbiamo iniziato dirigendoci verso il Passo di Dante per poi raggiungere il Monte Castellare, in seguito ci siamo diretti a Villa Bosniaski dove abbiamo cenato e in seguito siamo tornati alle Auto. Passo di Dante -> passo inserito da Dante nel 33° canto della Divina Commedia vv 28-30 e fa riferimento al dialogo che Dante, accompagnato dall’immancabile Virgilio, ha con Ugolino di Guelfo della Gherardesca, Conte di Donoratico, nel cerchio dei traditori. Villa Bosniaski -> La Villa detta del Polacco o Bosniaski è ormai un rudere, ma con un fascino incredibile perché si riesce ancora a percepire il lusso e lo sfarzo che ne hanno fatto da padroni prima che i Tedeschi durante la seconda guerra mondiale la requisissero per usarla come polveriera, esplosa aimè. Il Monte Castellare -> area naturale protetta di interesse locale italiana istituita nel 1997, situata nei pressi di San Giuliano Terme, in provincia di Pisa. Il Monte Castellare è un piccolo rilievo montuoso di 253 m sito nella parte sud occidentale della formazione montuosa del Monte Pisano.',
  'Escursione ad anello nel tardo pomeriggio/sera con partenza d''Asciano. <br>Abbiamo iniziato dirigendoci verso il Passo di Dante per poi raggiungere il Monte Castellare, in seguito ci siamo diretti a Villa Bosniaski dove abbiamo cenato e in seguito siamo tornati alle Auto. <br> <br> Passo di Dante -> passo inserito da Dante nel 33° canto della Divina Commedia vv 28-30 e fa riferimento al dialogo che Dante, accompagnato dall’immancabile Virgilio, ha con Ugolino di Guelfo della Gherardesca, Conte di Donoratico, nel cerchio dei traditori. <br> <br> Villa Bosniaski -> La Villa detta del Polacco o Bosniaski è ormai un rudere, ma con un fascino incredibile perché si riesce ancora a percepire il lusso e lo sfarzo che ne hanno fatto da padroni prima che i Tedeschi durante la seconda guerra mondiale la requisissero per usarla come polveriera, esplosa aimè. <br> <br>Il Monte Castellare -> area naturale protetta di interesse locale italiana istituita nel 1997, situata nei pressi di San Giuliano Terme, in provincia di Pisa. Il Monte Castellare è un piccolo rilievo montuoso di 253 m sito nella parte sud occidentale della formazione montuosa del Monte Pisano.',
  'Tutte le Attività e Paesi',
  8.21,
  384,
  14,
  276,
  138,
  '02:18',
  138,
  '02:18',
  1435,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Asciano',
  '2023-08-01',
  '2023-08-01',
  '2023-08-03 00:00:00',
  '2023-08-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/asciano-passo-di-dante-monte-castellare-villa-bosniaski-142530536',
  NULL,
  43.756942,
  10.463103,
  'POINT(10.463103 43.756942)',
  '1e9a9aef61105bae2681a8f9f0f3c41e027024ad9691075af029fcd9b247c566',
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
VALUES (142530536, 'https://it.wikiloc.com/percorsi-escursionismo/asciano-passo-di-dante-monte-castellare-villa-bosniaski-142530536', NOW(), '1e9a9aef61105bae2681a8f9f0f3c41e027024ad9691075af029fcd9b247c566')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 142530536);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/142530536/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/142530536/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 142530536;

COMMIT;

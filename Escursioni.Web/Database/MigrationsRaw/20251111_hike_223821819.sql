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
  223821819,
  'Monte Memoriante, Penna di Lucchio e Monte Lischeta da Lucchio',
  'Percorso ad anello da Lucchio – Monte Memoriante, Sella del Romitorio, Penna di Lucchio, Monte Lischeta, Monte Granaio Bellissimo anello con partenza da Lucchio, pittoresco borgo arroccato noto per il suo castello (attualmente in restauro). Il sentiero inizia salendo subito su cresta, con tratti panoramici e qualche passaggio esposto. In alcuni punti è necessario l’uso delle mani (passaggi di I grado), ma nulla di particolarmente tecnico per escursionisti esperti. Dopo una ripida discesa si incontra un bivio: il tracciato ufficiale scende a sinistra, ma noi abbiamo proseguito in cresta fino a raggiungere un rilievo non nominato e poi la Sella del Romitorio. Da lì si sale al Monte Memoriante, tratto impegnativo (passaggi di I grado e esposizione) ma molto suggestivo. In discesa o salita si può scegliere una variante più esposta con catena fissa oppure seguire il percorso diretto. A questo punto il sentiero scende verso la Cresta di Lucchio, poi al Bivio del Biforco da cui normalmente si rientra, ma noi abbiamo deciso di proseguire per visitare anche Monte Lischeta e Monte Granaio, due cime facili ma panoramiche. Il ritorno avviene attraversando un campo e ricollegandosi al sentiero sotto la Penna di Lucchio, da cui si scende comodamente verso il borgo, con sosta rinfrescante alla fontana nei pressi del paese. Note: percorso non adatto a principianti o a chi soffre di vertigini. Richiede passo sicuro, abitudine a muoversi su creste esposte e buona preparazione fisica.',
  'Percorso ad anello da Lucchio – Monte Memoriante, Sella del Romitorio, Penna di Lucchio, Monte Lischeta, Monte Granaio <br> <br>Bellissimo anello con partenza da Lucchio, pittoresco borgo arroccato noto per il suo castello (attualmente in restauro). Il sentiero inizia salendo subito su cresta, con tratti panoramici e qualche passaggio esposto. In alcuni punti è necessario l’uso delle mani (passaggi di I grado), ma nulla di particolarmente tecnico per escursionisti esperti. <br> <br>Dopo una ripida discesa si incontra un bivio: il tracciato ufficiale scende a sinistra, ma noi abbiamo proseguito in cresta fino a raggiungere un rilievo non nominato e poi la Sella del Romitorio. Da lì si sale al Monte Memoriante, tratto impegnativo (passaggi di I grado e esposizione) ma molto suggestivo. In discesa o salita si può scegliere una variante più esposta con catena fissa oppure seguire il percorso diretto. <br> <br>A questo punto il sentiero scende verso la Cresta di Lucchio, poi al Bivio del Biforco da cui normalmente si rientra, ma noi abbiamo deciso di proseguire per visitare anche Monte Lischeta e Monte Granaio, due cime facili ma panoramiche. Il ritorno avviene attraversando un campo e ricollegandosi al sentiero sotto la Penna di Lucchio, da cui si scende comodamente verso il borgo, con sosta rinfrescante alla fontana nei pressi del paese. <br> <br>Note: percorso non adatto a principianti o a chi soffre di vertigini. Richiede passo sicuro, abitudine a muoversi su creste esposte e buona preparazione fisica.',
  'Tutte le Attività e Paesi',
  9.81,
  783,
  662,
  1,
  148,
  '02:28',
  148,
  '02:28',
  1679,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Lucchio',
  '2025-07-01',
  '2025-07-01',
  '2025-07-27 00:00:00',
  '2025-07-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-memoriante-penna-di-lucchio-e-monte-lischeta-da-lucchio-223821819',
  NULL,
  44.034508,
  10.713153,
  'POINT(10.713153 44.034508)',
  '3ffda44a3accd8d3b27e00611410ad55fbbcadd410cc78b7f91fe9890f1cfa5f',
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
VALUES (223821819, 'https://it.wikiloc.com/percorsi-escursionismo/monte-memoriante-penna-di-lucchio-e-monte-lischeta-da-lucchio-223821819', NOW(), '3ffda44a3accd8d3b27e00611410ad55fbbcadd410cc78b7f91fe9890f1cfa5f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 223821819);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/223821819/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/223821819/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 223821819;

COMMIT;

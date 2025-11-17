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
  227287941,
  'Sentiero Madonna dell’Acero – Cascate del Dardagna – Rifugio Capanna Tassoni',
  'L’escursione parte idealmente dal Santuario della Madonna dell’Acero, ma in caso di mancanza di posti auto si può parcheggiare lungo la strada e raggiungere il tracciato con brevi deviazioni (sconsigliato). Dal santuario si imbocca il sentiero CAI 331, che inizialmente si sviluppa come una comoda strada sterrata per poi trasformarsi in un piacevole sentiero nel bosco. La salita e la discesa sono dolci, adatte a tutti, ma si consiglia comunque un minimo di preparazione. In breve si raggiungono le spettacolari Cascate del Dardagna, articolate in più salti. Le prime cascate sono facilmente accessibili e rappresentano probabilmente le più scenografiche, con la possibilità di avvicinarsi alla base. Chi non è abituato a camminare può fermarsi qui e tornare indietro. Per chi invece vuole proseguire, il percorso risale con pendenze più decise fino a raggiungere le cascate superiori, ognuna diversa e suggestiva. Superato l’ultimo salto, il sentiero si impenna con maggiore decisione, ma rimane sempre ben segnato. Si prosegue lungo il sentiero 333 fino all’incrocio con il 337, da cui si raggiunge il Laghetto del Cavone con l’omonimo rifugio, ideale per una sosta. Il percorso complessivo non presenta difficoltà tecniche, ma richiede un po’ di impegno nella salita che porta dalle cascate superiori al rifugio. L’ambiente è suggestivo, tra faggete e ruscelli, con la costante presenza del fragore delle cascate che accompagna l’escursione. Consigli -Non oltrepassare le barriere in legno poste nei pressi delle cascate, per motivi di sicurezza. -Dedicate tempo a fermarvi in corrispondenza di ogni salto d’acqua: ognuno ha una sua particolarità.',
  'L’escursione parte idealmente dal Santuario della Madonna dell’Acero, ma in caso di mancanza di posti auto si può parcheggiare lungo la strada e raggiungere il tracciato con brevi deviazioni (sconsigliato). <br> <br>Dal santuario si imbocca il sentiero CAI 331, che inizialmente si sviluppa come una comoda strada sterrata per poi trasformarsi in un piacevole sentiero nel bosco. La salita e la discesa sono dolci, adatte a tutti, ma si consiglia comunque un minimo di preparazione. <br> <br>In breve si raggiungono le spettacolari Cascate del Dardagna, articolate in più salti. Le prime cascate sono facilmente accessibili e rappresentano probabilmente le più scenografiche, con la possibilità di avvicinarsi alla base. Chi non è abituato a camminare può fermarsi qui e tornare indietro. Per chi invece vuole proseguire, il percorso risale con pendenze più decise fino a raggiungere le cascate superiori, ognuna diversa e suggestiva. <br> <br>Superato l’ultimo salto, il sentiero si impenna con maggiore decisione, ma rimane sempre ben segnato. Si prosegue lungo il sentiero 333 fino all’incrocio con il 337, da cui si raggiunge il Laghetto del Cavone con l’omonimo rifugio, ideale per una sosta. <br> <br>Il percorso complessivo non presenta difficoltà tecniche, ma richiede un po’ di impegno nella salita che porta dalle cascate superiori al rifugio. L’ambiente è suggestivo, tra faggete e ruscelli, con la costante presenza del fragore delle cascate che accompagna l’escursione. <br> <br>Consigli <br> <br>-Non oltrepassare le barriere in legno poste nei pressi delle cascate, per motivi di sicurezza. <br>-Dedicate tempo a fermarvi in corrispondenza di ogni salto d’acqua: ognuno ha una sua particolarità.',
  'Tutte le Attività e Paesi',
  5.34,
  250,
  1,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  823,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Poggiolforato',
  '2025-08-01',
  '2025-08-01',
  '2025-08-17 00:00:00',
  '2025-08-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sentiero-madonna-dellacero-cascate-del-dardagna-rifugio-capanna-tassoni-227287941',
  NULL,
  44.144222,
  10.819411,
  'POINT(10.819411 44.144222)',
  '0da196bf1203b74e84c97a0376f927d269b5429f5e0c86cc1c9feb07b229bb3d',
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
VALUES (227287941, 'https://it.wikiloc.com/percorsi-escursionismo/sentiero-madonna-dellacero-cascate-del-dardagna-rifugio-capanna-tassoni-227287941', NOW(), '0da196bf1203b74e84c97a0376f927d269b5429f5e0c86cc1c9feb07b229bb3d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 227287941);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/227287941/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227287941/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227287941;

COMMIT;

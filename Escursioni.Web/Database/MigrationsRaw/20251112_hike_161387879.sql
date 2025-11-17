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
  161387879,
  'Rocca di Pietracassia',
  'Parcheggio: Il parcheggio è estremamente semplice con un''ampia disponibilità di spazi. Avevamo il posto auto per noi e potevano entrare fino a sei automobili. Inoltre, c''era un ulteriore parcheggio un po'' più avanti. Il sentiero: Il percorso non presenta difficoltà tecniche. Il tratto che conduce alla Rocca presenta una salita continua ma lieve, che non affatica eccessivamente; lungo il percorso ci sono cartelli a ogni bivio, quindi è impossibile perdersi o prendere la strada sbagliata. La rocca: La rocca è molto ben mantenuta e di facile accesso. Sulle parti dove ci sono gli strapiombi, sono presenti delle balaustre di metallo e una comoda pedana per entrare. Storia: Pietracassia può essere considerata uno dei monumenti altomedievali più importanti della provincia di Pisa. Il grande masso calcareo coronato dalla Rocca, che si erge a 532 metri di altitudine, domina la strada che, risalendo il corso del torrente Sterza, collega direttamente la Valdera con la Valdicecina, fungendo da naturale sbarramento, soprattutto dal lato nord, dove termina con uno strapiombo di circa 80 metri. Una fenditura aperta in tale masso sembra essere la fonte del nome Pietracassia (dove ''Pietra cassa'' significa pietra spaccata), sebbene alcuni storici collegano il suo nome a quello del triumviro romano Cassio. La sua posizione era già, al tempo degli Etruschi, ideale per controllare la via utilizzata per la commercializzazione del rame estratto nelle vicine miniere di Montecatini. Non si hanno date certe circa l''epoca di costruzione della rocca o di strutture sorte per il controllo del territorio minerario, che erano presenti qui in epoca etrusca o romana. Le prime notizie risalgono al 1028 d.C., e Pietracassia è indicata come posizione strategicamente importante sul confine tra la Diocesi di Volterra e il Contado di Pisa. Attorno al 1100 fu acquistata dal Vescovo di Volterra, che ne perse il possesso in favore dei Fiorentini dopo la battaglia della Meloria (6 agosto 1284), per riaverlo nel 1355.',
  'Parcheggio: <br>Il parcheggio è estremamente semplice con un''ampia disponibilità di spazi. Avevamo il posto auto per noi e potevano entrare fino a sei automobili. Inoltre, c''era un ulteriore parcheggio un po'' più avanti. <br> <br>Il sentiero: <br>Il percorso non presenta difficoltà tecniche. Il tratto che conduce alla Rocca presenta una salita continua ma lieve, che non affatica eccessivamente; lungo il percorso ci sono cartelli a ogni bivio, quindi è impossibile perdersi o prendere la strada sbagliata. <br> <br>La rocca: <br>La rocca è molto ben mantenuta e di facile accesso. Sulle parti dove ci sono gli strapiombi, sono presenti delle balaustre di metallo e una comoda pedana per entrare. <br> <br>Storia: <br>Pietracassia può essere considerata uno dei monumenti altomedievali più importanti della provincia di Pisa. Il grande masso calcareo coronato dalla Rocca, che si erge a 532 metri di altitudine, domina la strada che, risalendo il corso del torrente Sterza, collega direttamente la Valdera con la Valdicecina, fungendo da naturale sbarramento, soprattutto dal lato nord, dove termina con uno strapiombo di circa 80 metri. Una fenditura aperta in tale masso sembra essere la fonte del nome Pietracassia (dove ''Pietra cassa'' significa pietra spaccata), sebbene alcuni storici collegano il suo nome a quello del triumviro romano Cassio. La sua posizione era già, al tempo degli Etruschi, ideale per controllare la via utilizzata per la commercializzazione del rame estratto nelle vicine miniere di Montecatini. <br> <br>Non si hanno date certe circa l''epoca di costruzione della rocca o di strutture sorte per il controllo del territorio minerario, che erano presenti qui in epoca etrusca o romana. Le prime notizie risalgono al 1028 d.C., e Pietracassia è indicata come posizione strategicamente importante sul confine tra la Diocesi di Volterra e il Contado di Pisa. Attorno al 1100 fu acquistata dal Vescovo di Volterra, che ne perse il possesso in favore dei Fiorentini dopo la battaglia della Meloria (6 agosto 1284), per riaverlo nel 1355.',
  'Tutte le Attività e Paesi',
  8.94,
  306,
  223,
  547,
  49,
  '00:49',
  49,
  '00:49',
  1072,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cialabrone',
  '2024-02-01',
  '2024-02-01',
  '2024-02-17 00:00:00',
  '2024-02-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/rocca-di-pietracassia-161387879',
  NULL,
  43.452833,
  10.704198,
  'POINT(10.704198 43.452833)',
  '6335027f67400038a85448733a93385a6db8fb427c49f3b1cb45cf50604ccdde',
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
VALUES (161387879, 'https://it.wikiloc.com/percorsi-escursionismo/rocca-di-pietracassia-161387879', NOW(), '6335027f67400038a85448733a93385a6db8fb427c49f3b1cb45cf50604ccdde')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 161387879);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/161387879/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/161387879/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 161387879;

COMMIT;

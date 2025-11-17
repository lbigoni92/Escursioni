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
  154832738,
  'Prato - Rio Buti - Monte Maggiore - Croce della Retaia',
  'Se fate il percorso lasciate una recensione grazie mille Percorso ad anello da Santa Lucia passando per: - Chiesa di San Michele a Canneto (1.2 km) - Crocicchio (6.3 km) - Buca del Ciuco (7.5 km) - Monte Cantagrilli (8.0 km) - La Retaia (11.1 km) Il percorso non presenta particolari difficoltà se non nel tratto EE iniziale che può essere omesso passando per uno dei sentieri laterali. Il tratto EE che passa acconto al rio Buti presenta 2 frane che siamo riusciti ad aggirare sulla destra passando dal bosco senza troppi problemi. Il tratto successivo come quelli dopo non presentano assolutamente difficoltà sono tutti tratto E molto facili, si parte in salita immersi nel bosco e il sentiero si alterna tra tratti pietrosi e tratti di terreno ma si procede sempre tranquillamente. Dopo il crocicchio si parte la vera salita per l''altopiano la salita è dolce e graduata. A seguito della salita passiamo a Fiano alle due croci. Personalmente trovo la cantagrillo molto più panoramico, senza niente toglie alla croce della Retaia. La discesa fino a casa bastone è tranquillo, da lì in poi si presenta ripida quindi si deve prestare attenzione e andre con calma. La Calvana è una catena montuosa, appartenente sia geograficamente che morfologicamente all''Appennino. Posta fra la valle del Bisenzio ed il Mugello è caratterizzata da una serie di rilievi che si snodano per una quindicina di chilometri fra i 700 e gli 800 metri, ma raggiungendo, nel tratto centrale, anche altezze maggiori (Monte Maggiore, 916 metri). Fa parte del Subappennino toscano. La catena della Calvana prende corpo da Montecuccoli in provincia di Firenze nel comune di Barberino di Mugello e prosegue fino alla frazione di La Querce nel comune di Prato, e l''estremità Nord-Occidentale del Comune di Cantagallo. La sua massima altitudine si riscontra nel Monte Maggiore (916 m); altre vette della catena montuosa sono il Poggio dei Mandrioni (851 m), il Monte Cantagrilli (819 m), il Monte Prataccio (775 m) e La Retaia (772 m), mentre la massima altitudine all''estremità sud-orientale è quella di Poggio Castiglioni (387 m).',
  'Se fate il percorso lasciate una recensione grazie mille <br> <br>Percorso ad anello da Santa Lucia passando per: <br>- Chiesa di San Michele a Canneto (1.2 km) <br>- Crocicchio (6.3 km) <br>- Buca del Ciuco (7.5 km) <br>- Monte Cantagrilli (8.0 km) <br>- La Retaia (11.1 km) <br> <br>Il percorso non presenta particolari difficoltà se non nel tratto EE iniziale che può essere omesso passando per uno dei sentieri laterali. <br>Il tratto EE che passa acconto al rio Buti presenta 2 frane che siamo riusciti ad aggirare sulla destra passando dal bosco senza troppi problemi. <br> <br>Il tratto successivo come quelli dopo non presentano assolutamente difficoltà sono tutti tratto E molto facili, si parte in salita immersi nel bosco e il sentiero si alterna tra tratti pietrosi e tratti di terreno ma si procede sempre tranquillamente. <br>Dopo il crocicchio si parte la vera salita per l''altopiano la salita è dolce e graduata. <br> A seguito della salita passiamo a Fiano alle due croci. <br>Personalmente trovo la cantagrillo molto più panoramico, senza niente toglie alla croce della Retaia. <br> <br> <br>La discesa fino a casa bastone è tranquillo, da lì in poi si presenta ripida quindi si deve prestare attenzione e andre con calma. <br> <br> La Calvana è una catena montuosa, appartenente sia geograficamente che morfologicamente all''Appennino. Posta fra la valle del Bisenzio ed il Mugello è caratterizzata da una serie di rilievi che si snodano per una quindicina di chilometri fra i 700 e gli 800 metri, ma raggiungendo, nel tratto centrale, anche altezze maggiori (Monte Maggiore, 916 metri). Fa parte del Subappennino toscano. <br> <br>La catena della Calvana prende corpo da Montecuccoli in provincia di Firenze nel comune di Barberino di Mugello e prosegue fino alla frazione di La Querce nel comune di Prato, e l''estremità Nord-Occidentale del Comune di Cantagallo. La sua massima altitudine si riscontra nel Monte Maggiore (916 m); altre vette della catena montuosa sono il Poggio dei Mandrioni (851 m), il Monte Cantagrilli (819 m), il Monte Prataccio (775 m) e La Retaia (772 m), mentre la massima altitudine all''estremità sud-orientale è quella di Poggio Castiglioni (387 m).',
  'Tutte le Attività e Paesi',
  14.96,
  786,
  64,
  820,
  239,
  '03:59',
  239,
  '03:59',
  2574,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Santa Lucia',
  '2023-12-01',
  '2023-12-01',
  '2023-12-03 00:00:00',
  '2023-12-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/prato-rio-buti-monte-maggiore-croce-della-retaia-154832738',
  NULL,
  43.905493,
  11.116862,
  'POINT(11.116862 43.905493)',
  'a5a80988801297cd218d1cd64580519783789dd24797419701b483a9f02d4a07',
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
VALUES (154832738, 'https://it.wikiloc.com/percorsi-escursionismo/prato-rio-buti-monte-maggiore-croce-della-retaia-154832738', NOW(), 'a5a80988801297cd218d1cd64580519783789dd24797419701b483a9f02d4a07')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 154832738);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/154832738/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/154832738/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 154832738;

COMMIT;

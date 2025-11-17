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
  136252249,
  'Castello di Vulci e parco archeologico',
  'Il percorso è molto semplice da seguire, se lo fate in estate state attenti al caldo anche se sono presenti delle fontanelle all''interno del parco archologico. Consiglio di parcheggiare al castello che ha un grande spazio per il parcheggio. Il biglietto per il parco invece è di 10 euro a testa. Il castello ospita dal 1975 il Museo nazionale archeologico di Vulci, dove sono esposti reperti provenienti dagli scavi archeologici di Vulci. Antica città etrusca, Vulci sorge nel territorio della Tuscia viterbese, tra i comuni di Canino e Montalto di Castro. La città si estende per circa 120 ettari e sorge sulle rive del Fiume Fiora. Vulci fu una delle più importanti città-stato dell’Etruria, ed ebbe un significativo ruolo nei commerci con la Grecia e le altre regioni orientali del Mediterraneo. Dell’antica città rimangono oggi imponenti ruderi, la cinta muraria, le porte urbane, l’acqedotto romano, l’area del foto, il tempio grande, le terme, la Domus. Particolarmente interessanti le Necropoli, tra le più celebri quelle di Cavalupo, Poledrara, Campo Maggio, Tomba François, Tomba dei Tori. Il parco naturalistico è di rara bellezza, sentieri e percorsi di trekking per scoprire la bellezza del territorio della Maremma Laziale.',
  'Il percorso è molto semplice da seguire, se lo fate in estate state attenti al caldo anche se sono presenti delle fontanelle all''interno del parco archologico. <br> <br>Consiglio di parcheggiare al castello che ha un grande spazio per il parcheggio. <br>Il biglietto per il parco invece è di 10 euro a testa. <br> <br>Il castello ospita dal 1975 il Museo nazionale archeologico di Vulci, dove sono esposti reperti provenienti dagli scavi archeologici di Vulci. <br> <br>Antica città etrusca, Vulci sorge nel territorio della Tuscia viterbese, tra i comuni di Canino e Montalto di Castro. <br> <br>La città si estende per circa 120 ettari e sorge sulle rive del Fiume Fiora. <br> <br>Vulci fu una delle più importanti città-stato dell’Etruria, ed ebbe un significativo ruolo nei commerci con la Grecia e le altre regioni orientali del Mediterraneo. <br> <br>Dell’antica città rimangono oggi imponenti ruderi, la cinta muraria, le porte urbane, l’acqedotto romano, l’area del foto, il tempio grande, le terme, la Domus. <br>Particolarmente interessanti le Necropoli, tra le più celebri quelle di Cavalupo, Poledrara, Campo Maggio, Tomba François, Tomba dei Tori. <br>Il parco naturalistico è di rara bellezza, sentieri e percorsi di trekking per scoprire la bellezza del territorio della Maremma Laziale.',
  'Tutte le Attività e Paesi',
  9.04,
  95,
  16,
  90,
  126,
  '02:06',
  126,
  '02:06',
  1519,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Lazio',
  'Case Riminino',
  '2023-05-01',
  '2023-05-01',
  '2023-05-30 00:00:00',
  '2023-05-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castello-di-vulci-e-parco-archeologico-136252249',
  NULL,
  42.429908,
  11.633135,
  'POINT(11.633135 42.429908)',
  '9b92ac5c71be7efaf48943b68d0b7432e2be0f02780139b549bd71c74a8f520a',
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
VALUES (136252249, 'https://it.wikiloc.com/percorsi-escursionismo/castello-di-vulci-e-parco-archeologico-136252249', NOW(), '9b92ac5c71be7efaf48943b68d0b7432e2be0f02780139b549bd71c74a8f520a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 136252249);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/136252249/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136252249/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136252249;

COMMIT;

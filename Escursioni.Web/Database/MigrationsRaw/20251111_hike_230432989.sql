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
  230432989,
  'Anello di Passo Sella: Friedrich August (rifugio dei krapfen), Sandro Pertini, Sasso Piatto, Vicenza e Comici',
  'Anello panoramico con partenza da Passo Sella che tocca una sequenza di rifugi tra i più belli del gruppo Sassolungo/Sasso Piatto. Il tracciato è in gran parte semplice e ben segnato, con fondo comodo; l’unico tratto più impegnativo è la salita verso il Rifugio Vicenza. Sequenza dei punti toccati: Rifugio Valentini (0,4 km) Rifugio Salei (0,9 km) Rifugio Friedrich August (1,8 km) – consigliata una sosta: ottimi krapfen Rifugio Sandro Pertini (4,0 km) Rifugio Sasso Piatto (6,4 km) – nei pressi, verso il km 6,1, frequenti avvistamenti di marmotte Piz da Uridl (8,8 km) Rifugio Vicenza (11,5 km) – meta ideale per il pranzo; la salita che precede il rifugio è la parte più faticosa Rifugio Comici (15,7 km) Al rientro è presente un tratto basso che, dopo piogge o al mattino presto, può risultare bagnato, fangoso e stretto. In queste condizioni è preferibile scegliere l’alternativa più bassa battuta. In quota, nelle prime ore del giorno, è possibile trovare neve o ghiaccio in stagione anche a settembre. Consigli pratici: Parcheggio: quello di Passo Sella è comodo ma costoso nelle ore diurne; se possibile valutare alternative nei dintorni. Meteo: dopo piogge recenti alcuni passaggi possono essere scivolosi innevati o ghiacciati. Percorso adatto a escursionisti abituali; per chi non ama sentieri stretti o umidi, meglio evitare il rientro alto. Itinerario molto appagante per varietà di paesaggi, qualità dei rifugi e continui scorci sul Sassolungo e sul Sasso Piatto. Consigliato.',
  'Anello panoramico con partenza da Passo Sella che tocca una sequenza di rifugi tra i più belli del gruppo Sassolungo/Sasso Piatto. Il tracciato è in gran parte semplice e ben segnato, con fondo comodo; l’unico tratto più impegnativo è la salita verso il Rifugio Vicenza. <br> <br>Sequenza dei punti toccati: <br> <br>Rifugio Valentini (0,4 km) <br> <br>Rifugio Salei (0,9 km) <br> <br>Rifugio Friedrich August (1,8 km) – consigliata una sosta: ottimi krapfen <br> <br>Rifugio Sandro Pertini (4,0 km) <br> <br>Rifugio Sasso Piatto (6,4 km) – nei pressi, verso il km 6,1, frequenti avvistamenti di marmotte <br> <br>Piz da Uridl (8,8 km) <br> <br>Rifugio Vicenza (11,5 km) – meta ideale per il pranzo; la salita che precede il rifugio è la parte più faticosa <br> <br>Rifugio Comici (15,7 km) <br> <br>Al rientro è presente un tratto basso che, dopo piogge o al mattino presto, può risultare bagnato, fangoso e stretto. In queste condizioni è preferibile scegliere l’alternativa più bassa battuta. In quota, nelle prime ore del giorno, è possibile trovare neve o ghiaccio in stagione anche a settembre. <br> <br>Consigli pratici: <br> <br>Parcheggio: quello di Passo Sella è comodo ma costoso nelle ore diurne; se possibile valutare alternative nei dintorni. <br> <br>Meteo: dopo piogge recenti alcuni passaggi possono essere scivolosi innevati o ghiacciati. <br> <br>Percorso adatto a escursionisti abituali; per chi non ama sentieri stretti o umidi, meglio evitare il rientro alto. <br> <br>Itinerario molto appagante per varietà di paesaggi, qualità dei rifugi e continui scorci sul Sassolungo e sul Sasso Piatto. Consigliato.',
  'Tutte le Attività e Paesi',
  18.45,
  799,
  1,
  2,
  265,
  '04:25',
  265,
  '04:25',
  3090,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Trentino-Alto Adige',
  'Fossel',
  '2025-09-01',
  '2025-09-01',
  '2025-09-06 00:00:00',
  '2025-09-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/rifugio-sandro-pertini-rifugio-sasso-piatto-e-rifugio-comici-da-passo-sella-230432989',
  NULL,
  46.509097,
  11.757603,
  'POINT(11.757603 46.509097)',
  '2ada78e4abc29740a5fd5eef513577209ea4adeade9ac75c7a0334d591edc1ff',
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
VALUES (230432989, 'https://it.wikiloc.com/percorsi-escursionismo/rifugio-sandro-pertini-rifugio-sasso-piatto-e-rifugio-comici-da-passo-sella-230432989', NOW(), '2ada78e4abc29740a5fd5eef513577209ea4adeade9ac75c7a0334d591edc1ff')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230432989);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230432989/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230432989/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230432989;

COMMIT;

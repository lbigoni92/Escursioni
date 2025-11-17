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
  198605304,
  'Cascata dell''Acquapendente, Ponte Mediceo e Santuario di San Leonardo da Cardoso',
  'Percorso ad anello da Cardoso Il percorso, di circa 8.1 km, parte da Cardoso e tocca i seguenti punti di interesse: Cascata dell’Acquapendente (2.2 km) Ponte Mediceo (3.5 km) Santuario di San Leonardo (8.1 km) Difficoltà: Semplice, ma da affrontare con la giusta attenzione, come ogni sentiero montano. Descrizione del percorso: Si parte da Cardoso imboccando il Sentiero della Castagna, che conduce al Mulino del Frate e a un affascinante ponte medievale. Da qui è possibile scegliere se dirigersi subito verso la Scala Santa o visitarla successivamente (noi abbiamo optato per la seconda opzione per gestire meglio i tempi). La Scala Santa include un breve tratto attrezzato, ma la parte più suggestiva è il cammino lungo una via di lizza che costeggia il fiume. Dal ponte medievale, proseguiamo seguendo il sentiero 7, ben segnalato, verso le Cascate dell’Acquapendente. Il tratto presenta una salita moderata, mai troppo impegnativa, e vale assolutamente la pena affrontarla! Le cascate, alte almeno 50 metri, sono uno spettacolo maestoso: acque cristalline che rappresentano una delle meraviglie più belle delle Apuane, perfette anche per scatti memorabili. Continuando il percorso, raggiungiamo Orzale, dove potrete incontrare dei gattini adorabili (ben nutriti, non preoccupatevi!) che potrebbero chiedervi un po’ di cibo. Il cammino prosegue verso delle interessanti incisioni rupestri di pennati e, subito dopo, al Santuario di San Leonardo, un luogo affascinante che merita una visita. Non lontano dal santuario, troverete i resti di una suggestiva cava trasformata in lago. Un angolo unico, immerso nel monte, che vi lascerà senza fiato. Consiglio finale: Preparatevi a un’esperienza immersiva nella natura, con scorci unici e un’atmosfera rilassante. Non dimenticate di portare con voi una fotocamera per immortalare questi luoghi incantevoli!',
  'Percorso ad anello da Cardoso <br> <br>Il percorso, di circa 8.1 km, parte da Cardoso e tocca i seguenti punti di interesse: <br> <br>Cascata dell’Acquapendente (2.2 km) <br>Ponte Mediceo (3.5 km) <br>Santuario di San Leonardo (8.1 km) <br>Difficoltà: Semplice, ma da affrontare con la giusta attenzione, come ogni sentiero montano. <br> <br>Descrizione del percorso: <br>Si parte da Cardoso imboccando il Sentiero della Castagna, che conduce al Mulino del Frate e a un affascinante ponte medievale. Da qui è possibile scegliere se dirigersi subito verso la Scala Santa o visitarla successivamente (noi abbiamo optato per la seconda opzione per gestire meglio i tempi). La Scala Santa include un breve tratto attrezzato, ma la parte più suggestiva è il cammino lungo una via di lizza che costeggia il fiume. <br> <br>Dal ponte medievale, proseguiamo seguendo il sentiero 7, ben segnalato, verso le Cascate dell’Acquapendente. Il tratto presenta una salita moderata, mai troppo impegnativa, e vale assolutamente la pena affrontarla! Le cascate, alte almeno 50 metri, sono uno spettacolo maestoso: acque cristalline che rappresentano una delle meraviglie più belle delle Apuane, perfette anche per scatti memorabili. <br> <br>Continuando il percorso, raggiungiamo Orzale, dove potrete incontrare dei gattini adorabili (ben nutriti, non preoccupatevi!) che potrebbero chiedervi un po’ di cibo. <br> <br>Il cammino prosegue verso delle interessanti incisioni rupestri di pennati e, subito dopo, al Santuario di San Leonardo, un luogo affascinante che merita una visita. <br> <br>Non lontano dal santuario, troverete i resti di una suggestiva cava trasformata in lago. Un angolo unico, immerso nel monte, che vi lascerà senza fiato. <br> <br>Consiglio finale: Preparatevi a un’esperienza immersiva nella natura, con scorci unici e un’atmosfera rilassante. Non dimenticate di portare con voi una fotocamera per immortalare questi luoghi incantevoli!',
  'Tutte le Attività e Paesi',
  11.17,
  1,
  260,
  613,
  152,
  '02:32',
  152,
  '02:32',
  1601,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cardoso',
  '2025-01-01',
  '2025-01-01',
  '2025-01-19 00:00:00',
  '2025-01-19 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellacquapendente-ponte-mediceo-e-santuario-di-san-leonardo-da-cardoso-198605304',
  NULL,
  44.007078,
  10.315348,
  'POINT(10.315348 44.007078)',
  '77cbce096c31b3acec263fc169d9bc71e77d8a96bc7cb3a1e59de7a5e42abc87',
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
VALUES (198605304, 'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellacquapendente-ponte-mediceo-e-santuario-di-san-leonardo-da-cardoso-198605304', NOW(), '77cbce096c31b3acec263fc169d9bc71e77d8a96bc7cb3a1e59de7a5e42abc87')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 198605304);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/198605304/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/198605304/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 198605304;

COMMIT;

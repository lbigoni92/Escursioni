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
  199207459,
  'Pozzo della campana e San Michele alle Formiche da Montecerboli',
  'Sentiero ad anello da Montecerboli Itinerario: Pozzo della Campana (4,6 km) San Michele alle Formiche (6,3 km) Descrizione: L''escursione è un percorso ad anello molto semplice e adatto a tutti, con partenza da Montecerboli. Fin dai primi metri, si evita di camminare sul ciglio della strada, fatta eccezione per un breve tratto iniziale. Il terreno è agevole, i sentieri sono larghi, ben segnalati e seguono i tracciati 11 e 12 del CAI, che rendono questo percorso piacevole e ben organizzato. Punti di interesse: Poggio della Marrucca: La prima cima raggiunta offre una vista panoramica a 360° sulle colline circostanti. Qui troverete cannocchiali gratuiti per individuare i principali luoghi d’interesse. La cima sud (482 m) è sormontata dalla Croce degli Scouts, mentre sulla cima centrale, il punto più alto, sorge una curiosa palina che indica i monti e i paesi visibili all’orizzonte. Centrale geotermica e cascata: Proseguendo, si passa accanto a una centrale geotermica. Al chilometro 4, è possibile deviare per ammirare una spettacolare cascata di circa 40 metri, particolarmente suggestiva nei periodi piovosi. Pozzo della Campana (4,6 km): Una meravigliosa cascata, legata a una leggenda affascinante, attende i visitatori. Terme di San Michele (4,8 km): Resti di un edificio maestoso e affascinante, oggi ridotto a rovine, testimoniano l''antico splendore delle terme. San Michele alle Formiche (6,3 km): Il percorso culmina con le rovine del santuario, da cui si gode un panorama unico sulle colline circostanti. Il rientro avviene seguendo lo stesso percorso fino alle auto, chiudendo l’anello. Leggenda del Pozzo della Campana: Si narra che una campana del convento di San Michele, oggi in rovina, si staccò dal campanile e rotolò giù per la collina, finendo in un botro. La campana, invece di fermarsi sul fondo, scavò un pozzo profondissimo nella roccia, che poi si riempì d’acqua sulfurea. Ancora oggi, si dice che avvicinandosi al bordo del pozzo, sia possibile sentire i rintocchi della campana sommersa.',
  'Sentiero ad anello da Montecerboli <br>Itinerario: <br> <br>Pozzo della Campana (4,6 km) <br>San Michele alle Formiche (6,3 km) <br>Descrizione: <br>L''escursione è un percorso ad anello molto semplice e adatto a tutti, con partenza da Montecerboli. Fin dai primi metri, si evita di camminare sul ciglio della strada, fatta eccezione per un breve tratto iniziale. Il terreno è agevole, i sentieri sono larghi, ben segnalati e seguono i tracciati 11 e 12 del CAI, che rendono questo percorso piacevole e ben organizzato. <br> <br>Punti di interesse: <br> <br>Poggio della Marrucca: La prima cima raggiunta offre una vista panoramica a 360° sulle colline circostanti. Qui troverete cannocchiali gratuiti per individuare i principali luoghi d’interesse. La cima sud (482 m) è sormontata dalla Croce degli Scouts, mentre sulla cima centrale, il punto più alto, sorge una curiosa palina che indica i monti e i paesi visibili all’orizzonte. <br> <br>Centrale geotermica e cascata: Proseguendo, si passa accanto a una centrale geotermica. Al chilometro 4, è possibile deviare per ammirare una spettacolare cascata di circa 40 metri, particolarmente suggestiva nei periodi piovosi. <br> <br>Pozzo della Campana (4,6 km): Una meravigliosa cascata, legata a una leggenda affascinante, attende i visitatori. <br> <br>Terme di San Michele (4,8 km): Resti di un edificio maestoso e affascinante, oggi ridotto a rovine, testimoniano l''antico splendore delle terme. <br> <br>San Michele alle Formiche (6,3 km): Il percorso culmina con le rovine del santuario, da cui si gode un panorama unico sulle colline circostanti. <br> <br>Il rientro avviene seguendo lo stesso percorso fino alle auto, chiudendo l’anello. <br> <br>Leggenda del Pozzo della Campana: <br>Si narra che una campana del convento di San Michele, oggi in rovina, si staccò dal campanile e rotolò giù per la collina, finendo in un botro. La campana, invece di fermarsi sul fondo, scavò un pozzo profondissimo nella roccia, che poi si riempì d’acqua sulfurea. Ancora oggi, si dice che avvicinandosi al bordo del pozzo, sia possibile sentire i rintocchi della campana sommersa.',
  'Tutte le Attività e Paesi',
  11.39,
  383,
  297,
  475,
  163,
  '02:43',
  163,
  '02:43',
  1880,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Montecerboli',
  '2025-01-01',
  '2025-01-01',
  '2025-01-25 00:00:00',
  '2025-01-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pozzo-della-campana-e-san-michele-alle-formiche-da-montecerboli-199207459',
  NULL,
  43.250228,
  10.880658,
  'POINT(10.880658 43.250228)',
  '7f1f6a310d976bfa3e656d70f01b09b4dac44f3991dea00dfb86fbe00ce94957',
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
VALUES (199207459, 'https://it.wikiloc.com/percorsi-escursionismo/pozzo-della-campana-e-san-michele-alle-formiche-da-montecerboli-199207459', NOW(), '7f1f6a310d976bfa3e656d70f01b09b4dac44f3991dea00dfb86fbe00ce94957')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 199207459);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/199207459/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/199207459/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 199207459;

COMMIT;

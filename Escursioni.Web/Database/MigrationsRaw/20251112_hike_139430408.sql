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
  139430408,
  'La Tambura - la Focoletta - M.Crispo',
  'Partenza da Resceto, vi consiglio di arrivare presto per trovare parcheggio, nel nostro caso abbiamo dovuto lasciare l''auto lungo la strada. il sentiero parte subito con una buona pendenza, ma niente d''impossibile, il sentiero è completamente esposto al sole, portate acqua, noi non abbiamo trovato fontanelle, consiglio 3/4lt d''estate. arrivati al km 1.5 si deve prendere la deviazione a sinistra che sale a una pendenza maggiore (ci stacchiamo dalla Vandelli per riprenderla in discesa);da qua la salita entra nel suo vivo sino al km3.4 (la casa verde) dove inizierà una strada di cava sino da Arrivare al passo della Focolaccia (poco prima è presente il bivacco Aronte FERMATEVI PER UNA TAPPA è CARINO! Dal passo della Focolaccia inizia l''attacco per arrivare sulla cresta del Tambura poco esposto per essere una cresta è larga, si fa senza problemi, proseguendo arriviamo prima sul monte Crispo e poi sul Tambura, dove se siete fortunati (noi non lo siamo stati causa nebbia) potrete godere di un panorama unico! dal tambura abbiamo proseguito fino al passo della Tambura, Arrivati qua potete scegliere se scendere per la Vandelli e andare a destra o salire come noi anche sul monte Focoletta vetta che presenta un paio di unti a cui bisogna stare attinti con passaggi stretti e esposti, dopo di che si torna in dietro verso il passo della Tambura. Dal passo della Tambura siamo scesi fino ad arrivare al rifugio Nello conti con una meritata pausa per poi proseguire sulla Vandelli sino alle macchine Punti a favore? - sentieri unici come la Vandelli e i sui panorami, - Tre vette in un trekking - Un rifugio e un bivacco. Punti a sfavore? - Possibile caldo pochi alberi - Nessuna fontanella nel primo tratto fino al rifugio Consigliatissimo!',
  'Partenza da Resceto, vi consiglio di arrivare presto per trovare parcheggio, nel nostro caso abbiamo dovuto lasciare l''auto lungo la strada. <br>il sentiero parte subito con una buona pendenza, ma niente d''impossibile, il sentiero è completamente esposto al sole, portate acqua, noi non abbiamo trovato fontanelle, consiglio 3/4lt d''estate. <br>arrivati al km 1.5 si deve prendere la deviazione a sinistra che sale a una pendenza maggiore (ci stacchiamo dalla Vandelli per riprenderla in discesa);da qua la salita entra nel suo vivo sino al km3.4 (la casa verde) dove inizierà una strada di cava sino da Arrivare al passo della Focolaccia (poco prima è presente il bivacco Aronte FERMATEVI PER UNA TAPPA è CARINO! <br> <br>Dal passo della Focolaccia inizia l''attacco per arrivare sulla cresta del Tambura poco esposto per essere una cresta è larga, si fa senza problemi, proseguendo arriviamo prima sul monte Crispo e poi sul Tambura, dove se siete fortunati (noi non lo siamo stati causa nebbia) potrete godere di un panorama unico! <br> dal tambura abbiamo proseguito fino al passo della Tambura, Arrivati qua potete scegliere se scendere per la Vandelli e andare a destra o salire come noi anche sul monte Focoletta vetta che presenta un paio di unti a cui bisogna stare attinti con passaggi stretti e esposti, dopo di che si torna in dietro verso il passo della Tambura. <br>Dal passo della Tambura siamo scesi fino ad arrivare al rifugio Nello conti con una meritata pausa per poi proseguire sulla Vandelli sino alle macchine <br> <br> <br>Punti a favore? <br>- sentieri unici come la Vandelli e i sui panorami, <br>- Tre vette in un trekking <br>- Un rifugio e un bivacco. <br>Punti a sfavore? <br>- Possibile caldo pochi alberi <br>- Nessuna fontanella nel primo tratto fino al rifugio <br> <br>Consigliatissimo!',
  'Tutte le Attività e Paesi',
  15.25,
  1,
  449,
  1,
  278,
  '04:38',
  278,
  '04:38',
  2602,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Resceto',
  '2023-07-01',
  '2023-07-01',
  '2023-07-02 00:00:00',
  '2023-07-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/la-tambura-la-focoletta-m-crispo-139430408',
  NULL,
  44.088031,
  10.210207,
  'POINT(10.210207 44.088031)',
  '1c9c875f4514af79a441f5996f2d6a8f7724c96e94c7148f4797f833a967d474',
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
VALUES (139430408, 'https://it.wikiloc.com/percorsi-escursionismo/la-tambura-la-focoletta-m-crispo-139430408', NOW(), '1c9c875f4514af79a441f5996f2d6a8f7724c96e94c7148f4797f833a967d474')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 139430408);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/139430408/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/139430408/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 139430408;

COMMIT;

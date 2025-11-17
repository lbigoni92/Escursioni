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
  164830675,
  'Suvereto ~ Prata ~ Belvedere',
  'La partenza avviene dal parcheggio del cimitero di Suvereto. Prima di iniziare il vero e proprio percorso, abbiamo fatto una breve visita al paese, che non avevamo mai visto prima. Il centro storico è molto bello, ben curato, ma la rocca non è stata altrettanto impressionante. Successivamente, ci siamo diretti al parcheggio dei pullman, da dove parte il sentiero n°1 in direzione dell''antico borgo cinquecentesco di Prata. Dopo un breve tratto asfaltato, il sentiero vero e proprio inizia subito e ci porta verso Prata. Abbiamo fatto una breve sosta al parco pubblico per mangiare qualcosa e poi abbiamo proseguito seguendo il sentiero numero 5 in direzione del Belvedere. Anche qui, il percorso è stato piuttosto semplice. Il paese di Belvedere è estremamente piccolo, forse il più minuscolo che abbia mai visto, con appena 50/60 abitanti. Successivamente, abbiamo proseguito lungo il sentiero per tornare all''auto. Nel sentiero, è possibile ammirare numerosi bellissimi fiori e nel primo tratto si costeggia un fiume che si attraversa tramite un ponticello in legno. Lungo il percorso, ci sono delle fontanelle. Il tempo stimato per completare il percorso è di circa 3 ore.',
  'La partenza avviene dal parcheggio del cimitero di Suvereto. Prima di iniziare il vero e proprio percorso, abbiamo fatto una breve visita al paese, che non avevamo mai visto prima. Il centro storico è molto bello, ben curato, ma la rocca non è stata altrettanto impressionante. Successivamente, ci siamo diretti al parcheggio dei pullman, da dove parte il sentiero n°1 in direzione dell''antico borgo cinquecentesco di Prata. <br> <br>Dopo un breve tratto asfaltato, il sentiero vero e proprio inizia subito e ci porta verso Prata. Abbiamo fatto una breve sosta al parco pubblico per mangiare qualcosa e poi abbiamo proseguito seguendo il sentiero numero 5 in direzione del Belvedere. Anche qui, il percorso è stato piuttosto semplice. <br> <br>Il paese di Belvedere è estremamente piccolo, forse il più minuscolo che abbia mai visto, con appena 50/60 abitanti. Successivamente, abbiamo proseguito lungo il sentiero per tornare all''auto. <br> <br>Nel sentiero, è possibile ammirare numerosi bellissimi fiori e nel primo tratto si costeggia un fiume che si attraversa tramite un ponticello in legno. Lungo il percorso, ci sono delle fontanelle. Il tempo stimato per completare il percorso è di circa 3 ore.',
  'Tutte le Attività e Paesi',
  10,
  260,
  62,
  292,
  135,
  '02:15',
  135,
  '02:15',
  1645,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Suvereto',
  '2024-03-01',
  '2024-03-01',
  '2024-03-23 00:00:00',
  '2024-03-23 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/suvereto-prata-belvedere-164830675',
  NULL,
  43.081443,
  10.679907,
  'POINT(10.679907 43.081443)',
  '54307388cb8061422e81cbaf09b9d4e4b1000992af20c2758314848ffd105e28',
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
VALUES (164830675, 'https://it.wikiloc.com/percorsi-escursionismo/suvereto-prata-belvedere-164830675', NOW(), '54307388cb8061422e81cbaf09b9d4e4b1000992af20c2758314848ffd105e28')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 164830675);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/164830675/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

COMMIT;

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
  94515950,
  'Passo di Dante - Eremo della Spelonca - Monte Penna',
  'Il percorso parte da Santa Maria del giudice abbiamo parcheggiato davanti a una chiesa ma voi parcheggiate al parco pubblico, c''è più parcheggio (dista 200mt dalla chiesa), da li siamo arrivati a Passo di Dante.(Il suo appellativo è dovuto al fatto che è menzionato da Dante nel 33° canto della Divina Commedia vv 28-30“Questi pareva a me maestro e donno, cacciando il lupo e ‘ lupicini al monte per che i Pisan veder Lucca non ponno.”) Inseguito abbiamo proseguito prima in direzione di alcune ex cave e in seguito all'' Eremo della Spelonca(''eremo di San Giorgio o della Spelonca, è una chiesetta ad aula unica di origine medievale rirtrutturata più volte fino al XIX secolo. Il romitorio fu fondato nel 1190 dagli "eremiti neri" che non erano veri eremiti, ma piuttosto monaci che vivevano in comune come gli apostoli, in povertà, in luoghi piuttosto isolati, talvolta in contrasto con le istituzioni ecclesiastiche, dedicandosi all’assistenza religiosa della popolazione che viveva in questi luoghi e che aveva difficoltà a raggiungere le chiese.) Da li abbiamo fatto vari monti fino ad arrivare al moriglione di Penna dove abbiamo pranzato. In seguito abbiamo proseguito (su un sentiero non alla portata di tutti, fino al monte Penna). In fine abbiamo fatto il 116 per tornare alle macchine Non ci sono fontanelle Portate scarpe adeguate Se volete unirvi alle nostre escursioni ecco qualche info utile: Ci trovi su Facebook: https://www.facebook.com/LupusInTrekking Instagram : https://www.instagram.com/lupusintrekking/ WhatsApp al 3487020677',
  'Il percorso parte da Santa Maria del giudice abbiamo parcheggiato davanti a una chiesa ma voi parcheggiate al parco pubblico, c''è più parcheggio (dista 200mt dalla chiesa), da li siamo arrivati a Passo di Dante.(Il suo appellativo è dovuto al fatto che è menzionato da Dante nel 33° canto della Divina Commedia vv 28-30“Questi pareva a me maestro e donno, cacciando il lupo e ‘ lupicini al monte per che i Pisan veder Lucca non ponno.”) <br> <br>Inseguito abbiamo proseguito prima in direzione di alcune ex cave e in seguito all'' Eremo della Spelonca(''eremo di San Giorgio o della Spelonca, è una chiesetta ad aula unica di origine medievale rirtrutturata più volte fino al XIX secolo. Il romitorio fu fondato nel 1190 dagli "eremiti neri" che non erano veri eremiti, ma piuttosto monaci che vivevano in comune come gli apostoli, in povertà, in luoghi piuttosto isolati, talvolta in contrasto con le istituzioni ecclesiastiche, dedicandosi all’assistenza religiosa della popolazione che viveva in questi luoghi e che aveva difficoltà a raggiungere le chiese.) <br> <br>Da li abbiamo fatto vari monti fino ad arrivare al moriglione di Penna dove abbiamo pranzato. <br> <br>In seguito abbiamo proseguito (su un sentiero non alla portata di tutti, fino al monte Penna). <br> <br>In fine abbiamo fatto il 116 per tornare alle macchine <br> <br>Non ci sono fontanelle <br> <br>Portate scarpe adeguate <br> <br>Se volete unirvi alle nostre escursioni ecco qualche info utile: <br>Ci trovi su Facebook: https://www.facebook.com/LupusInTrekking <br>Instagram : https://www.instagram.com/lupusintrekking/ <br>WhatsApp al 3487020677',
  'Tutte le Attività e Paesi',
  15.21,
  856,
  83,
  556,
  268,
  '04:28',
  268,
  '04:28',
  2623,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'san cerbone',
  '2022-02-01',
  '2022-02-01',
  '2022-02-05 00:00:00',
  '2022-02-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passo-di-dante-eremo-della-spelonca-monte-penna-94515950',
  NULL,
  43.779435,
  10.455625,
  'POINT(10.455625 43.779435)',
  '9ec098e27ae5a4e84078ebbc0100661244d3cad64a32d2855abdd83e92252cbd',
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
VALUES (94515950, 'https://it.wikiloc.com/percorsi-escursionismo/passo-di-dante-eremo-della-spelonca-monte-penna-94515950', NOW(), '9ec098e27ae5a4e84078ebbc0100661244d3cad64a32d2855abdd83e92252cbd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 94515950);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/94515950/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/94515950/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 94515950;

COMMIT;

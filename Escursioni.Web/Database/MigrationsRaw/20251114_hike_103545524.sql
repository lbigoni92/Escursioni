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
  103545524,
  'Fornovolasco - Monte Forato - Monte Croce',
  'Partenza 9.00 rientro 19.00 Siamo partiti da Fornovolasco e abbiamo preso il percorso 130 da li abbiamo proseguito fino Foce di Valli (qua si presenta la maggior parte del dislivello), in seguito abbiamo proseguito sul 110 EE verso il monte forato, una bella cresta anche se semplice, con bei panorami, dal 110 siamo arrivati alla foce di petrosciana e da li imboccato prima il 6, direzione STAZZEMA, poi il 109 direzione foce delle Porchette (sentiero carino). Dalla foce delle Porchette abbiamo preso il sentiero 108EE passando per la fonte del Pallino e poi per le Scalette (vi è un corrimano con le catene) SENTIERO FACILE, ma comunque da stare attenti, in fine siamo arrivati sul monte Croce, dopo una meritata pausa siamo riscesi e abbiamo proseguito fino a Foce del Termine , da li abbiamo imboccato il137 sentiero EE con alcuni punti pericolosi e alcune catene erano rotte si deve stare MOLTO attenti, vi son tratti che possono dare noia a chi soffre di vertigini. Una volta ricongiunti al 6 abbiamo proseguito per Fornovolasco. Il Sentiero è stato bello , noi in 2 chi siamo portati 7 litri d''acqua dietro, le fonti a Maggio erano asciutte, i panorami non mancano, ma questo sentiero fatto tutto assieme è impegnativo e non lo consiglio a chi non ha un buon allenamento. Grazie la Santa della mia ragazza che mi ha accompagnato e sopportato! <3',
  'Partenza 9.00 rientro 19.00 <br> <br>Siamo partiti da Fornovolasco e abbiamo preso il percorso 130 da li abbiamo proseguito fino Foce di Valli (qua si presenta la maggior parte del dislivello), in seguito abbiamo proseguito sul 110 EE verso il monte forato, una bella cresta anche se semplice, con bei panorami, dal 110 siamo arrivati alla foce di petrosciana e da li imboccato prima il 6, direzione STAZZEMA, poi il 109 direzione foce delle Porchette (sentiero carino). <br> <br>Dalla foce delle Porchette abbiamo preso il sentiero 108EE passando per la fonte del Pallino e poi per le Scalette (vi è un corrimano con le catene) SENTIERO FACILE, ma comunque da stare attenti, in fine siamo arrivati sul monte Croce, dopo una meritata pausa siamo riscesi e abbiamo proseguito fino a Foce del Termine , da li abbiamo imboccato il137 sentiero EE con alcuni punti pericolosi e alcune catene erano rotte si deve stare MOLTO attenti, vi son tratti che possono dare noia a chi soffre di vertigini. <br> <br>Una volta ricongiunti al 6 abbiamo proseguito per Fornovolasco. <br> <br> <br>Il Sentiero è stato bello , noi in 2 chi siamo portati 7 litri d''acqua dietro, le fonti a Maggio erano asciutte, i panorami non mancano, ma questo sentiero fatto tutto assieme è impegnativo e non lo consiglio a chi non ha un buon allenamento. <br> <br>Grazie la Santa della mia ragazza che mi ha accompagnato e sopportato! <3',
  'Tutte le Attività e Paesi',
  18.41,
  1,
  485,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  1790,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2022-05-01',
  '2022-05-01',
  '2022-05-22 00:00:00',
  '2022-05-22 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/fornovolasco-monte-forato-monte-croce-103545524',
  NULL,
  44.028327,
  10.35919,
  'POINT(10.35919 44.028327)',
  'e51b93a6184ae1940071d366e8f76c80a88987da8c9111624d188cfef74dbf7d',
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
VALUES (103545524, 'https://it.wikiloc.com/percorsi-escursionismo/fornovolasco-monte-forato-monte-croce-103545524', NOW(), 'e51b93a6184ae1940071d366e8f76c80a88987da8c9111624d188cfef74dbf7d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 103545524);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/103545524/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

COMMIT;

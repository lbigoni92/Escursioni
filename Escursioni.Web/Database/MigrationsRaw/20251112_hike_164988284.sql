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
  164988284,
  'Monte Matanna, Monte Nona e Rifugio Forte dei Marmi da Pomezzana',
  'Bellissimo percorso apuano da Pomezia. Il sentiero è stato percorso in parte su sentieri CAI, in parte su sentieri non ufficiali, non è adatto a chi non è abituato alla montagna o ha problemi con esposizioni. Dopo il primo tratto in salita ( tratto del 121) prima della foce di grattaculo abbiamo girato sulla sinistra attaccando il sentiero di cresta del Matanna dopo una breve salita, una parte di noi me incluso si sono staccati per affrontare la cresta sud-ovest del Matanna dove in alcuni punti ci si deve aiutare con le mani a fare una piccola scalatina (aggirabile da chi non se la sente); in seguito siamo arrivati in cima al Matanna fato foto e pausa. Da qua ci siamo diretti prima al Callare del Matanna(entiero 5) e poi sul Nona. Sul Nona abbiamo pranzato ed in seguito siamo discesi per la cresta nord, discesa non banale perchè molto ripida ed alcuni tratti erano bagnati (da fare con molta attenzione), in seguito siamo arrivati alla foce delle Porchette(109) per poi perseguire in direzione Baita degli Scoiattoli (8 e poi 121) fino ad arrivare al rifugio Forte dei Marmi dove abbiamo fatto una breve pausa per poi tornare a casa. Il percorso non è banale e a tratti potrebbe essere molto impegnativo per persone non abituate anche se sono solo 14 km ricordatevi che siete in apuane con terreni non semplici. Fate sempre attenzione! Percorso ad anello da Pomezzana passando per: - Monte Matanna (4.6 km) - Callare del Matanna (5.6 km) - Monte Nona (6.6 km) - Foce delle Porchette (7.8 km) - Fonte Moscoso (8.6 km) - Baita degli scoiattoli (9.6 km) - Rifugio Forte dei Marmi (10.7 km)',
  'Bellissimo percorso apuano da Pomezia. <br>Il sentiero è stato percorso in parte su sentieri CAI, in parte su sentieri non ufficiali, non è adatto a chi non è abituato alla montagna o ha problemi con esposizioni. <br>Dopo il primo tratto in salita ( tratto del 121) prima della foce di grattaculo abbiamo girato sulla sinistra attaccando il sentiero di cresta del Matanna dopo una breve salita, una parte di noi me incluso si sono staccati per affrontare la cresta sud-ovest del Matanna dove in alcuni punti ci si deve aiutare con le mani a fare una piccola scalatina (aggirabile da chi non se la sente); in seguito siamo arrivati in cima al Matanna fato foto e pausa. <br>Da qua ci siamo diretti prima al Callare del Matanna(entiero 5) e poi sul Nona. <br>Sul Nona abbiamo pranzato ed in seguito siamo discesi per la cresta nord, discesa non banale perchè molto ripida ed alcuni tratti erano bagnati (da fare con molta attenzione), in seguito siamo arrivati alla foce delle Porchette(109) per poi perseguire in direzione Baita degli Scoiattoli (8 e poi 121) fino ad arrivare al rifugio Forte dei Marmi dove abbiamo fatto una breve pausa per poi tornare a casa. <br> <br>Il percorso non è banale e a tratti potrebbe essere molto impegnativo per persone non abituate anche se sono solo 14 km ricordatevi che siete in apuane con terreni non semplici. <br>Fate sempre attenzione! <br> <br> <br>Percorso ad anello da Pomezzana passando per: <br>- Monte Matanna (4.6 km) <br>- Callare del Matanna (5.6 km) <br>- Monte Nona (6.6 km) <br>- Foce delle Porchette (7.8 km) <br>- Fonte Moscoso (8.6 km) <br>- Baita degli scoiattoli (9.6 km) <br>- Rifugio Forte dei Marmi (10.7 km)',
  'Tutte le Attività e Paesi',
  14.13,
  1,
  559,
  1,
  197,
  '03:17',
  197,
  '03:17',
  1975,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pomezzana',
  '2024-03-01',
  '2024-03-01',
  '2024-03-24 00:00:00',
  '2024-03-24 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-matanna-monte-nona-e-rifugio-forte-dei-marmi-da-pomezzana-164988284',
  NULL,
  43.98487,
  10.316192,
  'POINT(10.316192 43.98487)',
  '6c7976ba4c8522258919034a267725d114237426a85daf0bb9ab5fe897da8546',
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
VALUES (164988284, 'https://it.wikiloc.com/percorsi-escursionismo/monte-matanna-monte-nona-e-rifugio-forte-dei-marmi-da-pomezzana-164988284', NOW(), '6c7976ba4c8522258919034a267725d114237426a85daf0bb9ab5fe897da8546')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 164988284);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/164988284/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164988284/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164988284;

COMMIT;

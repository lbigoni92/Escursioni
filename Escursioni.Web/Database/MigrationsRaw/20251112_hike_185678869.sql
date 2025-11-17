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
  185678869,
  'Monte Spallone, Monte Sagro e Punta tre Uomini da Verghereto',
  'Il percorso è sicuramente impegnativo e presenta tratti esposti. Il sentiero fino a Foce Luccica è classificabile come escursionistico; da quel punto in poi, è consigliato solo a escursionisti esperti. Il nostro intento iniziale era quello di prendere la cresta sud del Sagro da Foce Luccica, ma abbiamo poi optato per il sentiero che vedete. Pur essendo sempre sentieri CAI, sono indubbiamente destinati a escursionisti esperti (EE). Il primo tratto da Foce Luccica si snoda lungo la cresta e non presenta particolari difficoltà. Si arriva fino a un rudere, dopodiché si scende per la via di Lizza. A un certo punto, siamo stati costretti a muoverci sulle rocce perché non era chiaro dove proseguire. Da lì ci siamo ricongiunti al sentiero 172 fino a Foce della Faggiola. Questo tratto ha una bella pendenza e, a mio avviso, pur non essendo esposto, richiede un buon impegno fisico. Da Foce della Faggiola abbiamo preso il sentiero in direzione di Poggio della Signora, toccando anche Monte Spallone. Il tratto difficile si trova dopo Monte Spallone: qui vi è un breve tratto esposto, ma semplice. Da lì si arriva al Sagro; abbiamo poi disceso la cresta ovest del Sagro fino al sentiero 173, che è abbastanza facile, sebbene rimanga un percorso EE. Lungo questo tratto ci sono dei cavi che potrebbero non essere sempre necessari, ma risultano utili in caso di ghiaccio o pioggia. Alla foce del Fanaletto, abbiamo proseguito lungo la cresta, in andata e ritorno, fino a raggiungere la Punta Tre Uomini (che risulta più lontana di quanto sembri). La cresta non è esposta, ma bisogna prestare attenzione a una buca molto profonda presente a circa 50-100 metri dalla foce. La via del ritorno percorre un sentiero attrezzato che, a mio avviso, è semplice. Il dislivello è notevole sia in salita che in discesa, con tratti ripidi che richiedono buone gambe. Questo percorso va affrontato solo se si è esperti e a proprio rischio; quanto scritto qui è frutto della mia personale opinione. Il percorso ad anello da Forno passa per: Foce della Faggiola (4.2 km) Monte Spallone (4.8 km) Monte Sagro (5.5 km) Foce del Pollaro (10.3 km) Foce Luccica (13.2 km)',
  'Il percorso è sicuramente impegnativo e presenta tratti esposti. <br> <br>Il sentiero fino a Foce Luccica è classificabile come escursionistico; da quel punto in poi, è consigliato solo a escursionisti esperti. Il nostro intento iniziale era quello di prendere la cresta sud del Sagro da Foce Luccica, ma abbiamo poi optato per il sentiero che vedete. Pur essendo sempre sentieri CAI, sono indubbiamente destinati a escursionisti esperti (EE). <br> <br>Il primo tratto da Foce Luccica si snoda lungo la cresta e non presenta particolari difficoltà. Si arriva fino a un rudere, dopodiché si scende per la via di Lizza. A un certo punto, siamo stati costretti a muoverci sulle rocce perché non era chiaro dove proseguire. Da lì ci siamo ricongiunti al sentiero 172 fino a Foce della Faggiola. Questo tratto ha una bella pendenza e, a mio avviso, pur non essendo esposto, richiede un buon impegno fisico. <br> <br>Da Foce della Faggiola abbiamo preso il sentiero in direzione di Poggio della Signora, toccando anche Monte Spallone. Il tratto difficile si trova dopo Monte Spallone: qui vi è un breve tratto esposto, ma semplice. Da lì si arriva al Sagro; abbiamo poi disceso la cresta ovest del Sagro fino al sentiero 173, che è abbastanza facile, sebbene rimanga un percorso EE. Lungo questo tratto ci sono dei cavi che potrebbero non essere sempre necessari, ma risultano utili in caso di ghiaccio o pioggia. <br> <br>Alla foce del Fanaletto, abbiamo proseguito lungo la cresta, in andata e ritorno, fino a raggiungere la Punta Tre Uomini (che risulta più lontana di quanto sembri). La cresta non è esposta, ma bisogna prestare attenzione a una buca molto profonda presente a circa 50-100 metri dalla foce. <br> <br>La via del ritorno percorre un sentiero attrezzato che, a mio avviso, è semplice. <br> <br>Il dislivello è notevole sia in salita che in discesa, con tratti ripidi che richiedono buone gambe. <br> <br>Questo percorso va affrontato solo se si è esperti e a proprio rischio; quanto scritto qui è frutto della mia personale opinione. <br> <br>Il percorso ad anello da Forno passa per: <br> <br>Foce della Faggiola (4.2 km) <br>Monte Spallone (4.8 km) <br>Monte Sagro (5.5 km) <br>Foce del Pollaro (10.3 km) <br>Foce Luccica (13.2 km)',
  'Tutte le Attività e Paesi',
  15.18,
  1,
  754,
  1,
  294,
  '04:54',
  294,
  '04:54',
  2431,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Forno',
  '2024-09-01',
  '2024-09-01',
  '2024-09-21 00:00:00',
  '2024-09-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-spallone-monte-sagro-e-punta-tre-uomini-da-verghereto-185678869',
  NULL,
  44.090792,
  10.171507,
  'POINT(10.171507 44.090792)',
  'fd71f615ab361704d7d31c334331e3d4162dc9f581eeceb63daff2368ee343d9',
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
VALUES (185678869, 'https://it.wikiloc.com/percorsi-escursionismo/monte-spallone-monte-sagro-e-punta-tre-uomini-da-verghereto-185678869', NOW(), 'fd71f615ab361704d7d31c334331e3d4162dc9f581eeceb63daff2368ee343d9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 185678869);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/185678869/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/185678869/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 185678869;

COMMIT;

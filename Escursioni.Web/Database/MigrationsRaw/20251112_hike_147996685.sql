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
  147996685,
  'Monte Sagro - Monte Faggiola - Monte Borla - Monte Ballerino - Cima di Bozzarello - Campo Cecina -Rifugio Carrara',
  'Escursione sul M.Sagro, una delle vette più panoramiche delle Alpi Apuane soprannominato il monte dei Carrarini. Escursione molto semplice partendo da Campoceciana, escursione molto bella dove abbiamo toccato 5 cime con anche se 3 delle quali con la nebbia, le avventure non sono mancate come i panorami sul Borla e su Ballerino. Campocecina : Si tratta di un''area che non ha confini e limiti ben precisi, ma orientativamente comprende la zona delimitata a sud dalla strada che unisce il piazzale dell''Uccelliera alla Foce di Pianza, ad est dal monte Borla, a nord dalla valle de I Pozzi e a ovest dal piazzale dell''Acquasparta. Spesso però, in senso stretto, con l''espressione Campocecina si intende la vasta piana centrale con i suoi prati ed i suoi boschi. I boschi sono costituiti prevalentemente da faggete e da pinete a pino nero, quest''ultimo frutto di un''opera di rimboschimento avviata a partire dagli anni ''50. Il Sagro è una delle vette più panoramiche delle Alpi Apuane ed è molto frequentata essendone abbastanza semplice l’ascesa. È detto il monte dei Carrarini, nonostante sia situato in parte nel territorio del comune di Fivizzano e in parte in quello di Massa (la vetta si trova lungo il confine tra i due comuni), solo le estreme propaggini sud sono in territorio carrarese. Il massiccio del monte Sagro è in posizione isolata rispetto alla dorsale principale della catena apuana, domina la parte occidentale della catena stessa e può essere considerato come una grossolana piramide a base triangolare. Il monte Faggiola è un monte dell''Appennino tosco-romagnolo di 1.031 metri d''altitudine. È situato sul crinale di separazione fra l''Appennino imolese e l''Appennino faentino. Amministrativamente, il monte è compreso nel comune di Palazzuolo sul Senio, in provincia di Firenze. La vetta è situata a circa 4 km dal confine con la regione Emilia-Romagna. Il monte Borla è un rilievo montuoso italiano di 1.470 m s.l.m.[1] appartenente alla catena delle Alpi Apuane.La montagna si trova nella parte settentrionale della catena in posizione distaccata dallo spartiacque principale Mar Ligure/Garfagnana tra Campocecina e la Foce di Pianza (1.269 m), un valico che lo divide dal Monte Sagro. Sulla vetta del Monte Borla, alta 1.470 metri s.l.m., passa il confine tra il comune di Carrara ed il comune di Fivizzano. Non lontano dalla cima si trova anche una costruzione in muratura detta Casa Martignoni, costruita nel 1923 dall''imprenditore Cesare Martignoni ed oggi di proprietà comunale.',
  'Escursione sul M.Sagro, una delle vette più panoramiche delle Alpi Apuane soprannominato il monte dei Carrarini. <br>Escursione molto semplice partendo da Campoceciana, escursione molto bella dove abbiamo toccato 5 cime con anche se 3 delle quali con la nebbia, le avventure non sono mancate come i panorami sul Borla e su Ballerino. <br> <br>Campocecina : <br>Si tratta di un''area che non ha confini e limiti ben precisi, ma orientativamente comprende la zona delimitata a sud dalla strada che unisce il piazzale dell''Uccelliera alla Foce di Pianza, ad est dal monte Borla, a nord dalla valle de I Pozzi e a ovest dal piazzale dell''Acquasparta. Spesso però, in senso stretto, con l''espressione Campocecina si intende la vasta piana centrale con i suoi prati ed i suoi boschi. I boschi sono costituiti prevalentemente da faggete e da pinete a pino nero, quest''ultimo frutto di un''opera di rimboschimento avviata a partire dagli anni ''50. <br> <br>Il Sagro è una delle vette più panoramiche delle Alpi Apuane ed è molto frequentata essendone abbastanza semplice l’ascesa. È detto il monte dei Carrarini, nonostante sia situato in parte nel territorio del comune di Fivizzano e in parte in quello di Massa (la vetta si trova lungo il confine tra i due comuni), solo le estreme propaggini sud sono in territorio carrarese. <br> <br>Il massiccio del monte Sagro è in posizione isolata rispetto alla dorsale principale della catena apuana, domina la parte occidentale della catena stessa e può essere considerato come una grossolana piramide a base triangolare. <br> <br>Il monte Faggiola è un monte dell''Appennino tosco-romagnolo di 1.031 metri d''altitudine. È situato sul crinale di separazione fra l''Appennino imolese e l''Appennino faentino. <br>Amministrativamente, il monte è compreso nel comune di Palazzuolo sul Senio, in provincia di Firenze. La vetta è situata a circa 4 km dal confine con la regione Emilia-Romagna. <br> <br>Il monte Borla è un rilievo montuoso italiano di 1.470 m s.l.m.[1] appartenente alla catena delle Alpi Apuane.La montagna si trova nella parte settentrionale della catena in posizione distaccata dallo spartiacque principale Mar Ligure/Garfagnana tra Campocecina e la Foce di Pianza (1.269 m), un valico che lo divide dal Monte Sagro. Sulla vetta del Monte Borla, alta 1.470 metri s.l.m., passa il confine tra il comune di Carrara ed il comune di Fivizzano. Non lontano dalla cima si trova anche una costruzione in muratura detta Casa Martignoni, costruita nel 1923 dall''imprenditore Cesare Martignoni ed oggi di proprietà comunale.',
  'Tutte le Attività e Paesi',
  12.13,
  908,
  1,
  1,
  208,
  '03:28',
  208,
  '03:28',
  1996,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Torano',
  '2023-09-01',
  '2023-09-01',
  '2023-09-23 00:00:00',
  '2023-09-23 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/torano-147996685',
  NULL,
  44.120188,
  10.121353,
  'POINT(10.121353 44.120188)',
  '94691d789360b2c3aee2db8f17ebdaffe799ae9c72516bce4e2d0641e2dc9ca1',
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
VALUES (147996685, 'https://it.wikiloc.com/percorsi-escursionismo/torano-147996685', NOW(), '94691d789360b2c3aee2db8f17ebdaffe799ae9c72516bce4e2d0641e2dc9ca1')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 147996685);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/147996685/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/147996685/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 147996685;

COMMIT;

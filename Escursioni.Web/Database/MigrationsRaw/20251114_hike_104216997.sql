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
  104216997,
  'Pitigliano - Vie cave - Cascatella',
  'Splendida cittadina dell’Area del Tufo, nel cuore della Maremma Toscana, Pitigliano è uno dei Borghi più Belli d’Italia e Bandiera Arancione. Soprannominato anche La Piccola Gerusalemme, perché a partire dal XVI secolo ospitò una grande comunità ebraica tra le sue mura, Pitigliano è oggi uno dei borghi storici più affascinanti d’Italia ed una tappa imperdibile durante un viaggio in Toscana. E - VIA CAVA DI FRATENUTI (1330 mt 30 min.) Usciti dalla via cava di Poggio Cani, si prosegue verso destra attraversando la strada asfaltata SP 42 Pian della Madonna direzione Pitigliano-Sovana. Poco dopo, sulla sinistra si segue l''indicazione via cava di Fratenuti, dove salendo su alcune pietre sarà possibile ammirare il torrente sottostante. Dopo aver percorso la via cava, sul pianoro soprastante, si incontra la strada la Doganella. A questo punto si hanno due possibilità: rientrare in paese o proseguire il trekking. A sinistra, si continua verso l''incrocio denominato “le quattro strade” oppure si può procedere per la visita del Museo Archeologico all''aperto Alberto Manzi (e della via cava del Gradone, al suo interno) attraversando la SR 74 Maremmana per poi prendere la S.P 127, strada del Pantano. Oppure si svolta a sinistra e, costeggiando la SR 74 Maremmana, si scende verso il santuario Madonna delle Grazie. Si rientra a Pitigliano lungo la via cava Madonna delle Grazie, risalendo in paese, lungo la via cava di Poggio Cani.',
  'Splendida cittadina dell’Area del Tufo, nel cuore della Maremma Toscana, Pitigliano è uno dei Borghi più Belli d’Italia e Bandiera Arancione. <br> <br>Soprannominato anche La Piccola Gerusalemme, perché a partire dal XVI secolo ospitò una grande comunità ebraica tra le sue mura, Pitigliano è oggi uno dei borghi storici più affascinanti d’Italia ed una tappa imperdibile durante un viaggio in Toscana. <br> <br>E - VIA CAVA DI FRATENUTI (1330 mt 30 min.) <br>Usciti dalla via cava di Poggio Cani, si prosegue verso destra attraversando la strada asfaltata SP 42 Pian della Madonna direzione Pitigliano-Sovana. <br>Poco dopo, sulla sinistra si segue l''indicazione via cava di Fratenuti, dove salendo su alcune pietre sarà possibile ammirare il torrente sottostante. <br>Dopo aver percorso la via cava, sul pianoro soprastante, si incontra la strada la Doganella. A questo punto si hanno due possibilità: rientrare in paese o proseguire il trekking. <br>A sinistra, si continua verso l''incrocio denominato “le quattro strade” oppure si può procedere per la visita del Museo Archeologico all''aperto Alberto Manzi (e della via cava del Gradone, al suo interno) attraversando la SR 74 Maremmana per poi prendere la S.P 127, strada del Pantano. Oppure si svolta a sinistra e, costeggiando la SR 74 Maremmana, si scende verso il santuario Madonna delle Grazie. Si rientra a Pitigliano lungo la via cava Madonna delle Grazie, risalendo in paese, lungo la via cava di Poggio Cani.',
  'Tutte le Attività e Paesi',
  7.93,
  289,
  175,
  309,
  NULL,
  NULL,
  NULL,
  NULL,
  1185,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pitigliano',
  '2022-05-01',
  '2022-05-01',
  '2022-05-30 00:00:00',
  '2022-05-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pitigliano-104216997',
  NULL,
  42.634505,
  11.669628,
  'POINT(11.669628 42.634505)',
  '7fa1fd39d388a1c82f56de372bd83d918da7d80c15bb37f49dac5bef51388868',
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
VALUES (104216997, 'https://it.wikiloc.com/percorsi-escursionismo/pitigliano-104216997', NOW(), '7fa1fd39d388a1c82f56de372bd83d918da7d80c15bb37f49dac5bef51388868')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104216997);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104216997/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104216997/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104216997;

COMMIT;

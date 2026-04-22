BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  91657229,
  'Salivoli - Populonia - Costiera - Anello',
  'Siamo partiti in due verso le 9.50 da Salivoli e abbiamo camminato tranquillamente facendo tutto il sentiero costiero, fino ad arrivare alla Buca Delle Fate; questo è il tratto più "Impegnativo se cos vogliamo definirlo" in seguito abbiamo proseguito in direzione di Populonia visitando anche il castello (c''è un ristorantino dove non ci siamo fermati ma è economico e il cibo pareva ottimo). Da li in seguito abbiamo proseguito sulla strada del ritorno (strada bianca) fino a Salivoli. Anche sono 18.15 km li abbiamo fatti in poco più di 6 ore e almeno un ora e mezzo è stata di pause. Nella spiaggia di Fosso alle Canne c’è una abitazione con giardino carino e tavolo dove poter pranzare aperto da ottobre a maggio (è vietato fare fuochi). D''estate plorate almeno 2 litri d''acqua occhiali e cappello (alcuni punti sono esposti a sole) e non ci sono fontanelle se non Bar/Ristornati a Populonia. Il sentiero non presenta mai tratti impegnativi ed è sempre ben segnato, è impossibile perdersi tutti i sentieri a dicembre 2021 sono ben segnati e visibili. Ci sono molte aree Pick nick sia sulla strada dell''andata sia sul sentito del ritorno. Interessanti sono le tombe Etrusche e la parte di tutte le calette lungo la costa, in seguito faremo un altro sentiero sulla parte nord dove c''è il faro e su Baratti :) Per altre informazioni chiedetemi e Seguitemi!',
  '<h2>Salivoli - Populonia - Costiera - Anello: Trekking Costiero in Toscana</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>anello di trekking</strong> vi porterà lungo la splendida <strong>costiera toscana</strong>, un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>. Il sentiero, di circa 18,15 km, si snoda tra panorami mozzafiato, calette rocciose e antichi borghi, offrendo un''opportunità unica per esplorare la <strong>natura</strong> e la <strong>montagna</strong> della regione. Partiremo da <strong>Salivoli</strong> e costeggeremo la costa fino alla <strong>Buca Delle Fate</strong>, un tratto particolarmente suggestivo. Il percorso è adatto a famiglie e appassionati di <strong>sentieri</strong>, con una difficoltà valutata come non impegnativa.</p>

<h3>Cosa Aspettarsi</h3>

<p>Potrete ammirare le spettacolari <strong>calette lungo la costa</strong>, le antiche <strong>tombe etrusche</strong> e la maestosità del <strong>castello di Populonia</strong>. Il percorso è ben segnalato e offre numerose aree <strong>picnic</strong> per godervi un pranzo all''aria aperta.  L''<strong>escursione</strong> vi regalerà momenti di relax e connessione con la <strong>natura** e l''aria**.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Distanza:</strong> 18,15 km</li>
    <li><strong>Durata:</strong> Circa 6 ore (inclusi i tempi di pausa)</li>
    <li><strong>Difficoltà:</strong> Facile - Adatto a tutti i livelli</li>
    <li><strong>Punti di Interesse:</strong> Tombe Etrusche, Buca Delle Fate, Castello di Populonia, Spiaggia di Fosso alle Canne</li>
</ul>

<p>La <strong>spiaggia di Fosso alle Canne</strong> offre un''abitazione con giardino e tavolo dove pranzare, aperta da ottobre a maggio. Ricordatevi di portare con voi almeno 2 litri d''acqua e protezione solare, data l''esposizione al sole in alcuni tratti del sentiero. Non sono presenti fontanelle se non nei bar/ristoranti di Populonia.  Durante l''<strong>trekking</strong> e l''<strong>escursione</strong>, considerate le condizioni meteorologiche e la vostra preparazione fisica.</p>

<p>Approfittate dell''occasione per esplorare la zona circostante, come il sentiero nord con il faro e la possibilità di un''altra <strong>escursione</strong> verso <strong>Baratti</strong>.  Questo <strong>anello di trekking</strong> rappresenta un''eccellente opportunità per scoprire la bellezza del territorio e vivere un''esperienza autentica nella <strong>montagna toscana</strong>, ideale per il <strong>trekking in Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  18.15,
  670,
  23,
  250,
  179,
  '02:59',
  179,
  '02:59',
  2596,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Salivoli',
  '2021-12-01',
  '2021-12-01',
  '2021-12-30 00:00:00',
  '2021-12-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/salivoli-populonia-costiera-anello-91657229',
  NULL,
  42.935683,
  10.500712,
  'POINT(10.500712 42.935683)',
  '8eea4199403cabb3f27c9a1c50329b25596eb1450a60c595b168407fcbb40cb5',
  'Escursione Salivoli - Populonia: Anello costiero toscano 18.15km +670m. Trekking facile tra coste, castello e calette! Info e mappa su escursionilucabigoni.it',
  'Salivoli - Populonia: Anello Costiero (18km, Medio)',
  NOW(),
  NOW()
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
  meta_descrizione = EXCLUDED.meta_descrizione,
  titolo_seo = EXCLUDED.titolo_seo,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (91657229, 'https://it.wikiloc.com/percorsi-escursionismo/salivoli-populonia-costiera-anello-91657229', NOW(), '8eea4199403cabb3f27c9a1c50329b25596eb1450a60c595b168407fcbb40cb5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 91657229);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/91657229/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/91657229/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 91657229;

COMMIT;

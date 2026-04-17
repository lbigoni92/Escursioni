BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  91657229,
  'Salivoli - Populonia - Costiera - Anello',
  'Siamo partiti in due verso le 9.50 da Salivoli e abbiamo camminato tranquillamente facendo tutto il sentiero costiero, fino ad arrivare alla Buca Delle Fate; questo è il tratto più "Impegnativo se cos vogliamo definirlo" in seguito abbiamo proseguito in direzione di Populonia visitando anche il castello (c''è un ristorantino dove non ci siamo fermati ma è economico e il cibo pareva ottimo). Da li in seguito abbiamo proseguito sulla strada del ritorno (strada bianca) fino a Salivoli. Anche sono 18.15 km li abbiamo fatti in poco più di 6 ore e almeno un ora e mezzo è stata di pause. Nella spiaggia di Fosso alle Canne c’è una abitazione con giardino carino e tavolo dove poter pranzare aperto da ottobre a maggio (è vietato fare fuochi). D''estate plorate almeno 2 litri d''acqua occhiali e cappello (alcuni punti sono esposti a sole) e non ci sono fontanelle se non Bar/Ristornati a Populonia. Il sentiero non presenta mai tratti impegnativi ed è sempre ben segnato, è impossibile perdersi tutti i sentieri a dicembre 2021 sono ben segnati e visibili. Ci sono molte aree Pick nick sia sulla strada dell''andata sia sul sentito del ritorno. Interessanti sono le tombe Etrusche e la parte di tutte le calette lungo la costa, in seguito faremo un altro sentiero sulla parte nord dove c''è il faro e su Baratti :) Per altre informazioni chiedetemi e Seguitemi!',
  '<h2 data-aos="fade-right">Salivoli - Populonia - Costiera - Anello</h2>
<p data-aos="fade-left">Partenza in due verso le 9:50 da Salivoli e camminata tranquilla lungo la costa fino alla Buca Delle Fate, tratto considerato impegnativo ma piacevole. Proseguimento verso Populonia, visita al castello e alla sua osteria economica.</p>
<p data-aos="fade-right">Il percorso di ritorno lungo la strada bianca ha portato i nostri 18,15 km percorsi in circa 6 ore, con circa 1 ora e mezza dedicata alle pause. Abbiamo scoperto la spiaggia di Fosso alle Canne con la sua abitazione accogliente e tavolo per il pranzo (aperta da ottobre a maggio, ma vietato fare fuochi).</p>
<p data-aos="fade-left">Attenzione: d''estate, preparatevi a consumare almeno 2 litri d''acqua, occhiali da sole e cappello. Alcuni tratti sono esposti al sole e non ci sono fontanelle, tranne nei bar/ristoranti di Populonia. Il sentiero è ben segnalato e facile da seguire.</p>
<p data-aos="fade-right">Numerose aree picnic sono disponibili lungo il percorso, sia in salita che in discesa. Ammirate le suggestive tombe etrusche e le calette costiere. In futuro, esploreremo il sentiero nord verso il faro e su Baratti!</p>
<ul>
  <li><strong>Distanza:</strong> 18,15 km</li>
  <li><strong>Durata:</strong> Circa 6 ore (con pause)</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Punti di interesse:</strong> Tombe Etrusche, calette costiere, castello di Populonia, Buca Delle Fate</li>
  <li><strong>Servizi:</strong> Aree picnic, ristoranti a Populonia, spiaggia di Fosso alle Canne (con tavoli per il pranzo)</li>
</ul>
<p data-aos="fade-left">Non esitate a chiedere per ulteriori informazioni e a seguirmi per nuove avventure!</p>',
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
  'Escursione Salivoli-Populonia: Anello costiero e castello Etrusco! 18km di meraviglia. Sentiero facile, panorami mozzafiato e calette nascoste. Scopri di più!',
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

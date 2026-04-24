BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  89289628,
  'Lago di Massaciuccoli - Anello',
  'Abbiamo percorso questa stupenda traccia partendo dall''area parcheggio di Massaciuccoli all''Osteria le Terme. Da li in primo luogo siamo andati a diretti l''area faunistica dell''oasi di Massaciuccoli passando per il museo delle rovine Romane; all''Oasi abbiamo potuto osservare varie tipologie di volatili anche da vari punti d''osservazione. Dopo la breve visita all''Oasi, abbiamo intrapreso il vero e proprio sentiero, il sentiero, non presenta mai punti particolarmente difficili, solo qualche salita molto dolce, e ci permette di godere di alcuni punti panoramici mozzafiato. Al rientro al lago di di Massaciuccoli, ci siamo fermati a una fontana, situata al km 12.6. Abbiamo finito il giro con la visita a delle rovine romane. Nel giro che abbiamo fatto abbiamo visto impronte d''ungulati e d''aironi Nonostante lungo il tragitto vi siano vari punti con panchine abbiamo preferito mangiare ala chiesa di Compignano. I punti panoramici non mancano certamente lungo il sentiero e potete ammirare delle foto in questa traccia.',
  '<h2>Lago di Massaciuccoli - Anello: Trekking e Escursioni nel Cuore della Toscana</h2>

<h3>Il Percorso: Un Anello di Bellezza tra Lago e Montagna</h3>

<p>Questo <strong>sentiero di trekking</strong>, situato nel cuore del <strong>Lago di Massaciuccoli</strong>, offre un’esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell’<strong>escursionismo</strong> nella <strong>montagna</strong> toscana. L’<strong>anello</strong> parte dall’area parcheggio di <strong>Massaciuccoli</strong> all’<strong>Osteria le Terme</strong>, conducendo attraverso un paesaggio variegato di laghi, oasi faunistiche, rovine romane e panorami mozzafiato. È un’ottima opzione per una <strong>gita in montagna</strong> di una giornata, ideale per famiglie e appassionati di <strong>sentieri</strong>.</p>

<h3>Cosa Aspettarsi: Una Giornata di Natura e Scoperte</h3>

<ul>
  <li>Percorso di circa 12 km, con un dislivello medio di 150 metri.</li>
  <li>Facilità di esecuzione: il <strong>sentiero</strong> è prevalentemente pianeggiante, con alcune lievi salite e discese.</li>
  <li>Opportunità di osservare la fauna locale, tra cui uccelli acquatici, ungulati e avvoltoi.</li>
  <li>Punti panoramici spettacolari sul <strong>Lago di Massaciuccoli</strong> e sulle colline circostanti.</li>
  <li>Visita a un’oasi faunistica, un museo delle rovine romane e diverse fontane e chiese storiche.</li>
</ul>

<p>Preparatevi a un’<strong>escursione</strong> all’aria aperta in un ambiente naturale incontaminato, ricco di biodiversità. Questo <strong>trekking</strong> è perfetto per chi cerca una giornata di relax, svago e scoperta della <strong>natura</strong>.</p>

<h3>Informazioni Utili: Dettagli per un''Escursione di Successo</h3>

<ul>
  <li>Punto di partenza: Area parcheggio di Massaciuccoli all’Osteria le Terme.</li>
  <li>Difficoltà: Facile/Media.</li>
  <li>Distanza: Circa 12 km.</li>
  <li>Tempi di percorrenza: Circa 3-4 ore.</li>
  <li>Punti di interesse: Oasi faunistica di Massaciuccoli, Museo delle Rovine Romane, punti panoramici, fontane, chiese storiche.</li>
  <li>Dislivello: 150 metri.</li>
  <li>Attrezzatura consigliata: Scarpe da trekking, abbigliamento a strati, acqua, snack, mappa, bussola/GPS.</li>
</ul>

<p>Esplorate il <strong>sentiero</strong> del <strong>Lago di Massaciuccoli</strong> e godetevi un’esperienza di <strong>trekking</strong> unica nel suo genere. Questo <strong>anello di sentieri</strong> è ideale per appassionati di <strong>escursionismo</strong> e <strong>sentieri in Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  15.12,
  545,
  13,
  310,
  212,
  '03:32',
  212,
  '03:32',
  2465,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Massaciuccoli',
  '2021-11-01',
  '2021-11-01',
  '2021-11-20 00:00:00',
  '2021-11-20 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lago-di-massaciuccoli-lupus-in-trekking-89289628',
  NULL,
  43.836188,
  10.360628,
  'POINT(10.360628 43.836188)',
  '759f4c86de14abf155cdbda5a128274539009a82b13c41cbe578ff0b4f944c77',
  'Escursione Lago di Massaciuccoli (Toscana): Anello facile 15.1km, +545m. Percorso tranquillo tra lago, oasi faunistica e rovine romane. Foto e punti panoramici!',
  'Lago di Massaciuccoli: escursione facile da Massaciuccoli...',
  'Versilia e costa toscana',
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
  tag = EXCLUDED.tag,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (89289628, 'https://it.wikiloc.com/percorsi-escursionismo/lago-di-massaciuccoli-lupus-in-trekking-89289628', NOW(), '759f4c86de14abf155cdbda5a128274539009a82b13c41cbe578ff0b4f944c77')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 89289628);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/89289628/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89289628/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89289628;

COMMIT;

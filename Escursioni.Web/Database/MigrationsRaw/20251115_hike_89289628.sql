BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  89289628,
  'Lago di Massaciuccoli - Anello',
  'Abbiamo percorso questa stupenda traccia partendo dall''area parcheggio di Massaciuccoli all''Osteria le Terme. Da li in primo luogo siamo andati a diretti l''area faunistica dell''oasi di Massaciuccoli passando per il museo delle rovine Romane; all''Oasi abbiamo potuto osservare varie tipologie di volatili anche da vari punti d''osservazione. Dopo la breve visita all''Oasi, abbiamo intrapreso il vero e proprio sentiero, il sentiero, non presenta mai punti particolarmente difficili, solo qualche salita molto dolce, e ci permette di godere di alcuni punti panoramici mozzafiato. Al rientro al lago di di Massaciuccoli, ci siamo fermati a una fontana, situata al km 12.6. Abbiamo finito il giro con la visita a delle rovine romane. Nel giro che abbiamo fatto abbiamo visto impronte d''ungulati e d''aironi Nonostante lungo il tragitto vi siano vari punti con panchine abbiamo preferito mangiare ala chiesa di Compignano. I punti panoramici non mancano certamente lungo il sentiero e potete ammirare delle foto in questa traccia.',
  '<h2 id="lago-di-massaciuccoli-anello">Escursione al Lago di Massaciuccoli - Anello</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza di questa splendida escursione, parti dall''area parcheggio di <strong id="massaciuccoli">Massaciuccoli</strong>, vicino all''Osteria le Terme. Il parcheggio è facilmente raggiungibile in auto, e da lì il sentiero inizia proprio lì.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia dall''area parcheggio e si dirama verso l''area faunistica dell''oasi di <strong id="massaciuccoli">Massaciuccoli</strong>, passando per il museo delle rovine Romane.  Una volta visitata l''oasi, si intraprende il vero sentiero, un percorso <strong id="facile">facile</strong> che si snoda lungo le rive del lago, con qualche dolce salita e tanti punti panoramici. Il sentiero di circa <strong id="1512">15.12 km</strong>, con un <strong id="dislivello">+672 metri</strong> di dislivello, è perfetto per un''escursione di una giornata.  Il giro è ad anello, per tornare al punto di partenza. Lungo il percorso, potrete ammirare vari punti panoramici, la fontana al km 12.6 e delle rovine romane prima di concludere l''anello.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà <strong id="facile">facile</strong>, adatta a famiglie ed escursionisti alle prime armi. Il sentiero è ben segnalato e presenta solo alcuni brevi tratti in salita. Non ci sono passaggi tecnici impegnativi. Preparatevi a circa 3-4 ore per completare l''anello.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Potete scaricare la <strong id="traccia-gps">traccia GPS</strong> di questa escursione per guidarvi durante il percorso.  È consigliabile indossare scarpe da trekking, portare acqua, snack e una mappa del territorio.  Ricordatevi di informarsi sulle condizioni meteo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong id="distanza">Distanza:</strong> Circa 15.12 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 672 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Area parcheggio di Massaciuccoli, Osteria le Terme, Massaciuccoli, Toscana, Italia</li>
  <li><strong id="comune">Comune:</strong> Massaciuccoli, Toscana, Italia</li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  15.12,
  672,
  13,
  310,
  354,
  '5:54',
  307,
  '5:07',
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
  'Versilia e Massarosa',
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

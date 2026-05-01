BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  123884538,
  'Cascatelle dell''infernaccio - Poggio corbolone - Villa Cristina',
  'Escursione mattutina molto bella specialmente per le cascate dell''infernaccio che erano belle rigogliose dopo delle piogge.Il percorso era abbastanza umido anche perché aveva piovuto i giorni precedenti, l''unica salita che sia degna di questo nome è quella a Poggio Corbolone dal quale è possibile avere una vista unica su Livorno.Un altro punto di particolare interesse è il punto panoramico sopra villa Cristiana, dal quale si ha una vita unica sui monti pisani e apuane.Il percorso è corto ed è adatto a una mezza giornata.Raccomando vivamente Scarponi viste le zone iniziali che sono umide specialmente dopo delle pioggie.',
  '<h2 id="escursione-cascatelle-dellinferno-poggio-corbolone-villa-cristina">Escursione alle Cascatelle dell''Inferno a Poggio Corbolone e Villa Cristina</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione si trova a <strong>Campo al Melo</strong>, in provincia di <strong>Toscana</strong>.  È facilmente raggiungibile in auto lungo le strade che portano alla frazione di <strong>Poggio Corbolone</strong>.  Dalla frazione, l''inizio del sentiero è ben segnalato e si trova in prossimità del complesso di <strong>Villa Cristina</strong>.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione di circa <strong>7.99 km</strong> con un dislivello di <strong>+325 metri</strong> è un anello perfetto per una giornata. Inizierai da Poggio Corbolone, godrai di una piacevole salita fino al punto panoramico. Da qui, il sentiero si snoda attraverso un terreno umido, reso ancora più interessante dalle piogge recenti, fino alle maestose <strong>Cascatelle dell''Inferno</strong>.  Il sentiero poi si prosegue verso il punto panoramico sopra <strong>Villa Cristina</strong>, da cui potrai ammirare un panorama mozzafiato sui monti pisani e apuani.  È un percorso facile e piacevole, ideale per una mezza giornata di escursioni.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa escursione è <strong>Facile</strong>, rendendola adatta anche a escursionisti meno esperti. Tuttavia, il terreno umido, soprattutto nelle zone iniziali e dopo le piogge, richiede attenzione e scarponi adeguati.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Il sentiero è ben segnalato, ma per una maggiore sicurezza e per avere sempre la rotta sotto controllo, ti consiglio di scaricare una traccia GPS.  Potrai trovare la traccia su piattaforme online di escursionismo e la importerai nella tua app preferita.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li ><strong>Distanza:</strong> Circa 7.99 km (anello)</li>
  <li ><strong>Dislivello:</strong> Circa 325 metri</li>
  <li ><strong>Difficoltà:</strong> Facile</li>
  <li ><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li ><strong>Punto di partenza:</strong> Poggio Corbolone, accessibile in auto</li>
  <li ><strong>Comune:</strong> Campo al Melo, Toscana</li>
  <li ><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.99,
  325,
  51,
  311,
  185,
  '3:05',
  161,
  '2:41',
  1270,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Campo al Melo',
  '2023-01-01',
  '2023-01-01',
  '2023-01-21 00:00:00',
  '2023-01-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascatelle-dellinfernaccio-poggio-corbolone-villa-cristina-123884538',
  NULL,
  43.558868,
  10.400475,
  'POINT(10.400475 43.558868)',
  '809eaf9b1f33befd7aa2c14fc8ffe98042e9bc84e21ed0fb8190e0dc13d7c4ba',
  'Escursione Cascatelle dell’Infernaccio, Poggio Corbolone e Villa Cristina (Campo a Melo, Toscana). Facile giro di 7.9km +325m. Vista Livorno, cascate e punto...',
  'Cascatelle dell’Infernaccio: Escursione da Poggio Corbolo...',
  'Livorno e costa toscana',
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
VALUES (123884538, 'https://it.wikiloc.com/percorsi-escursionismo/cascatelle-dellinfernaccio-poggio-corbolone-villa-cristina-123884538', NOW(), '809eaf9b1f33befd7aa2c14fc8ffe98042e9bc84e21ed0fb8190e0dc13d7c4ba')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 123884538);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/123884538/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

COMMIT;

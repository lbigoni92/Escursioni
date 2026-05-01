BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  100360380,
  'Parco Naturalistico di San Rossore.',
  'Abbiamo fatto questo sentiero in parte improvvisato, ma ben riuscito per Pasqua. Siamo andati alla ricerca d''animali da vedere e abbiamo trovato daini, cinghiali e e tracce d''altri piccoli carnivori quali volpi, inoltre non è mancata la presenza di bellissime tartarughe anche se si tratta di una specie infestante che non dovrebbe trovarsi nel parco. Non vi sono problemi nel seguire il sentiero che ho tracciato ed è per la maggior parte del temo all''ombra (tranne la parte lungo il fiume). Lo consiglio come girata tranquilla, nel parco vi sono due bar noi siamo passati da uno dei due e fa anche da ristorante, anche se consiglio di mangiare dei panini lungo il percorso.',
  '<h2 id="escursione-parco-naturalistico-san-rossore">Escursione nel Parco Naturalistico di San Rossore</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione nel Parco Naturalistico di San Rossore si trova a <strong>Cacine Vecchie</strong>, in provincia di <strong>Toscana</strong>. Per raggiungerlo, potete seguire le indicazioni stradali da Firenze o Pisa. Ricordatevi che l''area è facilmente accessibile in auto, con parcheggio disponibile nelle vicinanze del punto di partenza.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Abbiamo seguito un percorso anello di circa <strong>17.14 km</strong> con un dislivello positivo di <strong>613 metri</strong>. La maggior parte del sentiero è ben tracciata e facile da seguire, soprattutto grazie all''ombra che offre in molte zone. Il percorso si snoda attraverso una varietà di ambienti, dal bosco umido lungo il fiume, al terreno più aperto del parco.  Durante il trekking, abbiamo avuto la fortuna di avvistare diversi animali, tra cui daini, cinghiali e tracce di volpi, dimostrando la ricchezza della fauna locale. Abbiamo anche notato la presenza di numerose tartarughe, sebbene si tratti di una specie invasiva. Un piccolo suggerimento: non dimenticate un panino da mangiare lungo il percorso, dato che all''interno del parco c''è un bar che funge anche da ristorante.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come <strong>Facile</strong>, adatta anche a escursionisti alle prime armi o a famiglie. Il dislivello è contenuto, e il sentiero è in gran parte ombreggiato, rendendo la camminata confortevole.  Tuttavia, è importante indossare scarpe da trekking adatte e portare con sé acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per facilitare il vostro trekking, vi forniamo la traccia GPS di questa escursione. Ricordatevi di scaricare la traccia sul vostro dispositivo GPS o smartphone prima di partire.  La durata dell''escursione è di circa 6-8 ore, a seconda del ritmo e delle soste.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 17.14 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 613 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Cacine Vecchie, Toscana, Italia</li>
    <li><strong>Comune:</strong> Cacine Vecchie</li>
    <li><strong>Regione:</strong> Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
    <li><strong>Parco Nazionale:</strong> Parco Naturalistico di San Rossore</li>
</ul>',
  'Tutte le Attività e Paesi',
  17.14,
  613,
  27,
  92,
  380,
  '6:20',
  331,
  '5:31',
  1895,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cascine Vecchie',
  '2022-04-01',
  '2022-04-01',
  '2022-04-17 00:00:00',
  '2022-04-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parco-naturalistico-di-san-rossore-100360380',
  NULL,
  43.723937,
  10.334222,
  'POINT(10.334222 43.723937)',
  '0077831a03a785f4cf2234d452d3f160ff217ab75cff85573cd1935a5de327bb',
  'Escursione facile nel Parco San Rossore (Toscana)! 17km ad anello, +50m, daini, cinghiali & tartarughe. Sentiero ben tracciato, in gran parte ombroso. Cascin...',
  'Parco San Rossore: Escursione Facile da Cascine Vecchie',
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
VALUES (100360380, 'https://it.wikiloc.com/percorsi-escursionismo/parco-naturalistico-di-san-rossore-100360380', NOW(), '0077831a03a785f4cf2234d452d3f160ff217ab75cff85573cd1935a5de327bb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100360380);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100360380/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  97490981,
  'Montenero - Ciano',
  'Il percorso è molto semplice da fare, secondo me con un allungata al vecchio faro li vicino, oppure proseguendo verso il Castellaccio. Qua visitiamo il santuario di Montenero è il monumento a Ciano, dietro il monumento parte un sentiero secondario immerso nella natura, pieno di asparagi.',
  '<h2>Montenero - Ciano: Trekking e Escursioni nella Montagna Toscana</h2>

<h3>Il Percorso</h3>

<p>Preparati per un''incredibile <strong>escursione trekking</strong> lungo il <strong>sentiero</strong> che collega <strong>Montenero</strong> a <strong>Ciano</strong>, un''esperienza immersa nel cuore della <strong>montagna toscana</strong>. Questo percorso, considerato molto semplice, offre un''ottima opportunità per un''<strong>escursione a piedi</strong> di facile fruizione, perfetto per famiglie e principianti. Il sentiero si snoda attraverso paesaggi mozzafiato, offrendo scorci panoramici sulla campagna circostante e sulla maestosa catena montuosa. Potrai ammirare la bellezza della <strong>natura italiana</strong> e respirare l''aria fresca di montagna.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante la tua <strong>trekking</strong> a <strong>Montenero - Ciano</strong>, potrai aspettarti un percorso ben tracciato, adatto anche a chi non ha molta esperienza in <strong>escursionismo</strong>. Il sentiero è immerso nella natura, offrendo l''opportunità di ammirare la flora e la fauna locale.  La dislivello è contenuto, rendendo l''<strong>escursione</strong> accessibile a tutti. Potrai inoltre, con un''aggiunta di sforzo,  visitare il <strong>vecchio faro</strong> e proseguire verso il <strong>Castellaccio</strong>.  Un''ulteriore scoperta è rappresentata dal sentiero secondario che parte dal monumento a <strong>Ciano</strong>, offrendo un''immersione totale nella <strong>natura toscana</strong> e la possibilità di avvistare gli <strong>asparagus</strong> (se di stagione).</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Distanza:</strong> Circa 6-8 km (a seconda del percorso scelto)</li>
  <li><strong>Difficoltà:</strong> Facile - Media</li>
  <li><strong>Dislivello:</strong> Circa 300-400 metri</li>
  <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di Partenza:</strong> Montenero (Parco Naturale della Maremma Toscana)</li>
  <li><strong>Punto di Arrivo:</strong> Ciano (Comune di Ciano)</li>
  <li><strong>Attrezzatura Consigliata:</strong> Scarpe da trekking, abbigliamento a strati, acqua, snack, mappa, bussola/GPS</li>
</ul>

<p>Scopri di più sulle <strong>escursioni in Italia</strong> e approfitta di questa splendida occasione per un''<strong>escursione a Montenero e Ciano</strong>. Un''esperienza indimenticabile tra <strong>sentieri di trekking</strong> e panorami mozzafiato!</p>',
  'Tutte le Attività e Paesi',
  2.69,
  143,
  171,
  230,
  66,
  '1:06',
  58,
  '0:58',
  404,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Montenero',
  '2022-03-01',
  '2022-03-01',
  '2022-03-13 00:00:00',
  '2022-03-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/montenero-ciano-97490981',
  NULL,
  43.491427,
  10.343522,
  'POINT(10.343522 43.491427)',
  '12608bd332d3ed5ebca4fc5f9e3cacb97b6903450ea4a468d5fb219298fdfd75',
  'Escursione Montenero Ciano: Anello facile in Toscana (2.69km, +108m). Visita santuario, monumento Ciano e sentiero asparagi! Ideale per principianti.',
  'Montenero: escursione facile da Ciano (Toscana)',
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
VALUES (97490981, 'https://it.wikiloc.com/percorsi-escursionismo/montenero-ciano-97490981', NOW(), '12608bd332d3ed5ebca4fc5f9e3cacb97b6903450ea4a468d5fb219298fdfd75')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97490981);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97490981/photo_03.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

COMMIT;

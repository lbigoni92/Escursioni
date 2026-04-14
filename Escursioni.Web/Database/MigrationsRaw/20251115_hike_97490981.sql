BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97490981,
  'Montenero - Ciano',
  'Il percorso è molto semplice da fare, secondo me con un allungata al vecchio faro li vicino, oppure proseguendo verso il Castellaccio. Qua visitiamo il santuario di Montenero è il monumento a Ciano, dietro il monumento parte un sentiero secondario immerso nella natura, pieno di asparagi.',
  '<h2 class="title">Montenero - Ciano</h2>
<p>
  Questo percorso è estremamente accessibile e perfetto per una giornata di escursione. La sua semplicità lo rende ideale sia per famiglie che per escursionisti principianti.
</p>
<p>
  Se hai voglia di allungare il percorso, puoi facilmente raggiungere il vecchio faro situato nelle vicinanze. In alternativa, puoi proseguire verso il Castellaccio, ammirando panorami mozzafiato.
</p>
<h3>
  Punti di Interesse
</h3>
<ul>
  <li><strong>Santuario di Montenero</strong>: Un luogo di culto immerso nel verde, ricco di storia e spiritualità.</li>
  <li><strong>Monumento a Ciano</strong>: Un''opera d''arte commemorativa che celebra la memoria di Ciano.</li>
  <li>Sentiero Secondario: Un''escursione nel cuore della natura, caratterizzata da una vegetazione lussureggiante e la possibilità di avvistare asparagi selvatici.</li>
</ul>
<p>
  Partendo dal monumento a Ciano, un sentiero secondario si inoltra in un ambiente naturale incontaminato. Questo percorso offre un''esperienza immersiva nella natura, ideale per chi cerca tranquillità e contatto con l''ambiente. È noto per la presenza di asparagi selvatici, rendendo l''escursione particolarmente interessante per gli amanti del giardinaggio.
</p>
<p>
  <em>Consigli: Indossa scarpe da trekking adatte e porta con te acqua e snack. Controlla le previsioni meteo prima di partire e rispetta l''ambiente circostante.</em>
</p>',
  'Tutte le Attività e Paesi',
  2.69,
  108,
  171,
  230,
  32,
  '00:32',
  32,
  '00:32',
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
  'Escursione Montenero - Ciano: sentiero facile, santuario, Castello e asparagi. Viste mozzafiato e natura incontaminata! Scopri il Monte Nero!',
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

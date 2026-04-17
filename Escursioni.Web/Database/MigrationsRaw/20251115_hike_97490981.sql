BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97490981,
  'Montenero - Ciano',
  'Il percorso è molto semplice da fare, secondo me con un allungata al vecchio faro li vicino, oppure proseguendo verso il Castellaccio. Qua visitiamo il santuario di Montenero è il monumento a Ciano, dietro il monumento parte un sentiero secondario immerso nella natura, pieno di asparagi.',
  '<h2>Montenero - Ciano: Escursione Trekking nella Tuscia Viterbese</h2>

<h3>Il Percorso</h3>

<p>Preparati per un’<em>escursione</em> indimenticabile lungo il sentiero <strong>Montenero - Ciano</strong>, un percorso semplice ed accessibile che ti condurrà alla scoperta dei panorami mozzafiato della Tuscia Viterbese. Questo <em>sentiero di trekking</em> è perfetto per famiglie e per chi cerca un’<em>escursione</em> nella <strong>montagna</strong> senza particolari difficoltà. Il sentiero parte da <strong>Montenero</strong>, un borgo medievale immerso nella natura, e si snoda attraverso la campagna fino ad arrivare al borgo di <strong>Ciano</strong>, un luogo ricco di storia e tradizioni.  Puoi scegliere di completare l’escursione con un’<em>escursione</em> aggiuntiva al vecchio faro o proseguire verso il Castellaccio, per un''esperienza completa nella splendida regione della <strong>montagna</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante questo <em>trekking</em>, sarai immerso in un paesaggio unico, dominato dalla maestosità del Monte <strong>Montenero</strong>.  La flora e la fauna locale ti sorprenderanno con la loro ricchezza e varietà. L''<em>escursione</em> offre la possibilità di ammirare panorami spettacolari sulla campagna circostante e di respirare l''aria fresca e pulita della <strong>montagna</strong>.  Sarai immerso nella natura incontaminata, un vero e proprio angolo di paradiso per gli amanti del <em>trekking</em> e dell’<em>escursionismo</em>.</p>

<p>Un momento clou dell’<em>escursione</em> sarà la visita al <strong>Santuario di Montenero</strong>, un luogo di culto storico e architettonico, e del monumento dedicato a <strong>Ciano</strong>, testimonianza del ricco passato del borgo. Inoltre,  l''<em>escursione</em> offre la possibilità di scoprire un sentiero secondario immerso nella natura, ricco di asparagi, una vera delizia per il palato!</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Distanza:</strong> Circa 6 km</li>
  <li><strong>Dislivello:</strong> Circa 300 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 2-3 ore (a seconda del ritmo)</li>
  <li><strong>Tipo di percorso:</strong> Sentiero di trekking</li>
  <li><strong>Ideale per:</strong> Famiglie, principianti, amanti della natura e del <em>trekking</em></li>
  <li><strong>Punti di interesse:</strong> <strong>Santuario di Montenero</strong>, monumento a <strong>Ciano</strong>, vecchio faro, Castellaccio, sentiero immerso nella natura, possibilità di osservare asparagi.</li>
</ul>

<p>Non perdere l’occasione di vivere un’<em>escursione</em> indimenticabile lungo il sentiero <strong>Montenero - Ciano</strong>, un’esperienza unica alla scoperta della bellezza della Tuscia Viterbese.  Organizza il tuo <em>trekking</em> e preparati a vivere un’avventura nella <strong>montagna</strong>! </p>',
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
  'Escursione al Montenero: vista mozzafiato, santuario e Ciano! Facile da percorrere, con possibilità di allungare il sentiero. Scopri la natura!',
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

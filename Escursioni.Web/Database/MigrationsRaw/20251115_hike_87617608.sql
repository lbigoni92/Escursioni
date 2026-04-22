BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617608,
  'Eremo di san Viviano',
  'Eremo di San Viviano o San Viano (Eremo del Beato Viviano) m. 900 s.l.m. Il percorso è semplice e ben segnato noi l''abbiamo fatto in pomeridiana in 3 ore, carino da fare. Quest''estate era chiuso per restauro ma adesso ri è aperto, se passate in zona lo consiglio. Li parte anche un breve tratto EE esposto che consiglio di fare, porta a un punto panoramico bellissimo con vista su tutta la valle con Lago di Vagli. L''eremo di San Viviano o Viano è un suggestivo edificio scavato nella roccia viva a strapiombo della valle di Arnetola luogo di vita e di preghiera dell''eremita Viviano. Il piccolo santuario di San Viviano o Viano rappresenta una singolare cappella d''abri (sotto roccia) in area apuana. Situato a breve distanza da Campocatino, domina il Fosso della Tambura e la Valle di Arnetola.',
  '<h2>Eremo di San Viviano: Trekking e Escursioni in Montagna Toscana</h2>

<h3>Il Percorso di Trekking al Santuario di San Viviano</h3>

<p>Immergiti nella bellezza selvaggia della <strong>Toscana</strong> con questa splendida <strong>escursione</strong> al <strong>Eremo di San Viviano</strong>, un''esperienza di <strong>trekking</strong> autentica e indimenticabile. Il sentiero, di difficoltà semplice e ben segnalato, ti conduce attraverso un paesaggio montano mozzafiato, perfetto per <strong>escursionisti</strong> di ogni livello. Questo <strong>sentiero di trekking</strong> ti permette di esplorare la ricca natura dell''area e di ammirare panorami unici.</p>

<p>L''itinerario, di circa 3 ore percorsa, è ideale per una <strong>gita in montagna</strong> in pomeriggio. Il percorso offre una facile accessibilità, rendendolo una scelta perfetta per famiglie e appassionati di <strong>trekking</strong> alla ricerca di un''esperienza rilassante e gratificante in <strong>montagna</strong>.</p>

<h3>Cosa Aspettarsi Durante l''Escursione al Santuario</h3>

<ul>
  <li>Un percorso semplice e ben segnalato, adatto a <strong>escursionisti</strong> di tutti i livelli.</li>
  <li>La possibilità di ammirare panorami mozzafiato sulla <strong>Valle di Arnetola</strong> e il <strong>Lago di Vagli</strong>.</li>
  <li>L''opportunità di visitare l''<strong>Eremo del Beato Viviano</strong>, un luogo di preghiera e spiritualità immerso nella natura.</li>
  <li>Un breve tratto EE (Escursionistico) esposto, ideale per i più esperti, che conduce a un punto panoramico privilegiato.</li>
</ul>

<p>Questo <strong>sentiero escursionistico</strong> offre un''immersione completa nella <strong>natura</strong>, con la possibilità di osservare la flora e la fauna locale. L''<strong>Eremo di San Viviano</strong> è un esempio unico di architettura scavata nella roccia e rappresenta una tappa fondamentale per gli amanti del <strong>trekking</strong> e della <strong>montagna</strong> in <strong>Italia</strong>.</p>

<h3>Informazioni Utili per il Trekking al Santuario</h3>

<p>L''<strong>Eremo di San Viviano</strong>, situato a m. 900 s.l.m. vicino a <strong>Campocatino</strong>, domina il <strong>Fosso della Tambura</strong> e la <strong>Valle di Arnetola</strong>. È un luogo suggestivo, dove potrai trovare pace e tranquillità durante la tua <strong>escursione</strong>.  Ricorda che l''eremo è accessibile ed aperto, perfetto per un''esperienza di <strong>trekking</strong> di una giornata.</p>

<p>Questo <strong>sentiero</strong> offre una fantastica opportunità per un''<strong>escursione</strong> nella zona, ideale per chi cerca un''esperienza di <strong>trekking</strong> in <strong>montagna</strong>, con una distanza di circa 3 ore di cammino.  Esplora il fascino del <strong>sentiero Italia</strong> e scopri i segreti del <strong>Eremo di San Viviano</strong>!</p>',
  'Tutte le Attività e Paesi',
  5.49,
  702,
  677,
  1,
  13,
  '00:13',
  NULL,
  NULL,
  237,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vagli Sopra',
  '2021-06-01',
  '2021-06-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608',
  NULL,
  44.117711,
  10.268383,
  'POINT(10.268383 44.117711)',
  '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f',
  'Eremo di San Viviano (Toscana): escursione facile di 5.49km +702m a m.900. Anello panoramico con vista sul Lago di Vagli e valle Arnetola. Ideale!',
  'Eremo di San Viviano: Escursione Facile da Campocatino (Toscana)',
  'Alpi Apuane',
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
VALUES (87617608, 'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608', NOW(), '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617608);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617608/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617608;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  214180956,
  'Le non panie della croce e pizzo d''uccello',
  'Non siamo riusciti a raggiungere pania della croce per via della pioggia che c''ha pro dopo il Del Freo e arrivati quasi al Callare è peggiorato e abbiamo scelto di scendere... La cosa bella è stata la stufa del rifugio calda con persone cortese e gentili ci riproveremo!',
  '<h2>Escursione Trekking: Le Non Panie della Croce e Pizzo d''Uccello - Sentiero Italia</h2>

<h3>Il Percorso</h3>

<p>Questa magnifica <em>escursione trekking</em> in <strong>montagna</strong> vi condurrà attraverso il Parco Nazionale del Gran Sasso e Monti della Laga, a esplorare le splendide <strong>Le Non Panie della Croce e Pizzo d''Uccello</strong>.  L''<em>itinerario</em> è un''immersione nella natura selvaggia dell''Appennino centrale, con panorami mozzafiato sulla valle sottostante. Inizialmente il <em>sentiero</em> sale dolcemente, attraversando praterie e boschi di faggio, offrendo la possibilità di avvistare la fauna locale.  La difficoltà è considerata medio-alta, adatta a escursionisti esperti e appassionati di <em>trekking</em> che desiderano affrontare una vera sfida in <strong>Italia</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi ad una giornata di <em>trekking</em> impegnativa ma ricca di soddisfazioni. Il percorso è caratterizzato da alcuni tratti esposti e da un dislivello significativo.  La bellezza del sentiero risiede nella sua autenticità e nella purezza della natura circostante.  Avrete la possibilità di ammirare la flora e la fauna tipiche della macchia mediterranea e delle <em>montagne</em>, con la possibilità di avvistare il pizzo d''uccello, un’icona del territorio.  Potrete godere di un''<em>escursione</em> a piedi nella natura, respirando aria pulita e lasciandovi alle spalle lo stress della vita quotidiana.  Questo <em>sentiero</em> offre un''esperienza autentica di <em>trekking</em> in <strong>sentieri Italia</strong>.</p>

<p>A causa delle condizioni meteorologiche avverse, l''escursione è stata interrotta.  È fondamentale controllare le previsioni del tempo prima di intraprendere l''<em>escursione</em> e indossare abbigliamento e scarpe da trekking adatte.  In caso di pioggia o vento, è consigliabile rinunciare all''<em>escursione</em> per motivi di sicurezza.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Distanza:</strong> Circa 12 km (andata e ritorno)</li>
  <li><strong>Dislivello:</strong> Circa 800 metri</li>
  <li><strong>Difficoltà:</strong> Medio-Alta</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Rifugio Del Freo (accessibile in auto)</li>
  <li><strong>Comune:</strong>  San Giovanni Zinella, Abruzzo</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
  <li><strong>Parco Nazionale:</strong> Parco Nazionale del Gran Sasso e Monti della Laga</li>
</ul>

<p>Non dimenticate di portare con voi acqua, cibo, un kit di primo soccorso e una mappa del percorso.  Questo <em>sentiero</em> rappresenta un''ottima opportunità per un''<em>escursione</em> di un giorno o per un''<em>escursione</em> di più giorni.  Organizzate la vostra <em>trekking</em> nel cuore della natura in <strong>sentieri Italia</strong>!</p>',
  'Tutte le Attività e Paesi',
  15.8,
  900,
  700,
  1700,
  199,
  '03:19',
  199,
  '03:19',
  2615,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Levigliani',
  '2025-05-01',
  '2025-05-01',
  '2025-05-18 00:00:00',
  '2025-05-18 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/le-non-panie-della-croce-e-pizzo-duccello-214180956',
  NULL,
  44.034202,
  10.272197,
  'POINT(10.272197 44.034202)',
  '82ea18cd13f6bc96de450878f93339f0de20831de78edb099e994bc74a97ace8',
  'Escursione Levigliani - Pania della Croce: solo andata media, 15.8km. Rientrata causa maltempo. Rifugio caldo e cortesia! Toscana.',
  'Pizzo d''Uccello: escursione da Levigliani (Toscana)',
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
VALUES (214180956, 'https://it.wikiloc.com/percorsi-escursionismo/le-non-panie-della-croce-e-pizzo-duccello-214180956', NOW(), '82ea18cd13f6bc96de450878f93339f0de20831de78edb099e994bc74a97ace8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 214180956);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/214180956/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97480494,
  'Montenero - Vecchio faro',
  'Percorso ovviamente molto semplice, appena un chilometro, ma è interessante dal punto di vista storico, qua possiamo ammirare il vecchio faro di Livorno anche se oramai è un disuso. Il farò oramai è in stato di abbandono, e si trova vicino alla funicolare, ed è dietro a una delle più belle ville di Livorno',
  '<h2>Montenero - Vecchio Faro: Escursione Facile tra Storia e Natura a Livorno</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong> a <strong>Montenero</strong> offre un''esperienza breve ma ricca, ideale per una <strong>escursione</strong> di un solo chilometro. Il percorso è progettato per essere facilmente accessibile, rendendolo perfetto anche per i principianti o per chi cerca una <strong>trekking</strong> rilassante. Partendo dalla stazione della <strong>funicolare di Montenero</strong>, il sentiero si snoda dolcemente attraverso la campagna, offrendo panorami mozzafiato sulla città di <strong>Livorno</strong> e sul mare.</p>

<p>L''escursione si concentra sull''ammirazione del <strong>vecchio faro</strong>, un testimone del passato industriale di <strong>Livorno</strong>. La strada è poco impegnativa ed è una perfetta occasione per immergersi nella <strong>natura</strong> e nella <strong>montagna</strong> circostante.  Sarà un''esperienza indimenticabile per chi ama il <strong>trekking</strong> e le <strong>escursioni</strong> in <strong>Italia</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Distanza: 1 chilometro (andata e ritorno)</li>
  <li>Difficoltà: Molto Facile - Adatto a tutti</li>
  <li>Durata: Circa 1 ora</li>
  <li>Altitudine: Salita e discesa di circa 100 metri</li>
  <li>Punto di interesse principale: Il <strong>vecchio faro di Livorno</strong>, un sito storico di grande interesse.</li>
  <li>Ampiamente immersi nella <strong>natura</strong> e nei paesaggi della <strong>montagna</strong>.</li>
</ul>

<p>L''ambiente circostante è un paesaggio rurale con coltivazioni e vigneti, arricchito dalla presenza del mare.  Potrete godere della tranquillità della <strong>montagna</strong>, lontano dal caos della città, durante questa piacevole <strong>escursione</strong>.</p>

<h3>Informazioni Utili</h3>

<p>Il <strong>vecchio faro</strong> è ora in stato di abbandono, ma la sua posizione offre una vista unica sulla città di <strong>Livorno</strong> e sulla costa. Si trova proprio vicino alla stazione della <strong>funicolare di Montenero</strong> ed è facilmente raggiungibile.  L''escursione è un''opportunità per scoprire la storia e la bellezza di questo angolo di <strong>Italia</strong>, perfetto per una giornata di <strong>trekking</strong> o <strong>escursioni</strong>.</p>

<p><em>Ricordate di indossare scarpe da trekking adeguate e di portare con voi acqua e snack per la vostra escursione.</em></p>

<p>Questa <strong>trekking</strong> a <strong>Montenero</strong> è un''ottima scelta per chi cerca un''<strong>escursione</strong> breve e facile, immersa nella <strong>natura</strong> e nella storia di <strong>Livorno</strong>.  Approfittatene per una gita fuori porta e godetevi questo splendido <strong>sentiero</strong>.</p>',
  'Tutte le Attività e Paesi',
  1.19,
  35,
  73,
  115,
  16,
  '00:16',
  16,
  '00:16',
  190,
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
  'https://it.wikiloc.com/percorsi-escursionismo/montenero-vecchio-faro-97480494',
  NULL,
  43.497267,
  10.343448,
  'POINT(10.343448 43.497267)',
  '8b57c1137611401e27e6cb90d0dbbf2f810712fc8781a8d69289c943a761ae07',
  'Escursione facile al Vecchio Faro del Montenero a Livorno! Storia, panorama e funicolare. Un chilometro per un''esperienza unica!',
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
VALUES (97480494, 'https://it.wikiloc.com/percorsi-escursionismo/montenero-vecchio-faro-97480494', NOW(), '8b57c1137611401e27e6cb90d0dbbf2f810712fc8781a8d69289c943a761ae07')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97480494);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97480494/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97480494/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97480494/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

COMMIT;

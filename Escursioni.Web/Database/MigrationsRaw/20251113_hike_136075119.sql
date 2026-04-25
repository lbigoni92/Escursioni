BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  136075119,
  'Croce di Brancoli',
  'Partenza dalla Ex stazione di Piaggione e subito abbiamo iniziato la salita, il primo tratto 200-300 mt è pieno di piante e difficile da trovare, poi migliora. Parte del percorso si snoda su strade di montagna, poi si prende il sentiero (sempre ben segnato). All''arrivo alla croce sarà possibile leggere della storia del monumento e del perchè della sua realizzazione. da questo punto avremo un bellissima vista sulla piana di Lucca, vista stupenda che riavremo anche in diversi punti nella discesa. Il percorso non ha esposizioni o precipizi ma si è spesso sotto il sole. Consiglio acqua anche 2/m lt in estate',
  '<h2>Trekking Croce di Brancoli: Escursione in Montagna a Piaggione</h2>

<h3>Il Percorso</h3>
<p>Questo sentiero di trekking offre un’esperienza unica nella splendida regione della <strong>montagna lucchese</strong>. Partendo dalla <strong>Ex stazione di Piaggione</strong>, l''escursione inizia con un tratto in salita, particolarmente impegnativo nei primi 200-300 metri a causa della vegetazione fitta.  Successivamente, il percorso si dirama su strade di montagna, proseguendo sempre lungo il sentiero ben segnalato, ideale per un''<strong>escursione a piedi</strong> nella natura.</p>
<p>La <strong>croce di Brancoli</strong>, punto di arrivo, rappresenta un importante luogo di interesse, dove è possibile conoscere la storia del monumento e le motivazioni della sua realizzazione. L''<strong>trekking</strong> permette di ammirare una vista panoramica mozzafiato sulla <strong>piana di Lucca</strong>, uno dei punti salienti dell''intera escursione.</p>

<h3>Cosa Aspettarsi</h3>
<p>L’escursione alla Croce di Brancoli è adatta a escursionisti di livello intermedio, con una <strong>distanza di circa 5km</strong>. Nonostante la salita iniziale, il percorso non presenta esposizioni o precipizi, rendendolo accessibile a molti.  È importante però essere preparati al sole intenso, soprattutto durante i mesi estivi.  Un''adeguata idratazione è fondamentale, consigliate circa 2-3 litri d''acqua per l''intera <strong>escursione in montagna</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 5 km</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Punto di partenza:</strong> Ex stazione di Piaggione</li>
    <li><strong>Punto di arrivo:</strong> Croce di Brancoli</li>
    <li><strong>Caratteristiche:</strong> Sentiero ben segnalato, vista panoramica sulla piana di Lucca,  possibilità di conoscere la storia del monumento.</li>
    <li><strong>Consigli:</strong>  Adattare l''escursione alla propria preparazione fisica, portare acqua e cibo a sufficienza, indossare scarpe da trekking adatte, controllare le previsioni del tempo prima di partire.</li>
</ul>
<p>Preparatevi per un''indimenticabile <strong>trekking</strong> attraverso la natura selvaggia della <strong>montagna lucchese</strong>.  Questo sentiero è perfetto per chi cerca un''esperienza di <strong>escursione a piedi</strong> ricca di bellezza e storia.</p>',
  'Tutte le Attività e Paesi',
  16.15,
  765,
  40,
  698,
  387,
  '6:27',
  336,
  '5:36',
  2597,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Domazzano',
  '2023-05-01',
  '2023-05-01',
  '2023-05-28 00:00:00',
  '2023-05-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/croce-di-brancoli-136075119',
  NULL,
  43.937398,
  10.502822,
  'POINT(10.502822 43.937398)',
  '08597f154c33ec31f4d76ed28d87eacc7ddeaac77a4bbc70cfaa076fe20d88ee',
  'Escursione Croce di Brancoli Domazzano (Toscana): Anello di 16km, +765m di dislivello. Trekking facile/medio dalla Ex stazione di Piaggione con vista Lucca!',
  'Croce di Brancoli: Escursione da Piaggione (Toscana)',
  'Lucchesia e colline toscane',
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
VALUES (136075119, 'https://it.wikiloc.com/percorsi-escursionismo/croce-di-brancoli-136075119', NOW(), '08597f154c33ec31f4d76ed28d87eacc7ddeaac77a4bbc70cfaa076fe20d88ee')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 136075119);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/136075119/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136075119/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136075119;

COMMIT;

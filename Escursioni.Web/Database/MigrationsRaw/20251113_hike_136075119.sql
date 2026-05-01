BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  136075119,
  'Croce di Brancoli',
  'Partenza dalla Ex stazione di Piaggione e subito abbiamo iniziato la salita, il primo tratto 200-300 mt è pieno di piante e difficile da trovare, poi migliora. Parte del percorso si snoda su strade di montagna, poi si prende il sentiero (sempre ben segnato). All''arrivo alla croce sarà possibile leggere della storia del monumento e del perchè della sua realizzazione. da questo punto avremo un bellissima vista sulla piana di Lucca, vista stupenda che riavremo anche in diversi punti nella discesa. Il percorso non ha esposizioni o precipizi ma si è spesso sotto il sole. Consiglio acqua anche 2/m lt in estate',
  '<h2 id="escursione-croce-di-brancoli">Escursione alla Croce di Brancoli da Piaggione</h2>

<p>
  Amici escursionisti, oggi vi racconto un''escursione semplice ma ricca di soddisfazioni, perfetta per chi cerca un bel panorama e una dose di storia. Partendo da <strong>Piaggione</strong>, la nostra <strong>escursione</strong> di tipo <strong>anello</strong> ci porta fino alla suggestiva <strong>Croce di Brancoli</strong>, nel cuore del Comune di <strong>Domazzano</strong>, in provincia di <strong>Lucca</strong>.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
  Per raggiungere il punto di partenza, la <strong>Ex stazione di Piaggione</strong>, è necessario arrivare a Piaggione in auto. Il parcheggio è disponibile nei pressi della stazione. Da qui, seguiamo il sentiero di partenza, facilmente individuabile.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
  L''<strong>escursione</strong> inizia con una salita iniziale, un tratto di circa 200-300 metri, caratterizzato da vegetazione fitta e alcuni tratti un po'' scoscesi. Una volta superato questo tratto, il sentiero migliora, snodandosi su strade di montagna e poi seguendo un <strong>sentiero</strong> ben segnalato. Durante il percorso, avremo diverse occasioni per ammirare un bellissimo <strong>panorama</strong> sulla <strong>piana di Lucca</strong>. Il sentiero è ben tenuto, anche se a volte ci si trova sotto il sole, quindi è consigliabile portare con sé acqua. L''arrivo alla <strong>Croce di Brancoli</strong> ci permette di conoscere la storia del monumento e la ragione della sua realizzazione.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
  Questa <strong>escursione</strong> è di difficoltà <strong>media</strong>, adatta a escursionisti con un minimo di esperienza. Il <strong>dislivello</strong> è di circa 765 metri, e la <strong>distanza</strong> totale è di circa 16,15 km. È importante indossare scarpe da trekking e portare con sé acqua e snack.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
  (Qui inserirebbe la traccia GPS e dettagli pratici relativi all''escursione - da generare separatamente)
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 16.15 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 765 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Ex stazione di Piaggione, accessibile in auto</li>
  <li><strong>Comune:</strong> Domazzano, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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

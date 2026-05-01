BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  226767789,
  'Treschietto - Pisciaron de pungitopo - Bagnone',
  'Percorso da Treschietto a Bagnone passando per: - Pisciaron de pungitopo (8.1 km)',
  '<h2 id="treschietto-pisciaron-de-pungitopo-bagnone">Escursione al Treschietto - Pisciaron de Pungitopo - Bagnone</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza dell''escursione, si parte da <strong>Treschietto</strong>, un piccolo borgo immerso nel cuore della Val di Camporealto. L''accessibile in auto lungo la strada statale </a>, oppure si può arrivare a piedi da paesi limitrofi, godendosi i primi chilometri del sentiero. Il parcheggio più comodo si trova all''inizio del percorso, segnalato con pannelli indicatore.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione è un vero gioiello nel cuore della <strong>Toscana</strong>. Partendo da <strong>Treschietto</strong>, il sentiero ci conduce inizialmente in salita, guadagnando terreno con diversi tornanti. Il tratto più suggestivo è quello che porta al <strong>Pisciaron de Pungitopo</strong>, una vetta panoramica da cui si gode di una vista mozzafiato sulla Val di Camporealto. Il sentiero prosegue poi verso <strong>Bagnone</strong>, un paese caratteristico con case in pietra e una fortezza medievale. Il percorso è ben segnalato e offre diverse opportunità per ammirare il paesaggio montano.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>L''escursione al <strong>Treschietto - Pisciaron de Pungitopo - Bagnone</strong> presenta una <strong>difficoltà media</strong>, adatta a escursionisti abituali. Il <strong>dislivello di 355 metri</strong> richiede una buona preparazione fisica, ma il percorso è ben tracciato e offre punti di appoggio per riposare. Si consiglia di indossare scarpe da trekking adatte e di portare con sé acqua e cibo, soprattutto se si prevede di percorrere l''intero tragitto. La durata consigliata è di circa 6-8 ore.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per facilitare l''escursione, è consigliabile scaricare una <strong>traccia GPS</strong> del percorso.  Il sentiero è di tipo <strong>solo andata</strong> da Treschietto a Bagnone. Per maggiori informazioni e dettagli sul sentiero, si consiglia di consultare la mappa escursionistica del territorio.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> 20.31 km</li>
  <li><strong>Dislivello:</strong> 355 m</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Treschietto, accessibile in auto</li>
  <li><strong>Comune:</strong> Treschietto, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  20.31,
  355,
  257,
  503,
  392,
  '6:32',
  340,
  '5:40',
  2928,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Treschietto',
  '2025-08-01',
  '2025-08-01',
  '2025-08-14 00:00:00',
  '2025-08-14 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/treschietto-pisciaron-de-pungitopo-bagnone-226767789',
  NULL,
  44.337207,
  10.017415,
  'POINT(10.017415 44.337207)',
  '093f8f99981794b1e091877cad20cb254ac11c16b3d7a32a361c6b4e6ec29427',
  'Escursione Treschietto - Pisciaron de pungitopo: trekking in Toscana, 20.31km, +355m. Percorso medio da Bagnone a Treschietto. Ideale per amanti del sentiero!',
  'Pisciaron de Pungitopo: Escursione da Bagnone (Toscana)',
  'Lunigiana',
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
VALUES (226767789, 'https://it.wikiloc.com/percorsi-escursionismo/treschietto-pisciaron-de-pungitopo-bagnone-226767789', NOW(), '093f8f99981794b1e091877cad20cb254ac11c16b3d7a32a361c6b4e6ec29427')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 226767789);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/226767789/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

COMMIT;

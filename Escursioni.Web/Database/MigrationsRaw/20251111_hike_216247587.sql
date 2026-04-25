BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  216247587,
  'Val di chioma ~ Anello tra Torre del Piastrone e laghetto delle Pianacce',
  'Anello tra Torre del Piastrone e laghetto delle Pianacce – 22 km | 600 m D+ Si parte dalla località Le Palazzine, dove è subito possibile godere di un meraviglioso punto panoramico, per poi scendere verso la Val di Chioma lungo la sua omonima via. Il percorso è semplice e in parte ombreggiato. Molto suggestivo è un ponte che attraversa il Botro di Quarrata, costeggiando il fiume Chioma. La discesa prosegue fino a sfiorare il Villaggio Azzurro, dove si svolta a destra e si affrontano tratti più soleggiati, fino a raggiungere la Torre del Piastrone (nei pressi della quale dovrebbe trovarsi anche una croce, che però non abbiamo individuato). Da lì ci siamo diretti verso il laghetto delle Pianacce, anche se per raggiungerlo abbiamo attraversato una zona un po’ selvaggia, quasi da “giungla” – consiglio quindi una strada alternativa. Il laghetto è carino, con tante piccole rane e diverse forme di vita acquatica. Successivamente siamo risaliti fino alla zona detta Casa dei Corsi, per poi scendere nuovamente verso il Botro di Chioma. Da lì abbiamo ripreso il cammino lungo la stessa strada dell’andata, fino a tornare alle auto. Un sentiero molto bello e vario, che consiglio vivamente, anche se un po’ lungo.',
  '<h2>Val di Chioma ~ Anello tra Torre del Piastrone e laghetto delle Pianacce - Trekking in Toscana</h2>

<h3>Il percorso: Escursione in Montagna lungo il Sentiero</h3>
<p>
Immagina di intraprendere un’affascinante <strong>escursione di trekking</strong> attraverso il <strong>Val di Chioma</strong>, un incantevole <strong>anello di sentiero</strong> che ti conduce alla maestosa <strong>Torre del Piastrone</strong> e al pittoresco <strong>laghetto delle Pianacce</strong>. Questo <strong>sentiero di trekking</strong>, lungo 22 km e con un dislivello di 600 metri, è perfetto per amanti della <strong>natura</strong> e della <strong>montagna</strong> alla ricerca di un''esperienza autentica. L''<strong>escursione</strong> inizia dalla suggestiva località Le Palazzine, offrendo subito una vista mozzafiato.
</p>

<h3>Cosa aspettarsi: Trekking nella Val di Chioma</h3>
<ul>
    <li>Un percorso di <strong>trekking</strong> di media difficoltà, ideale per escursionisti esperti.</li>
    <li>Un''<strong>escursione di più giorni</strong>, se desideri esplorare appieno la zona.</li>
    <li>Un’esperienza immersiva nella <strong>natura</strong> della <strong>Toscana</strong>, con ampie distese di boschi e panorami mozzafiato.</li>
    <li>Un''opportunità per praticare <strong>trekking</strong> e <strong>escursioni</strong> in un ambiente naturale incontaminato.</li>
</ul>

<h3>Informazioni utili: Dettagli del Sentiero Escursionistico</h3>
<p>
Il <strong>sentiero</strong> si snoda attraverso la <strong>Val di Chioma</strong>, seguendo la via omonima. Percorrerai un tratto semplice e in parte ombreggiato, ammirando il suggestivo <strong>ponte che attraversa il Botro di Quarrata</strong>, costeggiando il fiume Chioma. Il percorso prosegue fino al Villaggio Azzurro, con tratti più soleggiati fino alla <strong>Torre del Piastrone</strong>. Successivamente, raggiungerai il caratteristico <strong>laghetto delle Pianacce</strong>, un''oasi di pace con diverse forme di vita acquatica, anche se l''ultimo tratto verso il laghetto può essere un po’ selvaggio. Il sentiero poi riprende la sua direzione, fino a tornare al punto di partenza, Le Palazzine. Questa <strong>escursione di trekking</strong> è un''ottima opzione per chi cerca un''<strong>escursione in Toscana</strong>.</p>
<p>
La distanza totale è di 22 km e il dislivello di 600 metri. Questo rende la <strong>trekking</strong> adatta a escursionisti allenati. La <strong>trekking</strong> può essere un''ottima opportunità per un''<strong>escursione in famiglia</strong>, considerando che il sentiero è moderatamente impegnativo.</p>',
  'Tutte le Attività e Paesi',
  22.56,
  448,
  20,
  244,
  447,
  '7:27',
  389,
  '6:29',
  3757,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Malavolta',
  '2025-06-01',
  '2025-06-01',
  '2025-06-01 00:00:00',
  '2025-06-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/val-di-chioma-anello-tra-torre-del-piastrone-e-laghetto-delle-pianacce-216247587',
  NULL,
  43.500106,
  10.412172,
  'POINT(10.412172 43.500106)',
  '8676663ee8ab4f29742ed55a1c57aafec2b71b973267dc8b5aafd9537ee3c1c7',
  'Escursione Val di Chioma: Anello Toscana 22.5km | 600m D+ Torre Piastrone, laghetto Pianacce. Trek facile Malavolta. Ideale per famiglie!',
  'Val di Chioma: escursione da Le Palazzine (anello 22km)',
  'Livorno e costa toscana',
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
VALUES (216247587, 'https://it.wikiloc.com/percorsi-escursionismo/val-di-chioma-anello-tra-torre-del-piastrone-e-laghetto-delle-pianacce-216247587', NOW(), '8676663ee8ab4f29742ed55a1c57aafec2b71b973267dc8b5aafd9537ee3c1c7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 216247587);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/216247587/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/216247587/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 216247587;

COMMIT;

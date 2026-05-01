BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  216247587,
  'Val di chioma ~ Anello tra Torre del Piastrone e laghetto delle Pianacce',
  'Anello tra Torre del Piastrone e laghetto delle Pianacce – 22 km | 600 m D+ Si parte dalla località Le Palazzine, dove è subito possibile godere di un meraviglioso punto panoramico, per poi scendere verso la Val di Chioma lungo la sua omonima via. Il percorso è semplice e in parte ombreggiato. Molto suggestivo è un ponte che attraversa il Botro di Quarrata, costeggiando il fiume Chioma. La discesa prosegue fino a sfiorare il Villaggio Azzurro, dove si svolta a destra e si affrontano tratti più soleggiati, fino a raggiungere la Torre del Piastrone (nei pressi della quale dovrebbe trovarsi anche una croce, che però non abbiamo individuato). Da lì ci siamo diretti verso il laghetto delle Pianacce, anche se per raggiungerlo abbiamo attraversato una zona un po’ selvaggia, quasi da “giungla” – consiglio quindi una strada alternativa. Il laghetto è carino, con tante piccole rane e diverse forme di vita acquatica. Successivamente siamo risaliti fino alla zona detta Casa dei Corsi, per poi scendere nuovamente verso il Botro di Chioma. Da lì abbiamo ripreso il cammino lungo la stessa strada dell’andata, fino a tornare alle auto. Un sentiero molto bello e vario, che consiglio vivamente, anche se un po’ lungo.',
  '<h2 id="escursione-val-di-chioma-anello-tra-torre-del-piastrone-e-laghetto-delle-pianacce">Escursione al Val di Chioma – Anello tra Torre del Piastrone e Laghetto delle Pianacce</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa splendida escursione è situato a <strong>Le Palazzine</strong>, facilmente raggiungibile in auto. Da qui, il sentiero inizia subito a regalare panorami mozzafiato sulla Val di Chioma.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Partendo da Le Palazzine, si segue un sentiero facile e in parte ombreggiato attraverso la Val di Chioma. Il percorso è ricco di momenti suggestivi, culminando con un attraversamento del <strong>Botro di Quarrata</strong>, un affascinante fiume. La discesa continua fino a raggiungere la <strong>Torre del Piastrone</strong>, e poi si prosegue verso il suggestivo <strong>laghetto delle Pianacce</strong>. Attenzione, l''ultimo tratto verso il laghetto è un po'' selvaggio e consigliabile una strada alternativa. Il ritorno avviene seguendo lo stesso percorso, ripercorrendo la Val di Chioma fino al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di livello <strong>medio</strong>. La distanza è di circa 22.56 km con un dislivello positivo di 448 metri. Il sentiero è ben tenuto, ma richiede una buona preparazione fisica. Preparati a tratti in salita e discesa, e a un percorso vario che ti porterà attraverso boschi, prati e lungo il fiume.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<ul id="traccia-gps-e-informazioni-pratiche">
    <li><strong>Distanza:</l> 22.56 km (anello)</li>
    <li><strong>Dislivello:</l> 448 metri</li>
    <li><strong>Difficoltà:</l> Media</li>
    <li><strong>Periodo consigliato:</l> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</l> Le Palazzine, accessibile in auto</li>
    <li><strong>Comune:</l> Malavolta, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</l> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong>Distanza:</l> Circa 22.56 km (anello)</li>
    <li><strong>Dislivello:</l> Circa 448 metri</li>
    <li><strong>Difficoltà:</l> Media</li>
    <li><strong>Periodo consigliato:</l> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</l> Le Palazzine, accessibile in auto</li>
    <li><strong>Comune:</l> Malavolta, Toscana</li>
    <li><strong>Tipo di sentiero:</l> Sentiero escursionistico</li>
</ul>',
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

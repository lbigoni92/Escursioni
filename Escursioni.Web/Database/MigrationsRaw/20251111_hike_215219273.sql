BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  215219273,
  'Botro del Diavolo',
  'Escursione al Botro del Diavolo – Un viaggio tra natura e meraviglia nascosta Un’escursione semplice ma ricca di fascino nel cuore delle colline livornesi, perfetta per chi ama immergersi nella natura senza affrontare difficoltà tecniche elevate. Siamo partiti dal suggestivo parco di Villa Rodocanacchi, attraversando un tratto del sentiero 136 fino a un piccolo sentiero secondario che ci ha condotti a Villa Doupouy, nei pressi di Monterotondo. Da lì abbiamo proseguito lungo il tracciato, circondati da un paesaggio verde e rilassante, fino a raggiungere delle piccole cascate incastonate nel bosco. Per arrivarci è stato necessario risalire brevemente il torrente, ma nulla di impegnativo: un pizzico di avventura in mezzo all’acqua! Dopo la pausa alle cascatelle, siamo rientrati sul sentiero del Pellegrino (tratti del 140 e del 132), dove ci siamo fermati per il pranzo in un’area picnic attrezzata. Da lì, la discesa è proseguita lungo sentieri utilizzati anche per la mountain bike, che ci hanno portato fino alla strada. Dopo aver attraversato un piccolo ponte, abbiamo affrontato l’ultimo tratto di cammino che ci ha condotti alla meta principale della giornata: il Botro del Diavolo. Questo canyon nascosto, scolpito dal fiume nel diaspro rosso, è un luogo davvero unico e affascinante. Selvaggio, silenzioso, incantevole: il Botro regala uno spettacolo naturale raro, che lascia a bocca aperta. Il ritorno si è svolto su sentieri di bassa difficoltà, nuovamente lungo percorsi da mountain bike, completando così un anello escursionistico vario, panoramico e stimolante. 🔸 Difficoltà: Facile 🔸 Lunghezza: Media – escursione di una giornata 🔸 Ideale per: amanti della natura, trekking leggeri, esploratori curiosi Una giornata all’insegna della scoperta, tra boschi, ruscelli e canyon, in un angolo poco conosciuto ma meraviglioso del territorio livornese.',
  '<h2>Botro del Diavolo Trekking: Escursione Facile nel Canyon Rosso delle Colline Livornesi</h2>

<h3>Il Percorso</h3>
<p>Questa <strong>escursione nel Botro del Diavolo</strong> è un''opportunità unica per immergerti nella natura incontaminata delle <strong>colline livornesi</strong>. Il <strong>sentiero di trekking</strong> ti condurrà attraverso un percorso vario e affascinante, combinando tratti di sentieri naturalistici, percorsi da <strong>mountain bike</strong> e brevi salite, perfetto per un''<strong>escursione di una giornata</strong>.</p>
<p>Partiremo dal <strong>parco di Villa Rodocanacchi</strong>, seguendo il <strong>sentiero 136</strong> fino a un sentiero secondario che ci porterà a <strong>Villa Doupouy</strong>, nei pressi di <strong>Monterotondo</strong>. Il percorso proseguirà attraverso boschi, attraversando un piccolo torrente, offrendo un’esperienza di <strong>trekking</strong> facile e divertente.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un''escursione di <strong>media difficoltà</strong>, ideale per <strong>amanti della natura</strong> e <strong>trekking leggeri</strong>.</li>
    <li>La possibilità di ammirare <strong>piccole cascate incastonate nel bosco</strong>, un''oasi di freschezza e bellezza.</li>
    <li>Un''immersione in un <strong>canyon nascosto</strong>, il <strong>Botro del Diavolo</strong>, scolpito dal fiume nel <strong>diaspro rosso</strong>, un paesaggio selvaggio e affascinante.</li>
    <li>Percorsi adatti anche alla <strong>mountain bike</strong>, offrendo una varietà di esperienze.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Questa <strong>escursione nel Botro del Diavolo</strong> è perfetta per chi cerca un''esperienza di <strong>trekking</strong> semplice ma ricca di emozioni. La <strong>lunghezza del sentiero</strong> è media, e l''altimetria è accessibile a tutti. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua e cibo per la pausa pranzo, che potrai gustare in un''area picnic attrezzata.</p>
<p>Il <strong>Botro del Diavolo</strong> è un luogo raro e suggestivo, un vero gioiello nascosto nel cuore delle <strong>colline livornesi</strong>.  Un’<strong>escursione nel territorio italiano</strong> per scoprire angoli remoti e affascinanti.</p>
<p><em>Ideale per esploratori curiosi e per chi desidera un''escursione semplice ma spettacolare tra natura e canyon.</em></p>',
  'Tutte le Attività e Paesi',
  15.9,
  477,
  50,
  270,
  339,
  '5:39',
  295,
  '4:55',
  2698,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Villa Maria',
  '2025-05-01',
  '2025-05-01',
  '2025-05-25 00:00:00',
  '2025-05-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/botro-del-diavolo-215219273',
  NULL,
  43.513375,
  10.346827,
  'POINT(10.346827 43.513375)',
  'ebc99fc0d03ba3ee5fa268772e79c40ac008d67d4da1b5208b24dee1ca96f47e',
  'Escursione Botro del Diavolo Villa Maria: trekking facile 15.9km, 477m dislivello. Scopri il canyon diaspro toscano! Percorso anello zona Grosseto.',
  'Botro del Diavolo: Escursione Facile da Villa Rodocanacch...',
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
VALUES (215219273, 'https://it.wikiloc.com/percorsi-escursionismo/botro-del-diavolo-215219273', NOW(), 'ebc99fc0d03ba3ee5fa268772e79c40ac008d67d4da1b5208b24dee1ca96f47e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 215219273);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/215219273/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/215219273/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 215219273;

COMMIT;

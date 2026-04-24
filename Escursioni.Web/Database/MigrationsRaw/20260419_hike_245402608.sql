BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  245402608,
  'Tra borghi e panorami: da Calci a Montemagno tra natura e convivialità',
  'Il giro parte da Calci e conduce verso la Certosa di Calci (antico complesso monastico certosino fondato nel XIV secolo, oggi sede anche di musei, immerso in un contesto naturale di grande pregio).

Da qui il percorso prosegue entrando gradualmente nel bosco, dopo un breve tratto su strada di campagna, regalando subito una sensazione di immersione nella natura.

Si raggiunge quindi Montemagno (caratteristico borgo collinare di origine medievale, noto per la sua posizione panoramica e l’atmosfera autentica), da cui si prosegue lungo diversi sentieri CAI.

Il tragitto offre scorci davvero notevoli sulla vallata sottostante: nelle giornate limpide si riesce a distinguere chiaramente anche la Torre di Pisa, oltre a un ampio panorama che abbraccia tutta la piana pisana.

Si arriva poi alla Chiesa dei Santi Jacopo e Verano, da cui il percorso inizia gradualmente la discesa.

L’obiettivo del giro, più che la performance sportiva, è stato quello di ritagliarsi un momento conviviale: una pausa semplice per un piccolo picnic tra amici, condividendo cibo e tempo insieme immersi nella tranquillità del paesaggio.
',
  '<h2>Tra borghi e panorami: da Calci a Montemagno tra natura e convivialità</h2>

<h3>Il percorso</h3>
<p>Questo <strong>sentiero di trekking</strong>, ideale per un''<strong>escursione</strong> nella <strong>montagna</strong>, parte dal pittoresco paese di <strong>Calci</strong> e si snoda attraverso paesaggi mozzafiato fino a <strong>Montemagno</strong>.  L''<strong>escursione</strong> è pensata per chi cerca un''esperienza di <strong>trekking</strong> autentica, immersa nella <strong>natura</strong> italiana, perfetta per un''uscita a piedi con gli amici o in famiglia.  Il percorso offre la possibilità di scoprire un borgo medievale e di godere di panorami unici sulla piana pisana.</p>
<p>Il giro si caratterizza per un andamento prevalentemente pianeggiante, con brevi tratti su strada di campagna e immersione nel bosco.  L''obiettivo principale di questa <strong>trekking</strong> è il relax e il godimento della bellezza del paesaggio, un''opportunità per praticare <strong>trekking</strong> e <strong>escursioni</strong> in un contesto naturale incontaminato.  Sarà un''occasione per praticare <strong>trekking</strong> e <strong>escursioni</strong> nella splendida regione Toscana, famosa per i suoi sentieri e panorami.</p>

<h3>Cosa aspettarsi</h3>
<p>Preparatevi a circa 8-10 chilometri di <strong>sentiero</strong>, con un dislivello contenuto.  L''<strong>escursione</strong> è adatta a escursionisti occasionali e famiglie, ma è importante indossare scarpe da <strong>trekking</strong> e abbigliamento adeguato.  L''ambiente naturale è particolarmente suggestivo, con boschi rigogliosi e panorami a picco sulla vallata.  Godetevi la pace e la tranquillità del paesaggio, ideale per un''<strong>escursione</strong> rilassante e rigenerante.  La possibilità di ammirare la Torre di Pisa aggiunge un tocco di fascino a questo splendido <strong>sentiero</strong>.</p>
<p>Durante l''<strong>trekking</strong> potrete apprezzare la ricchezza della flora e della fauna locale, oltre alla maestosità della Certosa di Calci.  La giornata culminerà con un momento di convivialità, perfetto per un <strong>picnic</strong> in un ambiente naturale.  Questo <strong>sentiero</strong> è una perfetta combinazione tra natura, cultura e relax, perfetto per un''<strong>escursione</strong> a piedi in Toscana.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 8-10 km</li>
    <li><strong>Dislivello:</strong> Minimo</li>
    <li><strong>Punto di partenza:</strong> Calci</li>
    <li><strong>Punto di arrivo:</strong> Montemagno</li>
    <li><strong>Tempi di percorrenza:</strong> 3-4 ore</li>
    <li><strong>Caratteristiche:</strong> <strong>Sentiero</strong> CAI, panorami sulla piana pisana, borgo medievale di <strong>Montemagno</strong>, Certosa di Calci, ideale per un''<strong>escursione</strong> a piedi.</li>
</ul>
<p>Questo <strong>sentiero</strong> rappresenta un''opportunità unica per vivere un''<strong>escursione</strong> immersa nella natura, esplorando i borghi medievali della Toscana.  Ricordate di portare con voi acqua, snack e protezione solare per godervi appieno questa magnifica <strong>trekking</strong> esperienza.</p>',
  'Tutte le Attività e Paesi',
  10.19,
  369,
  37,
  312,
  227,
  '3:47',
  197,
  '3:17',
  1777,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calci',
  '2025-12-01',
  '2025-12-01',
  '2025-12-31 00:00:00',
  '2025-12-31 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calci-245402608',
  NULL,
  43.722882,
  10.522055,
  'POINT(10.522055 43.722882)',
  '43fd17452b71a92238471d9d17fc10e7949ce9af8dc71ae2511a96c69a5613a9',
  'Escursione Calci Montemagno: Anello in Toscana, difficoltà media (10km, 369m dislivello). Esplora borghi e panorami sulla pianura pisana e la Certosa di Calci!',
  'Montemagno da Calci: Escursione Panoramica Toscana',
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
VALUES (245402608, 'https://it.wikiloc.com/percorsi-escursionismo/calci-245402608', NOW(), '43fd17452b71a92238471d9d17fc10e7949ce9af8dc71ae2511a96c69a5613a9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 245402608);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/245402608/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/245402608/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 245402608;

COMMIT;

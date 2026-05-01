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
  '<h2 id="tra-borghi-e-panorami-da-calci-a-montemagno-tra-natura-e-convivialita">Tra borghi e panorami: da Calci a Montemagno tra natura e convivialità</h2>

<p>Avete voglia di un''escursione diversa, un mix di natura, cultura e convivialità?  L''escursione da Calci a Montemagno è la risposta! Questo giro di trekking, di circa 10 km, vi porterà attraverso paesaggi collinari toscani, con panorami mozzafiato e la possibilità di fare una pausa rilassante in un borgo autentico.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza è a Calci, facilmente raggiungibile in auto.  Da qui, seguendo le indicazioni per la Certosa di Calci, vi troverete all''inizio del sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia da Calci e segue un percorso che si snoda tra campi coltivati e boschi.  Percorrerete un breve tratto su strada di campagna, per poi inoltrarvi gradualmente nel bosco. Raggiungerete Montemagno, un caratteristico borgo collinare, da cui proseguirete lungo diversi sentieri CAI. Il tragitto offre scorci spettacolari sulla vallata sottostante, con la possibilità di ammirare la Torre di Pisa in giornate limpide e un''ampia panoramica sulla pianura pisana.  Il percorso culmina con una discesa fino alla Chiesa dei Santi Jacopo e Verano, da qui inizierà la discesa verso il punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà <strong>media</strong>.  Il dislivello è di circa 369 metri, quindi è consigliabile avere un minimo di allenamento.  Il sentiero è ben segnalato e il percorso è generalmente facile, adatto a escursionisti occasionali con un minimo di esperienza.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per visualizzare la traccia GPS e le informazioni pratiche per l''escursione, vi rimandiamo a siti specializzati (da integrare con link esterni al futuro).</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 10.19 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 369 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Calci, accessibile in auto</li>
  <li><strong>Comune:</strong> Calci, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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
  'Monti Pisani',
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

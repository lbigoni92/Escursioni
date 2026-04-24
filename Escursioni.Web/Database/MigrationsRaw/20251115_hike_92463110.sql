BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92463110,
  'Lago della Gherardesca',
  'Noto anche con i nomi "lago di Sesto" (icino ad esso sorgeva un castello che prese il nome dalla sesta pietra miliare esistita sulla vicina strada maestra che da Lucca guida nel Valdarno inferiore) o "lago di Bientina" Durante la Seconda Guerra Mondiale, nel 1941, fu costruito un campo di concentramento per più di 3000 prigionieri inglesi, civili, politici, ebrei: il P.G n° 60, in una località detta “Il Pollino”. Classica passeggiata per amanti del le fotografie, passeggiate con ik cane o pic nik con la famiglia. Ci passano anche a cavallo. Vi sono numerosi punti per fare foto a uccelli di vario tipo. Lungo il percorso possiamo trovare anche un monumento alla memoria. Non ci sono fontanelle Consiglio scarponcini se ha piovuto di recente',
  '<h2>Trekking Lago della Gherardesca: Escursione e Sentiero nella Val d''Arno</h2>

<h3>Il Percorso</h3>
<p>Immergiti in un''escursione indimenticabile lungo il sentiero che conduce al pittoresco <strong>Lago della Gherardesca</strong>, un gioiello nascosto nella splendida regione Toscana. Questo classico <strong>sentiero di trekking</strong> è perfetto per appassionati di <strong>escursioni</strong> e amanti della <strong>montagna</strong> e della <strong>natura</strong>. Il percorso offre una camminata rilassante attraverso paesaggi mozzafiato, con panorami sulle colline circostanti e il lago stesso.  Adatto a famiglie, a chi ama le <strong>passeggiate con il cane</strong> o per un piacevole <strong>picnic</strong>, questo <strong>sentiero di trekking</strong> ti regalerà momenti di tranquillità e bellezza.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati ad ammirare la bellezza naturale del <strong>Lago della Gherardesca</strong>, un lago di origine antica circondato da una vegetazione rigogliosa.  Il sentiero è ben segnalato, ma si consiglia di indossare scarpe da trekking, soprattutto dopo la pioggia, per garantire una camminata sicura e confortevole.  Avrai l''opportunità di scattare fotografie di splendidi uccelli e di ammirare il <strong>monumento alla memoria</strong> che omaggia le storie del passato. Questa <strong>escursione nel cuore della Toscana</strong> è un''occasione unica per scoprire un angolo di paradiso e immergerti nella tranquillità della natura.  Un''esperienza ideale per un''<strong>escursione mattutina</strong> o un''<strong>passeggiata serale</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile - Media</li>
    <li><b>Distanza:</b> Circa 6 - 8 km (il percorso può variare leggermente)</li>
    <li><b>Dislivello:</b> Circa 150 - 200 metri</li>
    <li><b>Tempi di percorrenza:</b> 2 - 3 ore (a seconda del ritmo)</li>
    <li><b>Punti di Interesse:</b> Lago della Gherardesca, <strong>monumento alla memoria</strong>, punti panoramici, osservazione degli uccelli.</li>
    <li><b>Consigli:</b> Scarponcini da trekking consigliati, acqua, snack, protezione solare, macchina fotografica per immortalare i panorami.</li>
</ul>

<p>Durante la Seconda Guerra Mondiale, l''area del <strong>Lago della Gherardesca</strong> era sede del P.G n° 60, un campo di prigionia per prigionieri di guerra e civili. Un luogo che invita alla riflessione e alla memoria.  Esplora il sentiero e scopri la storia di questo luogo, godendo al contempo della bellezza del paesaggio.  Un''<strong>escursione significativa</strong> per tutti gli amanti del <strong>trekking in Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  3.52,
  40,
  8,
  46,
  66,
  '1:06',
  58,
  '0:58',
  627,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Colle di Compito',
  '2022-01-01',
  '2022-01-01',
  '2022-01-09 00:00:00',
  '2022-01-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lago-della-gherardesca-92463110',
  NULL,
  43.780647,
  10.60673,
  'POINT(10.60673 43.780647)',
  'e5a198f1169cfa7f2f35020eae8a4a689dadc76750700342aac1a41e3388e74f',
  'Escursione Lago della Gherardesca (Colle di Compito, Toscana): percorso facile di 3.5km, +7m, ideale per famiglie e amanti della fotografia. Info e consigli!',
  'Lago della Gherardesca: Escursione Facile da Bientina (To...',
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
VALUES (92463110, 'https://it.wikiloc.com/percorsi-escursionismo/lago-della-gherardesca-92463110', NOW(), 'e5a198f1169cfa7f2f35020eae8a4a689dadc76750700342aac1a41e3388e74f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92463110);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92463110/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92463110/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92463110;

COMMIT;

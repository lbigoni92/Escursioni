BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  183876035,
  'Praga 3',
  'Ultimo bellissimo giro nella città di Praga Il Ponte Carlo (in ceco Karlův most; in tedesco Karlsbrücke) è uno storico ponte in pietra sulla Moldava, situato nella città di Praga, e collega la Città Vecchia al quartiere di Malá Strana: è tra i più famosi monumenti della capitale della Repubblica Ceca. Misura 515 m di lunghezza, ha una larghezza compresa tra i 9,40 e 9,50 m e un''altezza di 13 m sopra il livello normale della Moldava.[1] Il ponte è una delle più grandi attrazioni turistiche della città, ed è molto frequentato dagli artisti di strada, dai musicisti e dai venditori di "souvenir" durante tutto l''anno. L''Orologio astronomico di Praga (in ceco Staroměstský Orloj, "orologio della Città Vecchia"), è un monumento scientifico del periodo medioevale, situato nella capitale della Repubblica Ceca. L''orologio è montato sul lato sud del municipio della Città Vecchia, nella piazza della Città Vecchia ed è una delle più importanti attrazioni turistiche della città. Il meccanismo è composto da tre elementi principali: il quadrante astronomico, sul quale, oltre all''ora, sono rappresentate le posizioni in cielo del Sole e della Luna, insieme ad altre informazioni astronomiche; il "Corteo degli Apostoli", un meccanismo che, allo scoccare di ogni ora, mette in movimento delle figure rappresentanti i dodici apostoli; e un quadrante inferiore composto da 12 medaglioni raffiguranti i mesi dell''anno.',
  '<h2>Trekking Praga 3: Escursione Autentica nel Cuore di Praga</h2>

<h3>Il Percorso</h3>
<p>Questo suggestivo trekking ti conduce attraverso le meraviglie di Praga, offrendo un''escursione indimenticabile per gli amanti del trekking e della natura. Il sentiero ti porterà ad esplorare angoli nascosti della città, con panorami mozzafiato sul fiume Moldava e sulle sue rive. L''escursione è progettata per offrire un''esperienza autentica, permettendoti di immergerti nella cultura e nella storia di Praga, perfetta per una giornata di <strong>trekking</strong> o un''<strong>escursione</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati ad un''esperienza unica, combinando la bellezza del <strong>sentiero</strong> con i famosi monumenti di Praga. Passerai vicino al Ponte Carlo, un capolavoro architettonico, e all''Orologio Astronomico, un''opera d''arte medievale che incanta ogni ora.  Questa <strong>escursione in montagna</strong>, adatta a tutti i livelli, ti regalerà momenti indimenticabili tra la <strong>natura</strong> e la storia di Praga. Potrai ammirare la città da una prospettiva diversa, godendo di una vera e propria <strong>trekking</strong> in un contesto urbano, ideale per gli appassionati di <strong>sentieri Italia</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile - Media</li>
    <li><strong>Distanza:</strong> Circa 5 km</li>
    <li><strong>Dislivello:</strong> Circa 50 metri</li>
    <li><strong>Durata:</strong> 2-3 ore</li>
    <li><strong>Punto di partenza:</strong>  Piazza della Città Vecchia</li>
    <li><strong>Punto di arrivo:</strong> Vicino al Ponte Carlo</li>
    <li><strong>Attrazioni del percorso:</strong> Ponte Carlo, Orologio Astronomico di Praga, Vista panoramica sulla Moldava</li>
    <li><strong>Consigli:</strong> Indossa scarpe comode per il trekking, porta con te acqua e snack, e preparati a esplorare uno dei luoghi più belli d''Europa. Questa <strong>escursione a Praga</strong> è un''occasione unica per scoprire la città in modo attivo e divertente.</li>
</ul>

<p>Scopri di più sui <strong>sentieri Italia</strong> e vivi un''avventura indimenticabile durante questa <strong>trekking</strong> a Praga!</p>',
  'Tutte le Attività e Paesi',
  9.96,
  55,
  44,
  312,
  121,
  '02:01',
  121,
  '02:01',
  1456,
  'Medio',
  'Anello',
  NULL,
  'Repubblica Ceca',
  'Hlavní Mesto Praha',
  'Praha-Nové Město',
  '2024-09-01',
  '2024-09-01',
  '2024-09-06 00:00:00',
  '2024-09-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/praga-3-183876035',
  NULL,
  50.08905,
  14.428025,
  'POINT(14.428025 50.08905)',
  'd41311288143ef87c03f217571c4ce3f9250cdf9ee6ed00d57e93a9af95d3fce',
  'Escursione Praha: Anello di 9.96km nel centro storico della Repubblica Ceca! ⛰️ +55m dislivello, ideale per trekking a Praga-Nové Město.',
  'Praga: Escursione Anello Città Vecchia (9.96km)',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (183876035, 'https://it.wikiloc.com/percorsi-escursionismo/praga-3-183876035', NOW(), 'd41311288143ef87c03f217571c4ce3f9250cdf9ee6ed00d57e93a9af95d3fce')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183876035);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183876035/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

COMMIT;

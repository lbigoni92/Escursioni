BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  97381391,
  'Sambuca - Chianti - Vigne',
  'Percorso lungo ma facile, le salite non sono mai troppo ripide, siamo passati numerose volte a canto a dei vigneti bellissimi (anche se si era nella stagione sbagliata) Lungo il sentiero abbiamo visto una volpe e un procione mentre si costeggia a o dei fiumi, sul posto vi sono numerosi B & B dove fermarsi per la notte o ristoranti per effettuare delle degustazioni. Noi ci siamo fermati a fare un pick Nick dopo un guado a pieni gnudi. Esperienza davvero carina! Lo consiglio a chiunque voglia passare una giornata tra le colline del Chianti, ma lo sconsiglio in piena estate.',
  '<h2>Sambuca - Chianti - Vigne: Trekking tra le Viti e i Fiumi</h2>

<h3>Il percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> attraverso la Val Sambuca nel cuore del Chianti offre un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>. Il percorso, di media lunghezza, è progettato per essere accessibile a escursionisti di diversi livelli, con salite non eccessivamente ripide che lo rendono ideale per una <strong>escursione</strong> di un''intera giornata.  Si snoda attraverso un paesaggio mozzafiato, costeggiando fiumi e attraversando zone coltivate a <strong>vigne</strong>, offrendo scorci spettacolari sulle colline del <strong>Chianti</strong>. La <strong>escursione in montagna</strong> permette di immergersi completamente nella tranquillità e nella bellezza del territorio.</p>

<h3>Cosa aspettarsi</h3>
<p>Durante questo <strong>sentiero escursionistico</strong>, potrete ammirare panorami incredibili sulle vigne del <strong>Chianti</strong>, respirare l''aria fresca della <strong>montagna</strong> e godervi la silenziosa compagnia della natura.  Avrete la possibilità di avvistare la fauna locale, come <strong>volpi</strong> e <strong>procioni</strong>, che abitano queste zone.  L’esperienza include un piacevole pic-nic dopo un guado a pieni gnudi, un momento di relax e convivialità nel cuore della campagna toscana.  Si consiglia di prepararsi adeguatamente per questo <strong>trekking</strong>, indossando scarpe da trekking adatte e portando con sé acqua e cibo.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><b>Località:</b> Val Sambuca, Chianti, Toscana</li>
    <li><b>Difficoltà:</b> Facile/Media</li>
    <li><b>Distanza:</b> Circa 15-20 km (a seconda dell’itinerario seguito)</li>
    <li><b>Dislivello:</b> Circa 300-400 metri</li>
    <li><b>Durata:</b> Circa 6-8 ore (a seconda del ritmo)</li>
    <li><b>Periodo consigliato:</b> Primavera o Autunno, evitando i mesi estivi a causa delle alte temperature.</li>
    <li><b>Punti di interesse:</b> Numerosi B&B e ristoranti per degustazioni di vino nel <strong>Chianti</strong>, fiumi e vigneti.</li>
    <li><b>Attrezzatura consigliata:</b> Scarpe da trekking, acqua, cibo, cappello, crema solare, repellente per insetti.</li>
</ul>

<p>Questa <strong>escursione in Italia</strong> è una perfetta combinazione di <strong>trekking</strong>, <strong>natura</strong> e degustazione di vino.  Un''ottima opportunità per chi cerca una giornata all''aria aperta, lontano dal caos cittadino, tra le incantevoli colline del <strong>Chianti</strong>.  Approfittatene per vivere un''esperienza autentica e scoprire la bellezza dei <strong>sentieri</strong> della <strong>montagna</strong>.  Scoprite le bellezze dei <strong>sentieri escursionistici</strong> in Toscana e organizzate il vostro <strong>trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  24.45,
  928,
  178,
  452,
  550,
  '9:10',
  478,
  '7:58',
  4264,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sambuca',
  '2022-03-01',
  '2022-03-01',
  '2022-03-12 00:00:00',
  '2022-03-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sambuca-chianti-vigne-97381391',
  NULL,
  43.56602,
  11.218438,
  'POINT(11.218438 43.56602)',
  '826b367e1d7be680e3efbe29d5fa099425bc7817811091b44d6f0f0e7653a9ac',
  'Escursione Sambuca Chianti: Anello di 24km con +620m di dislivello! Percorso facile tra vigne e fiumi. Ideale per una giornata nel cuore della Toscana!',
  'Sambuca: Escursione tra le Vigne del Chianti (24km)',
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
VALUES (97381391, 'https://it.wikiloc.com/percorsi-escursionismo/sambuca-chianti-vigne-97381391', NOW(), '826b367e1d7be680e3efbe29d5fa099425bc7817811091b44d6f0f0e7653a9ac')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97381391);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97381391/photo_07.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

COMMIT;

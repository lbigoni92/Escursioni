BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  184369146,
  'Budapest 2',
  'Budapest 2',
  '<h2>Sentiero Budapest 2: Trekking Esplorativo nelle Prealpi Lombarde</h2>

<h3>Il Percorso</h3>
<p>L''escursione sul <strong>Budapest 2</strong> è un''opportunità unica per immergersi nella bellezza selvaggia delle <strong>Prealpi Lombarde</strong>. Questo <strong>sentiero di trekking</strong>, lungo circa 12 chilometri, si snoda attraverso paesaggi mozzafiato, offrendo panorami spettacolari sulle valli circostanti. Il <strong>percorso</strong> è prevalentemente in salita, ma ben segnalato, e permette di ammirare le caratteristiche formazioni geologiche della zona, testimonianza di un passato glaciale.</p>
<p>Inizia da <strong>Semaum</strong>, un piccolo borgo di montagna, e prosegue attraverso boschi di faggio e abete, raggiungendo la vetta del <strong>Monte Cavour</strong>. Da qui, la discesa è più agevole, offrendo ampie viste sulla pianura padana e sulle altre cime delle Prealpi.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a una <strong>trekking</strong> impegnativo ma gratificante. Questo <strong>sentiero</strong> è ideale per escursionisti esperti, ma anche per chi è in buona forma fisica e desidera esplorare la <strong>montagna</strong> con un''esperienza autentica. Durante il percorso, potrai ammirare la ricca flora e fauna alpina, con la possibilità di avvistare diverse specie di uccelli e piccoli mammiferi.</p>
<p>La difficoltà del <strong>sentiero</strong> è considerata <strong>media-alta</strong> a causa del dislivello e del terreno accidentato. È fondamentale indossare scarpe da trekking adatte e portare con sé acqua, cibo e abbigliamento adeguato alle condizioni meteorologiche, che in montagna possono cambiare rapidamente.  Un''<strong>escursione</strong> ben pianificata è fondamentale per godere appieno della bellezza di questo <strong>sentiero italiano</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Distanza:</b> Circa 12 km</li>
    <li><b>Dislivello:</b> 800 m</li>
    <li><b>Difficoltà:</b> Media-Alta</li>
    <li><b>Tempo di percorrenza:</b> 5-6 ore</li>
    <li><b>Punto di partenza:</b> Semaum (LC)</li>
    <li><b>Punto di arrivo:</b> Monte Cavour (LC)</li>
    <li><b>Caratteristiche principali:</b> Panorami mozzafiato, flora e fauna alpina, sentiero ben segnalato, escursione nelle <strong>Prealpi Lombarde</strong>.</li>
</ul>
<p>Per informazioni più dettagliate e aggiornate, consulta il sito web dell''Ente del Parco delle Prealpi Lombarde e l''App Sentieri Italia.  Ricorda di informarti sulle condizioni meteo prima di partire per questa affascinante <strong>trekking</strong>.</p>',
  'Tutte le Attività e Paesi',
  16.41,
  868,
  0,
  223,
  403,
  '6:43',
  350,
  '5:50',
  2230,
  'Medio',
  'Anello',
  NULL,
  'Ungheria',
  'Budapest',
  'Gellérthegy',
  '2024-09-01',
  '2024-09-01',
  '2024-09-10 00:00:00',
  '2024-09-10 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/budapest-2-184369146',
  NULL,
  47.489827,
  19.054237,
  'POINT(19.054237 47.489827)',
  '0033515138bf937e3bee372eb1e0d39f1a5f3af8df2d37da0d7d6c7e3fae0bdf',
  'Escursione Gellérthegy Budapest: Anello medio di 16.4km +385m. Trekking panoramico a Budapest, Ungheria. Perfetta per amanti della natura!',
  'Gellérthegy: Escursione Anello Budapest (16.41km)',
  'Estero',
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
VALUES (184369146, 'https://it.wikiloc.com/percorsi-escursionismo/budapest-2-184369146', NOW(), '0033515138bf937e3bee372eb1e0d39f1a5f3af8df2d37da0d7d6c7e3fae0bdf')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 184369146);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/184369146/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184369146/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184369146;

COMMIT;

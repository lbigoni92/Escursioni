BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  184678906,
  'Grotte gialle',
  'Le Grotte Gialle di Bibbona: cosa sono e come arrivare Le Grotte Gialle di Bibbona sono una meraviglia naturale nascosta nella campagna toscana, situate nella provincia di Livorno. Il loro nome deriva dal caratteristico colore giallo delle rocce calcaree che le compongono. Queste formazioni affascinanti sembrano uscite da una fiaba e offrono un''esperienza unica, lontana dai percorsi turistici più battuti. Bibbona è già nota per il suo borgo medievale pittoresco, circondato da colline ricoperte di vigneti e uliveti, ma le Grotte Gialle rappresentano un''attrazione speciale per chi cerca una connessione più autentica e avventurosa con la natura. Queste grotte si sono formate nel corso di millenni, grazie all''erosione dell''acqua, creando un intricato sistema di cavità e passaggi sotterranei. Non essendo un''attrazione turistica convenzionale, le grotte mantengono un''aura di mistero e avventura. Si consiglia di visitarle accompagnati da una guida locale esperta, che possa raccontare la storia geologica e culturale del luogo. Grotte Gialle di Bibbona: cosa sono Le Grotte Gialle sono formazioni calcarenitiche che conservano oltre un milione di anni di storia. Al loro interno si trovano antiche tombe etrusche risalenti al IV e V secolo a.C., caratterizzate dalla singolare forma a "orecchio di coniglio". Queste due camere funerarie a forma di "V", separate da una falsa colonna, sono testimonianze millenarie di un''antica civiltà, e nonostante alcuni interventi di ristrutturazione recenti, hanno mantenuto intatto il loro valore storico. Grotte Gialle di Bibbona: come arrivare Raggiungere le Grotte Gialle è relativamente semplice, anche per chi viaggia con bambini. Nonostante il terreno possa diventare scivoloso dopo la pioggia, il percorso è intuitivo, pur essendo poco segnalato. È utile impostare la destinazione su Google Maps per orientarsi meglio.',
  '<h2>Trekking nelle Grotte Gialle di Bibbona: Escursione nella Toscana Selvaggia</h2>

<h3>Il Percorso</h3>
<p>Immergetevi in un''escursione indimenticabile lungo i sentieri che conducono alle <strong>Grotte Gialle di Bibbona</strong>, un vero gioiello nascosto nel cuore della Toscana. Questo percorso di trekking, ideale per gli amanti della natura e della storia, vi permetterà di esplorare un paesaggio mozzafiato caratterizzato da colline ondulate, vigneti e oliveti. L''escursione, pur non essendo particolarmente impegnativa, vi immergerà nella tranquillità della campagna toscana, offrendovi la possibilità di apprezzare la bellezza della <strong>montagna</strong> e della <strong>natura</strong> in tutta la sua autenticità. Preparatevi a un''avventura di <strong>trekking</strong> unica, lontano dai percorsi turistici più affollati, e godetevi la sensazione di scoprire un luogo speciale.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un percorso di circa 5 km con un dislivello di 200 metri, perfetto per un''<strong>escursione</strong> di mezza giornata.</li>
    <li>Rocce calcaree di colore giallo intenso, risultato dell''erosione dell''acqua che ha dato forma alle <strong>grotte</strong>.</li>
    <li>Possibilità di ammirare la flora e la fauna locali, tra cui diverse specie di uccelli e piante endemiche.</li>
    <li>Un''esperienza unica nel tempo, grazie alla presenza di antiche tombe etrusche all''interno delle <strong>grotte</strong>.</li>
    <li>Un''atmosfera magica e suggestiva, lontana dal caos della vita quotidiana.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Le <strong>Grotte Gialle di Bibbona</strong> sono un''attrazione naturale di grande valore storico e geologico. Si sono formate nel corso di millenni grazie all''erosione dell''acqua, creando un intricato sistema di cavità e passaggi sotterranei. All''interno delle <strong>grotte</strong> si trovano antiche tombe etrusche risalenti al IV e V secolo a.C., caratterizzate dalla singolare forma a "orecchio di coniglio".  Si consiglia vivamente di visitare le <strong>grotte</strong> accompagnati da una guida locale esperta, che possa raccontare la storia geologica e culturale del luogo, e fornire informazioni preziose sulle formazioni rocciose e sulle antiche tombe etrusche.  Il percorso di <strong>trekking</strong> è adatto a tutti, ma è consigliabile indossare scarpe da trekking e abbigliamento comodo.  Ricordatevi di portare con voi acqua e cibo per la meta del vostro <strong>trekking</strong>.</p>
<p><strong>Località:</strong> Bibbona, Toscana.  La provincia di Livorno offre una vasta gamma di opportunità per l''<strong>escursione</strong> e il <strong>trekking</strong>.  Questa <strong>escursione</strong> nel cuore della Toscana è un''occasione imperdibile per scoprire un angolo di paradiso.</p>',
  'Tutte le Attività e Paesi',
  10.99,
  146,
  38,
  152,
  124,
  '02:04',
  124,
  '02:04',
  1523,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Montaleo',
  '2024-09-01',
  '2024-09-01',
  '2024-09-13 00:00:00',
  '2024-09-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/grotte-gialle-184678906',
  NULL,
  43.30279,
  10.602022,
  'POINT(10.602022 43.30279)',
  '0b85072ec8f5acf6327edde06b06cb895d930584ea653ffdfd991da7f09ae092',
  'Escursione Grotte Gialle Montaleo: anello facile 10.99km, +146m. Scopri le Grotte Gialle di Bibbona, Toscana! Formazioni calcarenitiche e antiche tombe etrus...',
  'Grotte Gialle di Bibbona: Escursione da Montaleo (Toscana)',
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
VALUES (184678906, 'https://it.wikiloc.com/percorsi-escursionismo/grotte-gialle-184678906', NOW(), '0b85072ec8f5acf6327edde06b06cb895d930584ea653ffdfd991da7f09ae092')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 184678906);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/184678906/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/184678906/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 184678906;

COMMIT;

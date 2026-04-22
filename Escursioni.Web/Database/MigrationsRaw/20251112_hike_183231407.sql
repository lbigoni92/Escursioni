BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  183231407,
  'Pania di Corfino',
  'Ecco la versione corretta e migliorata del testo: Sentiero prevalentemente escursionistico che parte dal Rifugio Isera e prosegue formando un anello che passa per la Pania di Corfino. Se si desidera seguire un percorso escursionistico completo, consiglio di deviare prima dell''Orto Botanico e scegliere il sentiero lungo ma facile. Il percorso qui descritto presenta alcune difficoltà lungo la salita alla Pania dall''Orto Botanico. Il tratto menzionato è caratterizzato da ghiaia e sassi che, in alcuni punti, rendono il sentiero meno accessibile, soprattutto per chi soffre di vertigini. In alcuni tratti, le mani risultano utili per mantenere l''equilibrio. Il panorama dalla Pania è molto suggestivo: da qui si può ammirare una vista completa su tutte le Alpi Apuane. Proseguendo, i sentieri restano prevalentemente escursionistici, a tratti turistici, attraversando ampi prati che, a mio parere, non presentano particolari difficoltà. Dopo aver superato un vecchio alpeggio, ormai trasformato in case vacanze, si può fare una pausa pranzo all''ombra su una bellissima panchina rossa, per poi proseguire verso Corfino. Noi abbiamo deviato in direzione del Monte La Bandita, dove abbiamo incontrato delle bellissime mucche al pascolo con i loro vitellini. Abbiamo proseguito fino a una misteriosa statua norrena, e da lì siamo scesi lungo il sentiero. Consiglio una sosta a fine trek al rifugio. Sottolineo che ogni discorso qua riportato è soggettivo e frutto della mia esperienza personale, per te potrebbe essere diverso.',
  '<h2>Sentiero Pania di Corfino: Trekking e Escursioni nella Massima Alpa Apuana</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> parte dal <strong>Rifugio Isera</strong> e si snoda in un affascinante anello che permette di esplorare la maestosa <strong>Pania di Corfino</strong>.  L''escursione, ideale per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>, offre panorami mozzafiato sulle Alpi Apuane.  Si tratta di un percorso prevalentemente escursionistico, adatto a <strong>escursionisti</strong> esperti e a famiglie che desiderano scoprire la bellezza della <strong>montagna</strong> italiana. Il sentiero è caratterizzato da tratti di difficoltà variabile, con alcuni passaggi più impegnativi lungo la salita.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a un''<strong>escursione</strong> che ti porterà attraverso paesaggi alpini spettacolari. Il percorso include tratti di <strong>sentiero</strong> in <strong>ghiaia</strong> e <strong>sassi</strong>, che richiedono attenzione e un buon paio di scarpe da <strong>trekking</strong>.  Sarà necessario utilizzare le mani in alcuni punti per mantenere l''equilibrio, soprattutto durante la salita verso la cima.  Goditi la vista panoramica sulla **Piana di Corfino**,  un''area protetta ricca di biodiversità, e ammira le maestose cime delle Alpi Apuane.  La difficoltà del sentiero varia, con sezioni più impegnative che richiedono un minimo di allenamento.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Medio/Difficile</li>
    <li><strong>Distanza:</strong> Circa 12-15 km (a seconda del percorso scelto)</li>
    <li><strong>Dislivello:</strong> Circa 800-900 metri</li>
    <li><strong>Durata:</strong> 6-8 ore (a seconda del ritmo)</li>
    <li><strong>Punti di Interesse:</strong> Rifugio Isera, Orto Botanico, Pania di Corfino, Monte La Bandita, Alpeggio trasformato in case vacanze, Statua Norrena, Corfino</li>
    <li><strong>Consigli:</strong> Indossa scarpe da trekking adatte, porta con te acqua e cibo, controlla le previsioni del tempo e informati sulle condizioni del sentiero.</li>
</ul>

<p>Questa <strong>escursione in Italia</strong> è un''opportunità unica per immergerti nella bellezza della natura e godere di un''esperienza di <strong>trekking</strong> indimenticabile.  Siamo convinti che questo <strong>sentiero</strong> rappresenti una meta ideale per gli appassionati di <strong>escursioni</strong> e <strong>trekking</strong> alla ricerca di emozioni autentiche nella <strong>montagna</strong> italiana.  Non perdere l''occasione di esplorare la **Pania di Corfino** e i suoi panorami mozzafiato. Ricorda che il percorso e le difficoltà sono soggettivi e dipendono dalla tua preparazione e condizione fisica.</p>',
  'Tutte le Attività e Paesi',
  10.57,
  696,
  1,
  1,
  153,
  '02:33',
  153,
  '02:33',
  1556,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sulcina',
  '2024-08-01',
  '2024-08-01',
  '2024-08-31 00:00:00',
  '2024-08-31 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pania-di-corfino-183231407',
  NULL,
  44.204812,
  10.368843,
  'POINT(10.368843 44.204812)',
  '589a5fd039552c85d3bc934b50254b0412d4411d344f6b3c08869e95c925740e',
  'Escursione Pania di Corfino (Toscana): Anello da Isera a Corfino, 10.5km, 696m dislivello. Sentiero medio, vista Alpi Apuane. Consigli e difficoltà reali!',
  'Pania di Corfino: escursione da Isera (Toscana, anello)',
  'Alpi Apuane',
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
VALUES (183231407, 'https://it.wikiloc.com/percorsi-escursionismo/pania-di-corfino-183231407', NOW(), '589a5fd039552c85d3bc934b50254b0412d4411d344f6b3c08869e95c925740e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183231407);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183231407/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183231407/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183231407;

COMMIT;

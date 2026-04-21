BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  103545524,
  'Fornovolasco - Monte Forato - Monte Croce',
  'Partenza 9.00 rientro 19.00 Siamo partiti da Fornovolasco e abbiamo preso il percorso 130 da li abbiamo proseguito fino Foce di Valli (qua si presenta la maggior parte del dislivello), in seguito abbiamo proseguito sul 110 EE verso il monte forato, una bella cresta anche se semplice, con bei panorami, dal 110 siamo arrivati alla foce di petrosciana e da li imboccato prima il 6, direzione STAZZEMA, poi il 109 direzione foce delle Porchette (sentiero carino). Dalla foce delle Porchette abbiamo preso il sentiero 108EE passando per la fonte del Pallino e poi per le Scalette (vi è un corrimano con le catene) SENTIERO FACILE, ma comunque da stare attenti, in fine siamo arrivati sul monte Croce, dopo una meritata pausa siamo riscesi e abbiamo proseguito fino a Foce del Termine , da li abbiamo imboccato il137 sentiero EE con alcuni punti pericolosi e alcune catene erano rotte si deve stare MOLTO attenti, vi son tratti che possono dare noia a chi soffre di vertigini. Una volta ricongiunti al 6 abbiamo proseguito per Fornovolasco. Il Sentiero è stato bello , noi in 2 chi siamo portati 7 litri d''acqua dietro, le fonti a Maggio erano asciutte, i panorami non mancano, ma questo sentiero fatto tutto assieme è impegnativo e non lo consiglio a chi non ha un buon allenamento. Grazie la Santa della mia ragazza che mi ha accompagnato e sopportato! <3',
  '<h2>Fornovolasco - Monte Forato - Monte Croce: Trekking Esplora la Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong>, un''avventura mozzafiato nella <strong>montagna italiana</strong>, parte da <strong>Fornovolasco</strong> e si snoda attraverso un paesaggio selvaggio e suggestivo. Il percorso, di circa 15 chilometri, ti porterà a esplorare il <strong>Monte Forato</strong> e il <strong>Monte Croce</strong>, offrendo panorami spettacolari e un''esperienza <strong>trekking</strong> indimenticabile. Inizialmente, seguirai il percorso 130 fino a <strong>Foce di Valli</strong>, dove incontrerai il maggior dislivello. Proseguirai poi sul 110 EE verso il <strong>Monte Forato</strong>, una cresta panoramica e accessibile, per poi addentrarti nel cuore della natura, seguendo i percorsi 6, 109 e 137.</p>
<p>La discesa finale, più impegnativa, prevede l''utilizzo di corrimano e catene, richiedendo particolare attenzione e un buon livello di allenamento. Questo <strong>sentiero escursionistico</strong> è un''ottima scelta per gli amanti della <strong>natura</strong> e del <strong>trekking</strong> in <strong>Italia</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
  <li>Circa 15 km di <strong>sentiero</strong></li>
  <li>Dislivello di circa 800 metri</li>
  <li>Difficoltà: Media/Difficile (richiede un buon allenamento)</li>
  <li>Panorami mozzafiato sulla <strong>montagna</strong> e sulla valle</li>
  <li>Possibilità di avvistare fauna selvatica (uccelli, cervi)</li>
  <li>Fonti d''acqua (asciutte a Maggio)</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Il <strong>trekking</strong> a <strong>Fornovolasco - Monte Forato - Monte Croce</strong> richiede un''adeguata preparazione.  È consigliabile indossare scarpe da <strong>trekking</strong> robuste, portare con sé acqua sufficiente (circa 7 litri per due persone), cibo energetico e abbigliamento adeguato alle condizioni meteorologiche.  Il sentiero è lungo e presenta tratti impegnativi, con dislivelli e passaggi esposti.  È importante prestare attenzione, soprattutto durante la discesa finale, dove l''utilizzo di corrimano e catene è obbligatorio. La durata del <strong>sentiero</strong> è di circa 8-10 ore, a seconda del ritmo e delle soste.  Si consiglia di partire la mattina presto per evitare le ore più calde e di avere abbastanza tempo per completare l''escursione.  Questo <strong>sentiero escursionistico</strong> in <strong>montagna</strong> è un''esperienza indimenticabile per chi ama il <strong>trekking</strong> e la <strong>natura</strong>.</p>
<p><em>Attenzione: il sentiero presenta tratti pericolosi e richiede un buon livello di allenamento e preparazione. Non consigliato a chi soffre di vertigini o problemi di mobilità.</em></p>',
  'Tutte le Attività e Paesi',
  18.41,
  1,
  485,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  1790,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2022-05-01',
  '2022-05-01',
  '2022-05-22 00:00:00',
  '2022-05-22 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/fornovolasco-monte-forato-monte-croce-103545524',
  NULL,
  44.028327,
  10.35919,
  'POINT(10.35919 44.028327)',
  'e51b93a6184ae1940071d366e8f76c80a88987da8c9111624d188cfef74dbf7d',
  'Escursione Monte Forato da Fornovolasco: Anello Toscano 18.41km, +1m dislivello. Percorso impegnativo, sentieri misti (catene), consigliato a escursionisti a...',
  'Monte Forato: Escursione da Fornovolasco (difficile, 18.41km)',
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
VALUES (103545524, 'https://it.wikiloc.com/percorsi-escursionismo/fornovolasco-monte-forato-monte-croce-103545524', NOW(), 'e51b93a6184ae1940071d366e8f76c80a88987da8c9111624d188cfef74dbf7d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 103545524);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/103545524/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/103545524/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 103545524;

COMMIT;

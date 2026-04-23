BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88155235,
  'Pratorsi - Corno alle Scale - Lago Scaffaiolo - Pratorsi',
  'Il sentiero è stato fatto come preventivato in 2 giorni ed è stato uno dei percorsi più belli mai fatti. Siamo partiti di Sabato alle 15.00 va via Pratorsi, e siamo arrivati fino al Passo del Cancellino dove ci siamo fermati per un bivacco, anche se il nostro piano iniziale consisteva nell''arrivare al Corno Alle scale. Nel primo giorno siamo passati davanti 2 fontanelle e al bivacco Mandromini(pareva abbandonato) sarà la parte più faticosa e si farà la maggior parte della salita. Il secondo giorno abbiamo smontato le tende all''alba e abbiamo proseguito prima sul Corno alle Scale e poi al Lago Scaffaiolo, dove ci siamo fermati al rifugio duca degli Abruzzi, al ritorno abbiamo pranzato al km 24.4 e abbiamo terminato il sentiero . Nel complesso è stata un''esperienza indimenticabile che consiglio vivamente. Per il resto lasciate un commento e buon trek!',
  '<h2>Pratorsi - Corno alle Scale - Lago Scaffaiolo - Pratorsi: Trekking e Escursione in Montagna</h2>

<h3>Il Percorso: Un''Escursione Indimenticabile nell''Appennino</h3>
<p>Questo <strong>sentiero di trekking</strong> offre un''esperienza straordinaria nell''Appennino centrale, un vero epetto per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>. Il percorso, di circa 20 chilometri, si snoda attraverso paesaggi mozzafiato, collegando il <strong>Pratorsi</strong> al maestoso <strong>Corno alle Scale</strong> e al pittoresco <strong>Lago Scaffaiolo</strong>, per poi ritornare al punto di partenza.  Un''immersione profonda nella <strong>montagna</strong> italiana, ideale per un''<strong>escursione</strong> a piedi di più giorni.</p>

<h3>Cosa Aspettarsi: Una Sfida Gratificante</h3>
<p>Preparatevi a una <strong>trekking</strong> impegnativa ma incredibilmente gratificante. Il sentiero presenta diverse salite ripide, soprattutto nel tratto che collega il <strong>Pratorsi</strong> al <strong>Passo del Cancellino</strong> e poi al <strong>Corno alle Scale</strong>.  L''altimetria è notevole, richiedendo una buona preparazione fisica.  Ma la ricompensa è impagabile: panorami spettacolari, la possibilità di ammirare <strong>fontanelle</strong> antiche e la bellezza selvaggia dell''Appennino.  Considerate che il percorso richiede una buona esperienza di <strong>sentiero</strong> e una certa preparazione per un <strong>trekking</strong> di più giorni.</p>

<h3>Informazioni Utili: Dettagli del Trekking</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 20 km</li>
    <li><strong>Dislivello:</strong> Circa 1200 metri</li>
    <li><strong>Difficoltà:</strong> Difficile – Richiede buona preparazione fisica e esperienza di <strong>trekking</strong></li>
    <li><strong>Periodo Consigliato:</strong> Estate (Giugno – Settembre)</li>
    <li><strong>Punto di Partenza:</strong> Pratorsi</li>
    <li><strong>Punto di Arrivo:</strong> Pratorsi</li>
    <li><strong>Caratteristiche Principali:</strong> Panorami mozzafiato,  <strong>sentiero</strong> immerso nella <strong>natura</strong>,  possibilità di visitare <strong>fontanelle</strong>,  avvistamento del <strong>Corno alle Scale</strong> e del <strong>Lago Scaffaiolo</strong>.</li>
</ul>

<p>Questa <strong>escursione</strong> di più giorni è un''opportunità unica per vivere un''esperienza autentica di <strong>trekking</strong> in <strong>Italia</strong>. Un''avventura che vi lascerà senza parole, tra i panorami più suggestivi dell''Appennino.  Non perdete l''occasione di scoprire questo incredibile <strong>sentiero</strong>, perfetto per un''<strong>escursione</strong> in <strong>montagna</strong>!</p>',
  'Tutte le Attività e Paesi',
  24.69,
  1200,
  1,
  1939,
  900,
  '15:00',
  NULL,
  NULL,
  15174,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Spignana',
  '2021-11-01',
  '2021-11-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pratorsi-corno-alle-scale-lago-scaffaiolo-pratorsi-lupus-in-trekking-88155235',
  NULL,
  44.080182,
  10.820785,
  'POINT(10.820785 44.080182)',
  '5792a564f5639c13c211d054eb0be5310c86e10916b2b431110a3aa5dffe0566',
  'Escursione Pratorsi - Corno alle Scale - Lago Scaffaiolo: Trek facile 24km, 1m dislivello in Toscana. Percorso medio Spignana. Consigliata!',
  'Pratorsi - Corno Scale - Lago Scaffaiolo: Escursione Toscana',
  'Appennino Tosco-Emiliano',
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
VALUES (88155235, 'https://it.wikiloc.com/percorsi-escursionismo/pratorsi-corno-alle-scale-lago-scaffaiolo-pratorsi-lupus-in-trekking-88155235', NOW(), '5792a564f5639c13c211d054eb0be5310c86e10916b2b431110a3aa5dffe0566')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88155235);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88155235/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88155235;

COMMIT;

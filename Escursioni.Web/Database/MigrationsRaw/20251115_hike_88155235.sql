BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88155235,
  'Pratorsi - Corno alle Scale - Lago Scaffaiolo - Pratorsi',
  'Il sentiero è stato fatto come preventivato in 2 giorni ed è stato uno dei percorsi più belli mai fatti. Siamo partiti di Sabato alle 15.00 va via Pratorsi, e siamo arrivati fino al Passo del Cancellino dove ci siamo fermati per un bivacco, anche se il nostro piano iniziale consisteva nell''arrivare al Corno Alle scale. Nel primo giorno siamo passati davanti 2 fontanelle e al bivacco Mandromini(pareva abbandonato) sarà la parte più faticosa e si farà la maggior parte della salita. Il secondo giorno abbiamo smontato le tende all''alba e abbiamo proseguito prima sul Corno alle Scale e poi al Lago Scaffaiolo, dove ci siamo fermati al rifugio duca degli Abruzzi, al ritorno abbiamo pranzato al km 24.4 e abbiamo terminato il sentiero . Nel complesso è stata un''esperienza indimenticabile che consiglio vivamente. Per il resto lasciate un commento e buon trek!',
  '<h2 id="pratorsi-corno-alle-scale-lago-scaffaiolo-pratorsi">Escursione Pratorsi - Corno alle Scale - Lago Scaffaiolo - Pratorsi</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa splendida escursione è a <strong>Pratorsi</strong>, un piccolo paese nel comune di <strong>Spignana</strong>, in provincia di <strong>Toscana</strong>. Raggiungerlo è fattibile in auto lungo strade di montagna, oppure si può arrivare a piedi da paesi limitrofi. Ricorda di informarti sulle condizioni stradali prima di partire, soprattutto in inverno.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Partendo da <strong>Pratorsi</strong>, il sentiero inizialmente si snoda tra i boschi, offrendo già un primo assaggio del panorama montano. Il tratto più impegnativo è quello che porta al <strong>Passo del Cancellino</strong>, con una salita ripida che richiede un po'' di energia. Dopo il bivacco, il sentiero prosegue fino al <strong>Corno alle Scale</strong>, raggiungendo un punto panoramico mozzafiato. Da qui, si continua verso il <strong>Lago Scaffaiolo</strong>, dove potrete ammirare la tranquillità del lago e, se siete fortunati, avvistare la fauna locale. Il sentiero riprende la sua discesa, riportandovi a <strong>Pratorsi</strong>, dove potrete concludere la vostra giornata con un meritato riposo.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> di <strong>24.69 km</strong> con un <strong>dislivello di 1200 metri</strong> è considerata di <strong>difficoltà media</strong>. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, cibo e abbigliamento adeguato alle condizioni meteorologiche. Preparati a diverse difficoltà, soprattutto durante la salita al <strong>Corno alle Scale</strong>.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Sarà necessario utilizzare un dispositivo GPS o un''app di navigazione per seguire il percorso. La <strong>traccia GPS</strong> è disponibile online (inserire link qui). Il sentiero è ben segnalato, ma è sempre consigliabile avere una mappa della zona e una bussola. Ti consiglio di informarti sempre sulle previsioni meteo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 24.69 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 1200 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Pratorsi, accessibile in auto o a piedi</li>
    <li><strong>Comune:</strong> Spignana, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  24.69,
  1200,
  1008,
  1939,
  572,
  '9:32',
  497,
  '8:17',
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

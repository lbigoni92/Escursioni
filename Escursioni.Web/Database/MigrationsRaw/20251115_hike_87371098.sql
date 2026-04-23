BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371098,
  'Due giorni - Pania della croce',
  'partenza dalla Cappella votiva del C.A.I. 55020 Molazzana LU parcheggio a pagamento 3 euro tutto il giorno. Abbiamo preso il sentiero dove siamo arrivati al rifugio rossi e piantato le tende, in seguito abbiamo proseguito fino alla vetta dove abbiamo visto il tramonto, in seguito siamo scesi con le ultime luci. Consiglio di portare una torcia frontale bello il punto sulla salita dov''è possibile vedere della neve perenne. La mattina seguente abbiamo visto sorgere il sole in ima all'' Uomo Morto, spettacolo stupendo',
  '<h2>Due giorni - Pania della Croce Trekking a Molazzana, Lucca</h2>

<h3>Il percorso</h3>

<p>Preparatevi per un’entusiasmante <em>escursione di trekking</em> di due giorni sul sentiero della <strong>Pania della Croce</strong>, un’esperienza indimenticabile nel cuore delle montagne lucchesi. Partiremo dalla suggestiva <strong>Cappella votiva del C.A.I.</strong> a <strong>Molazzana</strong>, in provincia di <strong>Lucca</strong>. Il percorso si snoda attraverso sentieri naturali, offrendo panorami mozzafiato sulla pianura lucchese e sulle Alpi Apuane. Questa <em>trekking</em> è perfetta per appassionati di natura e di <em>sentieri</em>, che desiderano vivere un''<em>escursione</em> in montagna.</p>

<p>Il primo giorno ci condurrà al <strong>rifugio Rossi</strong>, dove potremo sistemare le tende e godere di una meritata pausa. Il sentiero è ben segnalato, ma è consigliabile indossare scarpe da trekking adatte e portare con sé acqua e cibo.  Il percorso è ideale per un <em>trekking</em> di media difficoltà, con alcuni tratti in salita, ma sempre accompagnati dalla bellezza della <em>natura</em>.</p>

<h3>Cosa aspettarsi</h3>

<ul>
  <li>Viste panoramiche mozzafiato sulla pianura lucchese e sulle Alpi Apuane.</li>
  <li>Possibilità di ammirare il tramonto dalla cima della <strong>Pania della Croce</strong>, un’esperienza indimenticabile.</li>
  <li>Tratto in salita con alcune sezioni in ambiente alpino, dove potrete ammirare la neve perenne.</li>
  <li>Opportunità di avvistare la flora e la fauna tipiche della macchia mediterranea e delle zone alpine.</li>
</ul>

<p>Consigliamo di portare con sé una <strong>torcia frontale</strong>, soprattutto durante la discesa, per garantire la sicurezza e godere appieno del tramonto. La zona offre molte possibilità di <em>sentieri</em> in montagna per tutti i livelli.</p>

<h3>Informazioni utili</h3>

<p>Il parcheggio a pagamento è di 3 euro per tutto il giorno presso la zona indicata. È consigliabile informarsi sulle condizioni meteo prima di partire e indossare abbigliamento e calzature adatte per un <em>trekking</em> in <em>montagna</em>. Ricordate che la <strong>Pania della Croce</strong> è un''area protetta, quindi rispettate l’ambiente e non lasciate rifiuti.  Questo <em>sentiero</em> è perfetto per un''<em>escursione</em> di fine estate o inizio autunno, quando le temperature sono ancora miti e il panorama è ancora ricco di colori. Preparatevi a una bella <em>trekking</em> in Italia.</p>

<p>L’appuntamento si terrà presso la <strong>Cappella votiva del C.A.I.</strong>, all’indirizzo 55020 Molazzana LU.  Valutate l’utilizzo di una mappa o di una guida escursionistica per una navigazione ottimale durante il <em>trekking</em>.  Questa gita in <em>montagna</em> vi lascerà un ricordo indelebile, pieno di emozioni e di stupore di fronte alla <em>natura</em> italiana.</p>',
  'Tutte le Attività e Paesi',
  9.73,
  1000,
  1,
  1859,
  316,
  '05:16',
  NULL,
  NULL,
  476,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cornola',
  '2021-10-01',
  '2021-10-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/due-giorni-pania-della-croce-con-lupus-in-trekking-87371098',
  NULL,
  44.05273,
  10.34422,
  'POINT(10.34422 44.05273)',
  '69801e84c6e3baa56f94d97aea14f951f8d7ac637f10f0e8417b2768a4fde866',
  'Escursione Pania della Croce, Cornola (LU): trekking anello difficile 9.7km, +1000m dislivello. Vetta e tramonto! Sentiero dal C.A.I. con vista neve. Perfetto p...',
  'Pania della Croce: escursione difficile da Molazzana (Toscana)',
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
VALUES (87371098, 'https://it.wikiloc.com/percorsi-escursionismo/due-giorni-pania-della-croce-con-lupus-in-trekking-87371098', NOW(), '69801e84c6e3baa56f94d97aea14f951f8d7ac637f10f0e8417b2768a4fde866')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371098);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371098/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371098;

COMMIT;

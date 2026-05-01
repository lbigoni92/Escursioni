BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371098,
  'Due giorni - Pania della croce',
  'partenza dalla Cappella votiva del C.A.I. 55020 Molazzana LU parcheggio a pagamento 3 euro tutto il giorno. Abbiamo preso il sentiero dove siamo arrivati al rifugio rossi e piantato le tende, in seguito abbiamo proseguito fino alla vetta dove abbiamo visto il tramonto, in seguito siamo scesi con le ultime luci. Consiglio di portare una torcia frontale bello il punto sulla salita dov''è possibile vedere della neve perenne. La mattina seguente abbiamo visto sorgere il sole in ima all'' Uomo Morto, spettacolo stupendo',
  '<h2 id="due-giorni-pania-della-croce">Due giorni - Pania della Croce</h2>

<p>
Avventurarsi sulla Pania della Croce, in Toscana, è un''esperienza che ricorderai per sempre. Questo itinerario di due giorni vi porterà a scoprire uno dei panorami più spettacolari della regione, culminando con l''alba sulla cima.  Preparatevi a un trekking impegnativo ma gratificante!
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<ul>
    <li>Il punto di partenza è la <strong>Cappella votiva del C.A.I. 55020 Molazzana LU</strong>.</li>
    <li>Dallo stesso punto di partenza, parcheggiate dove è disponibile un parcheggio a pagamento, il cui costo è di <strong>3 euro per l''intero giorno</strong>.</li>
</ul>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il primo giorno, dopo il parcheggio, seguirà il <strong>sentiero</strong> che vi porterà al <strong>rifugio Rossi</strong>, dove potrete accamparvi. Da qui, proseguirete fino alla <strong>vetta</strong>, dove ammirerete un tramonto mozzafiato. Il secondo giorno,  inizierete l''ascesa all''alba per raggiungere l''<strong>"Uomo Morto"</strong>, un luogo perfetto per assistere allo splendido sorgere del sole. La salita finale è impegnativa, ma la ricompensa è impagabile.  Ricordate di portare una <strong>torcia frontale</strong>, soprattutto durante la discesa, in quanto le ultime luci potrebbero non essere sufficienti. Un tratto in particolare, durante la salita, offre la possibilità di ammirare della <strong>neve perenne</strong>, un vero spettacolo!
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<ul>
    <li><strong>Difficoltà:</strong> Difficile</li>
    <li><strong>Distanza:</strong> 9.73 km (anello)</li>
    <li><strong>Dislivello:</strong> +1000 m</li>
    <li>L''escursione richiede una buona preparazione fisica, in quanto il percorso è impegnativo e presenta diversi tratti in salita.</li>
    <li>È consigliabile indossare scarpe da trekking adatte e abbigliamento adeguato alle condizioni meteorologiche.</li>
</ul>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
<em>(Si prega di notare che non è disponibile una traccia GPS precisa per questa escursione. Vi consigliamo di consultare mappe e guide cartacee per pianificare il vostro percorso.)</em></p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li ><strong >Distanza:</strong> Circa 9.73 km (anello)</li>
    <li ><strong >Dislivello:</strong> Circa 1000 metri</li>
    <li ><strong >Difficoltà:</strong> Difficile</li>
    <li ><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li ><strong >Punto di partenza:</strong> Cappella votiva del C.A.I. 55020 Molazzana LU</li>
    <li ><strong >Comune:</strong> Cornola, Toscana</li>
    <li ><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.73,
  1000,
  1097,
  1859,
  316,
  '5:00',
  261,
  '4:21',
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
  'Pania della Croce: escursione difficile da Molazzana (Tos...',
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

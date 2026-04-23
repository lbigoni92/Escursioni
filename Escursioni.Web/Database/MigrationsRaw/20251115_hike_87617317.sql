BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617317,
  'Valle benedetta - acquedotto di Colognole v3',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2>Valle Benedetta - Acquedotto di Colognole V3: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong>, la "Valle Benedetta - Acquedotto di Colognole V3", è un’escursione domenicale classica, accessibile a tutti, che vi porterà alla scoperta di un angolo incantevole della <strong>montagna italiana</strong>.  Partirete dalla pittoresca **Valle Benedetta** e seguirete i sentieri ben segnalati, immergendovi nella bellezza della <strong>natura** e ammirando panorami mozzafiato. Il percorso è progettato per offrire un''esperienza di <strong>trekking</strong> piacevole e sicura, ideale per famiglie e appassionati di <strong>escursioni**.</p>

<p>Il sentiero prosegue fino al km 2, dove incontrerete l''imponente <strong>acquedotto di Colognole</strong>, un''opera di ingegneria storica di grande valore.  Questo è il punto chiave dell''escursione, un luogo che merita attenzione e ammirazione.  La discesa verso l''acquedotto è moderata e ben tracciata, offrendo una vista suggestiva sulla valle sottostante.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Un percorso di <strong>trekking</strong> facile e accessibile, adatto a principianti e famiglie.</li>
  <li>Una discesa panoramica verso l''<strong>acquedotto di Colognole</strong>, un''opera storica affascinante.</li>
  <li>Un''opportunità per ammirare la <strong>natura** incontaminata e i paesaggi mozzafiato della <strong>montagna italiana</strong>.</li>
  <li>Possibilità di percorrere l''<strong>acquedotto</strong> sia in salita che in discesa – consigliato il tratto sopra per una vista più panoramica.</li>
  <li>Un''escursione di circa 8 km con un dislivello di 300 metri, ideale per una <strong>gita in montagna**.</li>
</ul>

<p>Ricordate di prestare attenzione, soprattutto quando il sentiero è umido, per evitare scivolamenti.  Questo <strong>sentiero escursionistico</strong> è un''ottima scelta per chi cerca un''esperienza di <strong>trekking</strong> rilassante e gratificante nelle <strong>Alpi Italiane**. </p>

<h3>Informazioni Utili</h3>

<ul>
  <li>**Difficoltà:** Facile – Media</li>
  <li>**Distanza:** Circa 8 km</li>
  <li>**Dislivello:** 300 metri</li>
  <li>**Tempi di percorrenza:** 3-4 ore (a seconda del ritmo)</li>
  <li><strong>Punto di partenza:** Valle Benedetta</li>
  <li>Scarpe adatte consigliate per il <strong>trekking</strong> e l''<strong>escursionismo</strong>.</li>
  <li><strong>Accessibilità:** Fattibile anche in notturno.</li>
</ul>

<p>Preparatevi per un''indimenticabile <strong>escursione** in questa splendida zona, perfetta per gli amanti del <strong>trekking** e della <strong>natura**.  Scoprite la bellezza della **Valle Benedetta** e dell''<strong>acquedotto di Colognole** con questo sentiero emozionante!</p>',
  'Tutte le Attività e Paesi',
  7.2,
  245,
  194,
  396,
  132,
  '02:12',
  NULL,
  NULL,
  1850,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v3-87617317',
  NULL,
  43.522459,
  10.419669,
  'POINT(10.419669 43.522459)',
  '88e41deb34a50f55fc345e169b7db48eb26fa09352a047bb9ea7d14e77d8d197',
  'Escursione Valle Benedetta Acquedotto Colognole: Facile giro di 7.2km in Toscana (+245m) da Valle Benedetta all''acquedotto! Sentiero segnalato, adatto a tutti.',
  'Valle Benedetta: Escursione all''Acquedotto di Colognole (Toscana)',
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
VALUES (87617317, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v3-87617317', NOW(), '88e41deb34a50f55fc345e169b7db48eb26fa09352a047bb9ea7d14e77d8d197')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617317);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617317/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617317;

COMMIT;

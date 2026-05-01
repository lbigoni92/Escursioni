BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87479081,
  'Valle Benedetta - Acquedotto di Colognole',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2 id="escursione-valle-benedetta-acquedotto-cognole">Escursione alla Valle Benedetta e all''Acquedotto di Colognole</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza per questa bellissima escursione è la <strong>Valle Benedetta</strong>, un luogo facilmente raggiungibile in auto o con i mezzi pubblici.  È un ottimo punto di partenza per chi vuole iniziare una giornata di trekking in montagna con un percorso accessibile a tutti.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Questo giro domenicale è un classico! Partendo dalla <strong>Valle Benedetta</strong>, seguirai un sentiero ben segnalato che ti porterà gradualmente verso l''alto. Dopo circa 2 km, incontrerai l''imbocco per l''<strong>Acquedotto di Colognole</strong>. Da lì, inizierà una discesa che ti condurrà attraverso il suggestivo tratto dell''acquedotto.  Puoi scegliere di attraversarlo sopra o sotto, ma consiglio di optare per il tratto superiore per una vista più panoramica e un''esperienza più caratteristica.  Fai attenzione, soprattutto se il sentiero è umido.  Dopo l''acquedotto, raggiungerai un bivio dove potrai tornare indietro, completando così il percorso.  Si tratta di un percorso fattibile anche in notturno, se sei abituato.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa <strong>escursione</strong> è di <strong>facile</strong> difficoltà, adatta a tutti, anche a chi non ha molta esperienza nel trekking.  La distanza totale è di circa <strong>9.57 km</strong> con un <strong>dislivello positivo di 351 metri</strong>.  Il sentiero è ben segnalato, ma è sempre consigliabile indossare scarpe da trekking adeguate e portare con sé acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p><em>(Aggiungere qui la traccia GPS in formato KML o GPX)</em></p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 9.57 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 351 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto o a piedi</li>
  <li><strong>Comune:</strong> Valle Benedetta, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.57,
  351,
  191,
  404,
  206,
  '3:26',
  179,
  '2:59',
  2325,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2020-09-01',
  '2020-09-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-87479081',
  NULL,
  43.523021,
  10.415604,
  'POINT(10.415604 43.523021)',
  '248b6853b45b3e1ea954a8cd94355ef698f65d48de350e0c7a4ddd062e449f5b',
  'Escursione Valle Benedetta Acquedotto Colognole: facile giro di 9.5km in Toscana (+351m) da Valle Benedetta all''acquedotto. Sentiero ben segnalato, discesa s...',
  'Valle Benedetta: Escursione all''Acquedotto di Colognole (...',
  'Firenze e provincia',
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
VALUES (87479081, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-87479081', NOW(), '248b6853b45b3e1ea954a8cd94355ef698f65d48de350e0c7a4ddd062e449f5b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479081);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479081/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479081;

COMMIT;

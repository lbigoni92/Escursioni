BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617317,
  'Valle benedetta - acquedotto di Colognole v3',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2 id="escursione-valle-benedetta-acquedotto-colognole-v3">Escursione alla Valle Benedetta e all''Acquedotto di Colognole</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è la <strong>Valle Benedetta</strong>, un luogo facilmente raggiungibile in auto. Da qui, segui semplicemente i sentieri ben segnalati che iniziano subito dopo l''uscita.  Non ci sono particolari indicazioni per raggiungere il punto di partenza, basta seguire la strada principale fino a Valle Benedetta e cercare il punto di inizio del sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione è un classico giro domenicale, perfetto per una giornata all''aria aperta. Inizi dalla <strong>Valle Benedetta</strong> e prosegui lungo il sentiero, ben segnalato, fino al km 2. Da qui, prendi l''imbocco per l''<strong>Acquedotto di Colognole</strong>.  Si tratta di una discesa facile, ma è importante prestare attenzione, soprattutto se il terreno è umido. Puoi scegliere di attraversare l''acquedotto sopra o sotto, ma consiglio di passare sopra per godere di un panorama più caratteristico. Dopo l''acquedotto, segui il sentiero fino a raggiungere una casa in mattoni, da lì s''imbocca un bivio per ritornare al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è di <strong>facile</strong> difficoltà e adatta a tutti, anche a chi non ha molta esperienza. La lunghezza totale del percorso è di circa <strong>7.2 km</strong> con un <strong>dislivello di +245 metri</strong>.  È un percorso adatto anche per una passeggiata serale, fattibile anche di notte. Ricorda sempre di indossare scarpe adeguate!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per aiutarti nella tua escursione, ecco le informazioni pratiche e la traccia GPS:</p>
<ul>
    <li><strong>Distanza:</strong> Circa 7.2 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 245 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 7.2 km (andata)</li>
    <li><strong>Dislivello:</strong> Circa 245 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto</li>
    <li><strong>Comune:</strong> Valle Benedetta, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.2,
  245,
  194,
  396,
  132,
  '2:31',
  132,
  '2:12',
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
  'Valle Benedetta: Escursione all''Acquedotto di Colognole (...',
  'Livorno e costa toscana',
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

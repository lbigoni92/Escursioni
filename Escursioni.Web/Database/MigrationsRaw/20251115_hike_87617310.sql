BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617310,
  'Valle benedetta - acquedotto di Colognole v2',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2 id="escursione-valle-benedetta-acquedotto-colognole">Escursione alla Valle Benedetta e all''Acquedotto di Colognole</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è la **Valle Benedetta**, un luogo facilmente raggiungibile in auto. Una volta arrivati a valle, dovrete seguire il sentiero ben segnalato che inizia direttamente dal parcheggio.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Iniziando dalla **Valle Benedetta**, il sentiero si snoda dolcemente attraverso un paesaggio montano incantevole. Dopo circa 9.57 km, raggiungerete il km 2, dove si trova l''imbocco per l''**acquedotto di Colognole**. Da qui, inizierà una discesa che vi porterà al suo interno. Potrete scegliere di attraversare l''acquedotto sopra o sotto, ma consiglio vivamente il passaggio sopra, più caratteristico e panoramico. Dopo averlo attraversato, proseguite lungo il sentiero fino al bivio, dove potrete iniziare la risalita per il rientro verso la valle.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa è un''escursione **facile**, adatta a tutti, anche a chi non ha molta esperienza. La distanza è di 9.57 km con un dislivello di +351 metri. Il sentiero è ben segnalato, ma è consigliabile indossare scarpe adeguate e portare con sé acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare la traccia GPS per questa escursione e seguirla durante il percorso.  Ricordatevi di controllare sempre le previsioni del tempo prima di partire e di informare qualcuno del vostro itinerario.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> 9.57 km (solo andata)</li>
    <li><strong>Dislivello:</strong> 351 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Valle Benedetta (accessibile in auto)</li>
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
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v2-87617310',
  NULL,
  43.523021,
  10.415604,
  'POINT(10.415604 43.523021)',
  'ac706741baef1672e1fabaafaf286509f11feb70e75ca883aa9a5ee759675483',
  'Escursione Valle Benedetta Acquedotto Colognole: Facile giro di 9.5km in Toscana (+351m) da Valle Benedetta all''acquedotto. Sentiero segnalato, adatto a tutti!',
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
VALUES (87617310, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v2-87617310', NOW(), 'ac706741baef1672e1fabaafaf286509f11feb70e75ca883aa9a5ee759675483')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617310);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617310/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617310;

COMMIT;

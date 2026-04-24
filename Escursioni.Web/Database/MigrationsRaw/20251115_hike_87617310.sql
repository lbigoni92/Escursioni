BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617310,
  'Valle benedetta - acquedotto di Colognole v2',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2>Valle Benedetta – Acquedotto di Colognole: Escursione Trekking in Montagna</h2>

<h3>Il Percorso – Escursione Facile in Sentiero in Italia</h3>

<p>
Immergiti nella bellezza della <strong>Valle Benedetta</strong> con questa classica <strong>escursione trekking</strong>, perfetta per una giornata domenicale. Il sentiero, ben segnalato, ti guiderà attraverso paesaggi mozzafiato della <strong>montagna italiana</strong>, offrendoti un’esperienza di <strong>trekking</strong> indimenticabile. Questo <strong>sentiero per escursioni</strong> è accessibile a tutti, rendendolo ideale per famiglie e principianti. Scopri i segreti della natura circostante mentre percorri questo <strong>sentiero in montagna</strong> e goditi un’esperienza unica in <strong>Italia</strong>.
</p>

<h3>Cosa Aspettarsi – Un Trekking Panoramico e Semplice</h3>

<p>
La <strong>escursione</strong> inizia da <strong>Valle Benedetta</strong> e prosegue lungo sentieri ben tracciati. Il tratto iniziale è facile, ma si presenta una discesa significativa verso il famoso <strong>acquedotto di Colognole</strong>.  Durante l''<strong>escursione trekking</strong>, potrai ammirare panorami spettacolari, godere della frescura della <strong>montagna</strong> e immergerti nella bellezza della <strong>natura italiana</strong>. Ricorda di prestare particolare attenzione al tratto dell''<strong>acquedotto</strong>, particolarmente umido. La difficoltà è considerata facile, ideale per una <strong>trekking</strong> di un giorno.  Possibilità di fare il percorso anche di notte.
</p>

<h3>Informazioni Utili – Dettagli per la Tua Escursione</h3>

<ul>
    <li><strong>Distanza:</strong> Circa 5 km</li>
    <li><strong>Dislivello:</strong> Circa 300 metri</li>
    <li><strong>Difficoltà:</strong> Facile – Adatta a tutti</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero segnato, adatto al <strong>trekking</strong> e all’<strong>escursionismo</strong></li>
    <li><strong>Punti di Interesse:</strong> Acquedotto di Colognole, panorama sulla Valle Benedetta</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarpe da trekking adeguate, acqua, snack, cappello, protezione solare</li>
    <li><strong>Consigli:</strong>  Il tratto dell''acquedotto è più caratteristico se percorso sopra, prestando attenzione all''umidità. Usare scarpe adeguate per una <strong>trekking</strong> sicura.</li>
</ul>

<p>
Preparati per un’entusiasmante <strong>escursione trekking</strong> nella splendida <strong>Valle Benedetta</strong>. Questo <strong>sentiero per escursioni</strong> ti regalerà momenti indimenticabili immerso nella natura incontaminata della <strong>montagna italiana</strong>.  
</p>',
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
  'Lucchesia e colline toscane',
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

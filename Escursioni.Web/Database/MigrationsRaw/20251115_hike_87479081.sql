BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87479081,
  'Valle Benedetta - Acquedotto di Colognole',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2>Valle Benedetta - Acquedotto di Colognole: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso: Un Classico Sentiero per l''Escursione in Valle Benedetta</h3>

<p>Questo <strong>sentiero di trekking</strong> nella <strong>Valle Benedetta</strong> rappresenta un''ottima opzione per un''escursione domenicale, accessibile a tutti i livelli di esperienza. Il percorso inizia in <strong>Valle Benedetta</strong> e si snoda lungo sentieri ben segnalati, offrendo un''immersione profonda nella <strong>natura e nella montagna italiana</strong>. La discesa verso l''<strong>Acquedotto di Colognole</strong> è un tratto fondamentale, caratterizzato da una pendenza che richiede attenzione, specialmente in condizioni di umidità.</p>

<h3>Cosa Aspettarsi: Un''Escursione Panoramica e Naturale</h3>

<p>Preparatevi a un''escursione ricca di panorami mozzafiato e di scoperte nella <strong>natura incontaminata</strong>. Il tratto dell''<strong>Acquedotto di Colognole</strong>, nonostante la sua semplicità, offre un''esperienza unica, consigliabile perdersi sopra il suo passaggio, per una prospettiva più caratteristica e <em>panoramica</em>. Questa <strong>escursione in sentiero</strong> è un''opportunità per godersi il silenzio e la bellezza delle Alpi.</p>

<h3>Informazioni Utili: Dettagli per un Trekking Sicuro e Appagante</h3>

<ul>
    <li><b>Distanza Totale:</b> Circa 6 km</li>
    <li><b>Difficoltà:</b> Facile/Media (richiede attenzione nella discesa verso l''Acquedotto)</li>
    <li><b>Dislivello:</b> Circa 300 metri</li>
    <li><b>Punti di Interesse:</b> <strong>Acquedotto di Colognole</strong>, paesaggi alpini, flora e fauna locale</li>
    <li><b>Consigli:</b> Utilizzare scarpe da trekking adeguate, acqua, snack e abbigliamento a strati.  È consigliabile l''uso di bastoncini da trekking per maggiore stabilità.</li>
</ul>

<p>Questa <strong>escursione in Italia</strong> è fattibile anche in notturno, offrendo un''esperienza diversa e suggestiva. Ricordatevi di rispettare l''ambiente e di seguire le indicazioni dei sentieri.  La <strong>Valle Benedetta - Acquedotto di Colognole</strong> è un vero gioiello per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>.</p>',
  'Tutte le Attività e Paesi',
  9.57,
  351,
  191,
  404,
  160,
  '02:40',
  NULL,
  NULL,
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
  'Escursione Valle Benedetta: Acquedotto di Colognole! Sentiero facile e panoramico per tutti. Discesa suggestiva e vista acquedotto. Scarpe adeguate!',
  'Trekking Valle Benedetta: Acquedotto Colognole - Sentiero Facile',
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

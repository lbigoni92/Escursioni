BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617293,
  'Valle benedetta - acquedotto di Colognole v1',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2 id="escursione-valle-benedetta-acquedotto-colognole">Escursione alla Valle Benedetta e all''Acquedotto di Colognole</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è in <strong>Valle Benedetta</strong>, un luogo incantevole dove potrai iniziare il tuo <strong>trekking</strong>. È facilmente raggiungibile in auto, seguendo le indicazioni per Valle Benedetta in provincia di <strong>Toscana</strong>, Italia. Una volta arrivati a Valle Benedetta, individua il punto di inizio del sentiero, che è ben segnalato.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo <strong>sentiero</strong> è un classico giro domenicale, perfetto per chi cerca una bella <strong>escursione</strong> senza particolari difficoltà. Parti da <strong>Valle Benedetta</strong> e prosegui lungo il sentiero, sempre ben segnalato. Dopo circa 2 km, raggiungerai l''imbocco per l''<strong>acquedotto di Colognole</strong>. Qui inizierai una discesa, la parte più interessante del percorso. Puoi scegliere di attraversare l''acquedotto, una scelta consigliata per godere di un panorama suggestivo (attenzione, il tratto può essere scivoloso quando è umido).  Dopo l''acquedotto, segui il sentiero fino a un bivio, dove prenderai la strada per tornare indietro. L''intero percorso è un <strong>anello</strong> di circa 7.32 km.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è considerata di <strong>facile</strong> difficoltà, adatta a tutti, anche a chi non ha molta esperienza di <strong>trekking</strong>. Il dislivello è di circa +215 metri, quindi non è particolarmente impegnativa.  È consigliabile indossare scarpe da trekking adeguate e portare con sé acqua e snack.  Inoltre, dato che il sentiero può essere umido, soprattutto dopo la pioggia, è bene prestare attenzione.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Non disponibile (in fase di implementazione). Ti consiglio di scaricare una mappa offline della zona e di utilizzare un''app di tracciamento GPS per seguire il percorso.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 7.32 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 215 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto</li>
  <li><strong>Comune:</strong> Valle Benedetta, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.32,
  215,
  203,
  412,
  160,
  '2:36',
  136,
  '2:16',
  2002,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-05-01',
  '2021-05-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v1-87617293',
  NULL,
  43.523062,
  10.416098,
  'POINT(10.416098 43.523062)',
  '6f050557e54cc4da2716a5a5ff59e2631e73d5661d6e4ff637ad8073be691004',
  'Escursione Valle Benedetta: Acquedotto di Colognole - Anello facile 7.3km, +285m. Trekking in Toscana, sentieri segnalati. Ideale per una giornata domenicale!',
  'Valle Benedetta: escursione all''Acquedotto di Colognole (...',
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
VALUES (87617293, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v1-87617293', NOW(), '6f050557e54cc4da2716a5a5ff59e2631e73d5661d6e4ff637ad8073be691004')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617293);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617293/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617293;

COMMIT;

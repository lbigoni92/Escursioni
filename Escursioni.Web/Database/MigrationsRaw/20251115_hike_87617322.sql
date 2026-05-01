BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617322,
  'Valle benedetta - acquedotto di Colognole v4',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2 id="escursione-valle-benedetta-acquedotto-colognole-v4">Escursione al Monte Forato da Cardoso</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bella <strong>escursione</strong> è nella <strong>Valle Benedetta</strong>, un luogo facilmente raggiungibile in auto. Da qui, segui i sentieri ben segnalati che iniziano il <strong>trekking</strong>.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''<strong>escursione</strong> inizia da <strong>Valle Benedetta</strong> e si snoda lungo un <strong>sentiero</strong> ben tracciato. Dopo circa 7.8 km, raggiungerai il km 2, dove troverai l''imbocco per l''<strong>acquedotto</strong> di <strong>Colognole</strong>. Da lì, preparati a una discesa, con un tratto all''interno dell''acquedotto che ti lascerà senza parole. La discesa è semplice e puoi scegliere di attraversare l''acquedotto in salita o in discesa, ma consiglio vivamente di farlo in salita per godere di un panorama ancora più caratteristico. Dopo l''acquedotto, segui il <strong>sentiero</strong> fino a raggiungere una casa in mattoni, dove troverai un bivio per tornare indietro.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> è considerata <strong>facile</strong>, adatta a tutti, anche ai principianti. La <strong>distanza</strong> è di 7.8 km con un <strong>dislivello</strong> positivo di 282 metri. Ricorda di indossare scarpe adeguate e di portare con te acqua e snack, soprattutto se scegli di affrontare l''<strong>escursione</strong> anche di notte.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Ecco la <strong>traccia GPS</strong> per accompagnarti in questa <strong>escursione</strong>: [Inserisci qui la traccia GPS] </p>
<p><strong>Distanza:</strong> Circa 7.8 km (solo andata)</p>
<p><strong>Dislivello:</strong> Circa 282 metri</p>
<p><strong>Difficoltà:</strong> Facile</p>
<p><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</p>
<p><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto o a piedi</p>
<p><strong>Comune:</strong> Valle Benedetta, Toscana, Italia</p>
<p><strong>Tipo di sentiero:</strong> Sentiero escursionistico</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 7.8 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 282 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto o a piedi</li>
  <li><strong>Comune:</strong> Valle Benedetta, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.8,
  282,
  197,
  403,
  171,
  '2:51',
  149,
  '2:29',
  1665,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2019-01-01',
  '2019-01-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v4-87617322',
  NULL,
  43.522436,
  10.41272,
  'POINT(10.41272 43.522436)',
  'b6a7abc2b78be993fb02ecd0da7cdb068209b20349048384e74a0272393031fd',
  'Escursione Valle Benedetta Acquedotto Colognole (Toscana) - Facile giro di 7.8km con 282m dislivello. Percorso segnalato fino all''acquedotto, discesa panoram...',
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
VALUES (87617322, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v4-87617322', NOW(), 'b6a7abc2b78be993fb02ecd0da7cdb068209b20349048384e74a0272393031fd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617322);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617322/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617322;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  110637494,
  'Pania verde',
  'La salita alla pania verde non presenta problemi di segnali almeno al punto in cui ci si presenta davanti una grande pietraia... Li abbiamo sbagliato e scalato la pietra presi in inganno da alcuni omini... Non fatelo.... Il percorso corretto parte dall''inizio della pietra subito a dx... E segnato male ma aggira il punto critico.Anche nel bosco la segnaletica lascia a desiderare e abbiamo trovato difficoltà a ritrovare il sentiero.Ma una volta in cresta il panorama è unico e magnifico ne vale la pena.Non abbiamo fatto un anello ma andati e tornati dal solito punto perché uno dei nostri si era fermato, ma in percorso mertita',
  '<h2 id="escursione-pania-verde">Escursione alla Pania Verde</h2>

<p>La salita alla Pania Verde può sembrare un po'' complicata all''inizio, ma una volta superato il punto critico, la ricompensa è impagabile. Questa escursione in anello attraverso il territorio di Fornovolasco è un''esperienza da non perdere per chi ama la montagna e il panorama!</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza per questa escursione è facilmente raggiungibile in auto o mezzi pubblici fino al comune di Fornovolasco, in provincia di Toscana. Da qui, seguire le indicazioni per il sentiero di partenza, che si trova subito a destra della grande pietraia. È importante tenere presente che il sentiero è inizialmente poco segnalato, quindi fate attenzione!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Il percorso inizia con una ripida salita attraverso una pietraia dove è facile perdersi.  Non proseguire oltre la pietraia: è un errore comune! Una volta superato questo punto critico, il sentiero si snoda attraverso il bosco, dove la segnaletica è a volte scarsa.  Seguendo il sentiero, arriverete alla cresta dove vi attendono panorami mozzafiato sulla Val d''Aia e sulle colline circostanti.  Dopo aver ammirato il panorama, ritornate lungo lo stesso sentiero per l''andata.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa escursione è considerata di difficoltà difficile a causa del dislivello di 417 metri e del terreno irregolare, soprattutto nella parte iniziale.  Si consiglia di indossare scarpe da trekking adatte e di portare con sé acqua e snack.  Il sentiero è ben battuto, ma la segnaletica non è sempre precisa, quindi è consigliabile avere una mappa e una bussola o utilizzare un''app di navigazione.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per aiutare nella navigazione, ecco la traccia GPS dell''escursione: [Inserire Traccia GPS qui] (Nota: la traccia GPS non è fornita, inserire il link a una traccia GPS disponibile online).</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li ><strong>Distanza:</strong> 3.53 km (Anello)</li>
  <li ><strong>Dislivello:</strong> 417 metri</li>
  <li ><strong>Difficoltà:</strong> Difficile</li>
  <li ><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li ><strong>Punto di partenza:</strong> Piana alle Pianacce, Fornovolasco, Toscana</li>
  <li ><strong>Comune:</strong> Fornovolasco, Toscana</li>
  <li ><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  3.53,
  417,
  1096,
  1525,
  124,
  '2:04',
  108,
  '1:48',
  534,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2022-08-01',
  '2022-08-01',
  '2022-08-14 00:00:00',
  '2022-08-14 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pania-verde-110637494',
  NULL,
  44.049697,
  10.350692,
  'POINT(10.350692 44.049697)',
  'e8d694a4e97a90c56cc4147be0d6e8eeb8ea9e5e7d432d5dd3f084ed4a98cc81',
  'Escursione Pania Verde Fornovolasco: Anello difficile 3.5km, +417m. Salita impegnativa, segnaletica scarsa ma panorama unico! Toscana, Italia.',
  'Pania Verde: Escursione Difficile da Fornovolasco (Toscana)',
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
VALUES (110637494, 'https://it.wikiloc.com/percorsi-escursionismo/pania-verde-110637494', NOW(), 'e8d694a4e97a90c56cc4147be0d6e8eeb8ea9e5e7d432d5dd3f084ed4a98cc81')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110637494);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110637494/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110637494/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110637494;

COMMIT;

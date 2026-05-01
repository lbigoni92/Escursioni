BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104293519,
  'Bosco della patanella',
  'Bosco della patanella Questo sentiero, è stato un ripiego dell''ultimo minuto, siamo venuti qua a fare due passi, è una pineta qualsiasi ,niente d''eccezionale; le parti più carine sono degli scorci sull''argentario e sulla laguna, dove è possibile vedere numerosi uccelli. Nel percorso (lago e facilmente seguibile) è possibile trovare animali e vari tipi di vegetazione.',
  '<h2 id="escursione-bosco-della-patanella">Escursione al Bosco della Patanella</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa escursione al Bosco della Patanella si trova comodamente raggiungibile da Quattro Strade.  Partendo dal centro del paese, segui le indicazioni per "Bosco della Patanella" o "Pineta Argentario". Il parcheggio è situato all''inizio del sentiero, facilmente individuabile.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo breve trekking di circa 1.85 km, rappresenta un''ottima escursione per una giornata all''aria aperta.  Il sentiero è prevalentemente pianeggiante, un anello che si snoda tra la pineta e offre splendidi scorci sul Lago Argentario.  Il percorso è semplice e facilmente percorribile, adatto anche a famiglie e principianti.  Durante l''escursione, avrai la possibilità di ammirare panorami mozzafiato sul lago e la laguna, oltre a una ricca avifauna.  In alcuni punti del sentiero potrai avvistare animali e diverse specie vegetali.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come **Facile**, con un dislivello di soli +11 metri.  La distanza di circa 1.85 km la rende adatta anche a chi non ha molta esperienza nel trekking.  È consigliabile indossare scarpe da trekking o scarpe da ginnastica adatte al sentiero.  Porta con te acqua, snack e crema solare, soprattutto durante i mesi estivi.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per facilitare la tua escursione, ti forniamo la traccia GPS del sentiero. Ricorda di scaricare la traccia sul tuo dispositivo GPS prima della partenza.</p>

<ul>
  <li>**Distanza:** Circa 1.85 km (anello)</li>
  <li>**Dislivello:** Circa 11 metri</li>
  <li>**Difficoltà:** Facile</li>
  <li>**Periodo consigliato:** Primavera, Estate, Autunno</li>
  <li>**Punto di partenza:** Pineta Argentario, Quattro Strade</li>
  <li>**Comune:** Quattro Strade, Toscana, Italia</li>
  <li>**Tipo di sentiero:** Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 1.85 km (anello)</li>
  <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 11 metri</li>
  <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="informazioni-utili-periodo">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="informazioni-utili-punto-partenza">Punto di partenza:</strong> Pineta Argentario, Quattro Strade</li>
  <li><strong id="informazioni-utili-comune">Comune:</strong> Quattro Strade, Toscana</li>
  <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  1.85,
  11,
  -20,
  -1,
  34,
  '0:34',
  28,
  '0:29',
  332,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quattro Strade',
  '2022-05-01',
  '2022-05-01',
  '2022-05-31 00:00:00',
  '2022-05-31 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/bosco-della-patanella-104293519',
  NULL,
  42.467715,
  11.216562,
  'POINT(11.216562 42.467715)',
  'a521f1ef19ab963968ac8b07fb9e036d591633f1015d01d011ae97a0355561f2',
  'Escursione Bosco della Patanella Quattro Strade: facile anello 1.85km, +15m, pineta e vista Argentario/Laguna. Ideale per una passeggiata!',
  'Bosco della Patanella: Escursione Facile da Argentario',
  'Grosseto e Maremma',
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
VALUES (104293519, 'https://it.wikiloc.com/percorsi-escursionismo/bosco-della-patanella-104293519', NOW(), 'a521f1ef19ab963968ac8b07fb9e036d591633f1015d01d011ae97a0355561f2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104293519);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104293519/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

COMMIT;

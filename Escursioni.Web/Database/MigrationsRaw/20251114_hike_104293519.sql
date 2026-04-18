BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  104293519,
  'Bosco della patanella',
  'Bosco della patanella Questo sentiero, è stato un ripiego dell''ultimo minuto, siamo venuti qua a fare due passi, è una pineta qualsiasi ,niente d''eccezionale; le parti più carine sono degli scorci sull''argentario e sulla laguna, dove è possibile vedere numerosi uccelli. Nel percorso (lago e facilmente seguibile) è possibile trovare animali e vari tipi di vegetazione.',
  '<h2>Escursione Trekking Bosco della Patanella Argento Argento</h2>

<h3>Il Percorso</h3>

<p>Il <strong>sentiero Bosco della Patanella</strong> è un''escursione adatta a tutti, con un percorso facilmente percorribile che si snoda attraverso la pineta. Questo breve <strong>trekking</strong> offre una splendida opportunità per immergersi nella <strong>natura</strong> e godere di panorami mozzafiato sull’**Argento Argento** e sulla **Laguna**. L''<strong>escursione</strong> è perfetta per una giornata di <strong>trekking</strong>, ideale per famiglie e amanti della <strong>montagna</strong>.</p>

<p>Il percorso è lungo circa 3-4 km ed è caratterizzato da un dislivello minimo, rendendolo accessibile anche ai principianti.  Durante il <strong>sentiero</strong>, si ammirano scorci incantevoli sulla **laguna** e sulla **natura** circostante, oltre a diverse specie di uccelli che popolano l''area. È un''ottima opzione per un''escursione di un paio d''ore, offrendo un piacevole momento di svago in mezzo alla <strong>montagna</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Scorci spettacolari sull’**Argento Argento** e sulla **Laguna** di **Patinella**</li>
  <li>Possibilità di avvistare numerose specie di uccelli, <strong>natura** locale e biodiversità</li>
  <li>Vegetazione tipica della <strong>pineta**, con diverse specie di alberi e arbusti</li>
  <li>Un percorso <strong>facilmente seguibile** adatto a tutti i livelli di esperienza.</li>
</ul>

<p>Potrai apprezzare la tranquillità del <strong>bosco**, lasciandoti alle spalle il caos cittadino e godendo del profumo della <strong>natura**. Questa <strong>escursione** è un''occasione unica per riconnettersi con l''ambiente circostante e vivere un''esperienza di <strong>trekking** autentica.</p>

<h3>Informazioni Utili</h3>

<p>L''<strong>escursione Bosco della Patanella** si trova nelle immediate vicinanze di **Argento Argento**, un''area protetta ricca di biodiversità.  La difficoltà del <strong>sentiero** è bassa, adatta a famiglie e bambini. È consigliabile indossare scarpe da trekking adatte al terreno e portare con sé acqua e snack.  Ricorda di rispettare l’ambiente e di non lasciare tracce del tuo passaggio durante la tua <strong>escursione** in questa splendida zona del **trekking** in **Italia**.  Questo <strong>sentiero** rappresenta una piacevole gita di un giorno per gli amanti del <strong>trekking** e della <strong>natura**. </p>',
  'Tutte le Attività e Paesi',
  1.85,
  15,
  20,
  1,
  28,
  '00:28',
  28,
  '00:28',
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
  'Escursioni Bosco della Patanella: sentiero facile con vista sull''Argentario e la Laguna! Osserva uccelli e natura incontaminata.',
  'Trekking Bosco della Patanella Argentario Lagona Uccelli',
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

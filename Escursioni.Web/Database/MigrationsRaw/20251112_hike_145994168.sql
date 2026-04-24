BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  145994168,
  'Lucese - Prana - Baita Barsi - Baita Verde - Campo all''orzo',
  'Itinerario ottimo anche per le persone meno allenate e per i mesi invernali; la vetta regala un panorama che merita ... possiamo vedere dal gruppo delle Panie a Massaciuccoli fino a Livorno. Siamo partiti dal Passo del Lucese (558 m.), raggiungibile facilmente in auto, e c''è posto per le auto visto l''enorme parcheggio, da qui si raggiunge il bar, a fianco del quale inizia il percorso (i primi metri sono in salita su asfalto) su percorso tortuoso partenza del segnavia 101. Proseguendo arriviamo ad un bivio, dove possiamo troviamo le indicazioni, sulla sinistra si sale per la Casa del Maestro (847 m.) e per il Prana;noi abbiamo scelto di proseguire prima per la Baita barsi per poi raggiungere la Baita Vedi da qua abbiamo proseguito a Chiesa di Campo all''Orzo, situata nel punto più alto di Campo all''Orzo, a dominare le vallate, qua abbiamo pranzato. In seguito siamo saliti sulla pania tramite il sentiero dei tedeschi (non è la via normale ma un sentiero EE poco conosciuto e che a tratti si perde nella vegetazione) arrivati in vetta abbiamo fatto doto e ornati in dietro per la via normale. Il Sentiero (escluso il tratto EE opinabile ) p molto semplice ci sono delle fonti alle 2 baite e a campo all''orzo più quella al parcheggio. Non sottovalutate mai la montagna per quanto facile venite sempre con attrezzatura adeguata e almeno 2 lt di acqua',
  '<h2>Lucese - Prana - Baita Barsi - Baita Verde - Campo all''orzo: Trekking Facile in Montagna</h2>

<h3>Il percorso</h3>
<p>Questo splendido sentiero di trekking, situato in **Lucese**, offre un''esperienza indimenticabile per appassionati di natura e amanti del trekking. Ideale anche per escursioni di **trekking** per persone meno allenate, il percorso si snoda attraverso paesaggi mozzafiato della **montagna** italiana, perfetto per un''escursione in **sentiero** di una giornata. Il sentiero parte dal **Passo del Lucese** (558 m.), facilmente raggiungibile in auto, e conduce attraverso le **Paine** fino al **Campo all''orzo**, un punto panoramico eccezionale. Il **trekking** in questa zona è un''ottima opportunità per immergersi nella **natura** incontaminata e godere di una vista spettacolare su **Livorno** e le pianure circostanti.</p>

<h3>Cosa aspettarsi</h3>
<ul>
    <li>Un percorso di **trekking** relativamente semplice, adatto anche ai principianti.</li>
    <li>Un''escursione di circa 8-10 km, con un dislivello complessivo di circa 400 metri.</li>
    <li>La possibilità di ammirare panorami mozzafiato sulle **Paine**, su **Massaciuccoli** e fino a **Livorno**.</li>
    <li>La visita di diverse **baite** storiche, come la **Baita Barsi** e la **Baita Verde**, perfette per una pausa pranzo o un ristoro.</li>
    <li>La scoperta di un punto panoramico unico, il **Campo all''orzo**, situato nel punto più alto dell''area.</li>
    <li>La possibilità di incontrare fonti d''acqua lungo il percorso, soprattutto alle **baite** e al **Campo all''orzo**.</li>
</ul>

<h3>Informazioni utili</h3>
<p>Il sentiero è facilmente accessibile in auto fino al **Passo del Lucese** (558 m.), dove è presente un ampio **parcheggio**. Il percorso inizia dal bar adiacente al segnavia 101, con una prima salita su asfalto. È importante ricordare che, anche se il sentiero è considerato semplice, è sempre consigliabile indossare abbigliamento e scarpe da **trekking** adeguati, nonché portare con sé acqua e cibo, soprattutto durante i mesi invernali.  L''itinerario include un tratto del "Sentiero dei Tedeschi", un sentiero EE poco conosciuto che offre una prospettiva alternativa, ma che a tratti può essere impegnativo.  Ricorda, la **montagna** richiede rispetto: preparati adeguatamente e non sottovalutare le condizioni meteorologiche.  Approfitta di questa opportunità per un''**escursione** indimenticabile in **Italia**, ammirando la bellezza del paesaggio e godendo di un''esperienza di **trekking** unica.  Questo sentiero è perfetto per gli amanti del **trekking** e dell''escursionismo di **sentiero** in **montagna**.</p>',
  'Tutte le Attività e Paesi',
  15.37,
  764,
  549,
  1219,
  389,
  '6:29',
  338,
  '5:38',
  1718,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Lucese',
  '2023-09-01',
  '2023-09-01',
  '2023-09-03 00:00:00',
  '2023-09-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lucese-prana-baita-barsi-baita-verde-campo-allorzo-145994168',
  NULL,
  43.937082,
  10.382667,
  'POINT(10.382667 43.937082)',
  'e0968a42ce764d5227f432e505417c853928c8fed48ded5877f79e36999a127a',
  'Escursione Lucese Prana: Anello facile +764m in Toscana! Vetta con vista Panie & Livorno. Partenza Passo Lucese (558m). Ideale anche per principianti.',
  'Lucese: Escursione al Prana con Baita Barsi (Toscana)',
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
VALUES (145994168, 'https://it.wikiloc.com/percorsi-escursionismo/lucese-prana-baita-barsi-baita-verde-campo-allorzo-145994168', NOW(), 'e0968a42ce764d5227f432e505417c853928c8fed48ded5877f79e36999a127a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 145994168);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/145994168/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145994168/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145994168;

COMMIT;

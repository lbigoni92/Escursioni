BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  168612652,
  'Monte costa, Monte Anchiana e Chiesa di Santa Barbara da Seravezza',
  'Quanto dico è frutto della mia esperienza personale, valutate secondo il vostro livello Partendo da Serravezza il sentiero si prende da un viottolo tra due casine subito in salita, si prosegue sino a quando non viene finito il tratto di stradina che porta all''attacco della cresta. al km 1.4 si ha il sentiero che porta all''attacco, il sentiro è segnato bene da puntini blu non è difficile raggiungere la cresta anche se il gps aiuta. La cresta è lunga circa 950mt e è faticosa fisicamente per chi non è abituato, faccio presente che quel tratto l''ho percorso in 50 minuti, sulla cresta ci sono 3 punti esposti 2 dei quali devono essere affrontati con la Massima attenzione. Dopo il 3° punto esposto la cresta si fa un poco più semplice da seguire e porta alla vetta poco panoramica che presente un unica roccia con il nome del monte. La discesa lato Sud si fa solo gps alla mano altrimenti è impossibile da seguire presenta però un bosco incantevole scorci unici sul mare. Una volta arrivati sulla SAV IL GROSSO è FATTO da qua vi rimane solo d''arrivare sul Monte Anchiana che magari è stancate da raggiungere per una piccola pettatina da Vito(niente di che dopo la cresta)Poi si parte con la discesa,passando per Gallena. Il sentiero è da farci con mente fredda buon fisico e una buona attitudine all''esposizione, non prendetelo sotto gamba. Personalmente c''ho messo sulle 5.45 ore per completarlo, SIAMO IN APUANE NON PRENDIAMOLE MAI SOTTO GAMBA. Percorso ad anello da Seravezza passando per: - Monte costa (2.2 km) - Monte Anchiana (5.6 km) - Chiesa di Santa Barbara (8.0 km)',
  '<h2>Trekking Monte Costa, Monte Anchiana e Chiesa di Santa Barbara da Seravezza</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong> in <strong>Appennino Tosco-Emiliano</strong> vi porterà alla scoperta di un percorso ad anello mozzafiato, partendo da <strong>Seravezza</strong> e attraversando i caratteristici <strong>Monte Costa</strong> e <strong>Monte Anchiana</strong>, culminando con la visita alla suggestiva <strong>Chiesa di Santa Barbara</strong>. Un''escursione imperdibile per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>, ideale per chi cerca una sfida fisica e un''immersione nella bellezza selvaggia della <strong>montagna</strong> italiana. Il percorso è stato progettato per offrire panorami spettacolari e un''esperienza di <strong>escursione</strong> autentica, con tratti adatti anche a escursionisti esperti.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Un percorso ad anello di circa <strong>8 km</strong> con un dislivello complessivo di circa <strong>800 metri</strong>.</li>
  <li>Un <strong>trekking</strong> impegnativo, che richiede una buona preparazione fisica e un''adeguata attrezzatura da <strong>trekking</strong>.</li>
  <li>Tratti esposti e alcuni passaggi rocciosi, quindi è consigliabile indossare scarpe da <strong>trekking</strong> adatte.</li>
  <li>Panorami mozzafiato sulla costa e sulle pianure circostanti, con scorci unici sul mare.</li>
  <li>La possibilità di ammirare la flora e la fauna tipiche della <strong>montagna</strong> toscana.</li>
</ul>

<h3>Informazioni Utili</h3>

<p>Il <strong>sentiero</strong> è ben segnalato con puntini blu, ma è consigliabile avere con sé una mappa e una bussola o un <strong>GPS</strong> per orientarsi correttamente. La discesa lato Sud è particolarmente impegnativa e richiede una buona esperienza di <strong>trekking</strong> e la presenza di un <strong>GPS</strong>.  La durata stimata dell''escursione è di circa 5 ore e 45 minuti, ma può variare in base al livello di preparazione fisica dei partecipanti.  È fondamentale prendere questo <strong>sentiero</strong> con la dovuta serietà, valutando le proprie capacità e condizioni fisiche.  Ricordate, siamo nelle <strong>Appuanes</strong>, non sottovalutate mai la <strong>montagna</strong>!</p>

<p>Il percorso include tappe significative: <strong>Monte Costa</strong> (2.2 km), <strong>Monte Anchiana</strong> (5.6 km), e la visita alla <strong>Chiesa di Santa Barbara</strong> (8.0 km). Questo permette di apprezzare al meglio la varietà del paesaggio e la ricchezza della storia e della cultura locale.</p>',
  'Tutte le Attività e Paesi',
  12.76,
  983,
  56,
  742,
  356,
  '5:56',
  309,
  '5:09',
  2088,
  'Molto difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Seravezza',
  '2024-04-01',
  '2024-04-01',
  '2024-04-26 00:00:00',
  '2024-04-26 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-costa-monte-anchiana-e-chiesa-di-santa-barbara-da-seravezza-168612652',
  NULL,
  43.993721,
  10.229035,
  'POINT(10.229035 43.993721)',
  'fbe308a3e9e06024ddf1fede9d0ffdc85f9a38771d4f66a799ff6a6cb6fa49a9',
  'Escursione Monte Costa, Anchiana e Santa Barbara da Seravezza: percorso anello toscano impegnativo (12.7km, +1m). Trekking ad anello da Seravezza, difficoltà...',
  'Monte Costa, Anchiana & Santa Barbara: Escursione Diffici...',
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
VALUES (168612652, 'https://it.wikiloc.com/percorsi-escursionismo/monte-costa-monte-anchiana-e-chiesa-di-santa-barbara-da-seravezza-168612652', NOW(), 'fbe308a3e9e06024ddf1fede9d0ffdc85f9a38771d4f66a799ff6a6cb6fa49a9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 168612652);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/168612652/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/168612652/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 168612652;

COMMIT;

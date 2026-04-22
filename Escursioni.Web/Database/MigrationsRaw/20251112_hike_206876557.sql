BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  206876557,
  'Civita di Bagnoregio',
  'Civita di Bagnoregio, conosciuta anche come "la città che muore", è un borgo medievale unico nel suo genere, situato su una collina di tufo nel Lazio. Il borgo è famoso per la sua bellezza senza tempo e la sua fragilità geologica, che lo rende soggetto all''erosione. L''accesso al borgo avviene esclusivamente tramite un lungo ponte pedonale che si erge a diverse decine di metri sulla valle sottostante. Questo ponte, costruito negli anni ''60 per sostituire un precedente collegamento crollato, offre un panorama spettacolare, ma può risultare impegnativo per chi soffre di vertigini o ha difficoltà a camminare in salita. Il percorso per raggiungere Civita è suggestivo ma richiede un minimo di preparazione fisica: dopo aver attraversato il ponte, si affronta una ripida salita prima di varcare l''antica Porta Santa Maria, l''ingresso principale del borgo. Una volta dentro, si viene catapultati in un’atmosfera d’altri tempi, tra vicoli in pietra, scorci pittoreschi e numerosi ristoranti e bar che animano la città, nonostante la sua natura di "borgo abbandonato". Il biglietto d''ingresso di 5 euro è un piccolo prezzo per visitare un luogo così affascinante, sospeso tra storia e natura, e merita sicuramente di essere visto almeno una volta nella vita.',
  '<h2>Escursione Trekking Civita di Bagnoregio: Sentiero alla Città che Muore nel Lazio</h2>

<h3>Il Percorso di Trekking</h3>
<p>Immergiti in un''esperienza di <strong>trekking</strong> indimenticabile con questa <strong>escursione a Civita di Bagnoregio</strong>, un gioiello del Lazio. Il <strong>sentiero</strong> per raggiungere questo borgo medievale è un vero e proprio viaggio nel tempo, un''avventura nella <strong>montagna</strong> che ti condurrà attraverso un paesaggio mozzafiato. Il percorso di <strong>trekking</strong> inizia con l''attraversamento del suggestivo ponte pedonale, un''esperienza che ti farà sentire sospeso tra cielo e terra. Dopo aver superato il ponte, preparati ad affrontare una ripida salita che ti porterà direttamente nel cuore di <strong>Civita di Bagnoregio</strong>, un borgo antico testimone di secoli di storia.</p>

<h3>Cosa Aspettarsi Durante l''Escursione</h3>
<ul>
    <li>Un <strong>sentiero di trekking</strong> di circa 1,5 km con un dislivello di 150 metri.</li>
    <li>Una <strong>escursione</strong> adatta a escursionisti con un minimo di preparazione fisica.</li>
    <li>Un''opportunità unica per ammirare il paesaggio unico della Valle dei Calanchi e la bellezza di <strong>Civita di Bagnoregio</strong>, la "Città che Muore".</li>
    <li>Un''esperienza immersiva nella <strong>natura</strong> e nella storia dell''Italia.</li>
</ul>

<p>Ricorda, il <strong>sentiero</strong> presenta una ripida salita, quindi è consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.  L''<strong>escursione a Civita di Bagnoregio</strong> è un''occasione per vivere un''autentica avventura di <strong>trekking</strong> in un ambiente straordinario.</p>

<h3>Informazioni Utili per il Trekking</h3>
<ul>
    <li>Difficoltà: Media</li>
    <li>Distanza: Circa 1,5 km</li>
    <li>Dislivello: 150 metri</li>
    <li>Durata: Circa 1-2 ore (a seconda del ritmo)</li>
    <li>Periodo consigliato: Primavera, Estate, Autunno</li>
    <li>Ingresso al borgo: Biglietto di ingresso di 5 euro</li>
    <li>Consigli: Porta con te acqua, cappello, crema solare e scarpe da trekking adatte. Attenzione alle condizioni del ponte pedonale e alla ripida salita.</li>
</ul>

<p>Scopri il fascino di <strong>Civita di Bagnoregio</strong>, un luogo unico nel suo genere, perfetto per una giornata di <strong>trekking</strong> e per immergerti nella <strong>natura</strong> e nella storia dell''Italia. Questa <strong>escursione di sentiero</strong> è un''esperienza che non dimenticherai.</p>',
  'Tutte le Attività e Paesi',
  3.9,
  210,
  379,
  481,
  46,
  '00:46',
  46,
  '00:46',
  561,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Lazio',
  'Civita di Bagnoregio',
  '2025-03-01',
  '2025-03-01',
  '2025-03-30 00:00:00',
  '2025-03-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/civita-di-bagnoregio-206876557',
  NULL,
  42.625865,
  12.103958,
  'POINT(12.103958 42.625865)',
  'bec9e86fe78697d377a91108cb0463f7996799d82c6afaa5c18dbb7d452f8a54',
  'Escursione Civita di Bagnoregio: Lazio, borgo medievale "che muore"! Trek di 3.9km +210m solo andata. Ponte pedonale spettacolare e salita impegnativa. Visit...',
  'Civita di Bagnoregio: Escursione da Bolsena (trekking)',
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
VALUES (206876557, 'https://it.wikiloc.com/percorsi-escursionismo/civita-di-bagnoregio-206876557', NOW(), 'bec9e86fe78697d377a91108cb0463f7996799d82c6afaa5c18dbb7d452f8a54')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 206876557);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/206876557/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/206876557/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 206876557;

COMMIT;

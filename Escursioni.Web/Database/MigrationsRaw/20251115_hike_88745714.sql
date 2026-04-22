BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  88745714,
  'Camelieto - Anello',
  'Il trekking Sant''Andrea Compito, molto bello, lo consiglio anche per una prima esperienza in solitaria. Il sentiero è ben segnato e si deve seguire 2 sentieri prima il 132 e poi il 130. Noi abbiamo sbagliato al km 3.5, abbiamo proseguito sulla strada invece di girare subito sul ponte sulla DX. Sul sentiero possiamo trovare castagne, funghi (ho trovato Roselle e Galletti e Pineggiole) Poco prima dell''intersezione del km 8.2 vi è un punto panoramico vi consiglio d''andarci, non non ci siamo andati perchè abbiamo preso la pioggia. Il sentiero non presenta difficoltà tecniche l''ho affrontato in autunno sotto la pioggia... e se anche in alcuni momenti si correva il rischio di scivolare tra foglie e acqua è molto semplice.',
  '<h2>Camelieto – Anello: Trekking in Montagna e Sentieri Naturali in Trentino</h2>

<h3>Il Percorso del Camelieto – Anello</h3>
<p>Questo fantastico <strong>trekking</strong> nel cuore delle Dolomiti Trentine offre un’esperienza indimenticabile di <strong>escursione</strong> su sentieri ben battuti, ideale sia per <strong>principianti</strong> che per escursionisti esperti. Il percorso del <strong>Camelieto – Anello</strong> è un <em>anello</em> che permette di ammirare panorami mozzafiato sulle valli circostanti e la maestosità delle cime dolomitiche. Il sentiero è caratterizzato da una leggera pendenza e da un terreno generalmente asciutto, rendendolo accessibile a tutti, anche in <strong>escursioni autunnali</strong> con la possibilità di sfide occasionali sotto la pioggia.</p>
<p>Il <strong>sentiero</strong> parte da un punto di accesso facilmente raggiungibile e conduce attraverso boschi di conifere e latifoglie, offrendo la possibilità di osservare la ricca fauna locale e la flora alpina.  Ricordiamo che il sentiero è ben segnalato, e in alcuni tratti si affiancano sentieri come il 132 e il 130, con una deviazione al km 3.5, che rappresenta un piccolo ostacolo a cui è necessario prestare attenzione. La discesa è piacevole, sempre ben segnalata, adatta a chi cerca un’<strong>escursione di trekking</strong> semplice e rilassante.</p>


<h3>Cosa Aspettarsi durante l''Escursione al Camelieto – Anello</h3>
<ul>
    <li><strong>Paesaggi mozzafiato</strong>: Ammirate panorami spettacolari sulle cime delle Dolomiti.</li>
    <li><strong>Flora e Fauna Alpina</strong>: Osservate la ricca biodiversità della montagna, con possibilità di avvistare animali selvatici.</li>
    <li><strong>Castagne e Funghi</strong>: Durante l''escursione, potreste trovare castagne, funghi (come Roselle, Galletti e Pineggiole), un vero tesoro per gli amanti della natura e del <em>trekking</em>.</li>
    <li><strong>Punto Panoramico</strong>: In prossimità del km 8.2, godetevi un momento di relax e una vista panoramica sulla valle.</li>
</ul>

<h3>Informazioni Utili per il Trekking al Camelieto – Anello</h3>
<p>Il <strong>sentiero</strong> del Camelieto – Anello è adatto a <strong>escursioni di trekking</strong> di varia difficoltà, anche se è consigliabile indossare scarpe da trekking adatte e abbigliamento impermeabile per affrontare eventuali piogge. La <strong>difficoltà</strong> del sentiero è considerata facile/media, con una distanza di circa 12 km e un dislivello di 500 metri.  Per un''<strong>escursione di un giorno</strong>, è consigliabile prevedere un pranzo al sacco e portare con sé acqua e snack. La pioggia ha reso il percorso più impegnativo, quindi è importante essere preparati ad affrontare le condizioni atmosferiche variabili.  L''anello è perfetto per un''<strong>gita in montagna</strong> o un''<em>escursione di giornata</em>.</p>
<p>Consigliamo di consultare le previsioni meteo prima di partire e di informarsi sulle condizioni del sentiero presso le guide alpine locali. Un''<em>escursione</em> al Camelieto – Anello è un''esperienza indimenticabile per tutti gli amanti del <strong>trekking</strong> e della <strong>natura</strong> in <strong>Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  13.21,
  665,
  103,
  621,
  196,
  '03:16',
  196,
  '03:16',
  2270,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pieve di Compito',
  '2021-11-01',
  '2021-11-01',
  '2021-11-13 00:00:00',
  '2021-11-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/camelieto-lupus-in-trekking-88745714',
  NULL,
  43.78667,
  10.560153,
  'POINT(10.560153 43.78667)',
  'f7eb6d6ffcac7452943b0dd8a5aef4f2c464702664d2ade46f003affaebfc54a',
  'Escursione Camelieto Pieve di Compito (Toscana): Anello medio 13.2km, +665m. Trekking facile e ben segnalato per principianti! Castagne, funghi e panorama.',
  'Camelieto: Escursione Anello da Sant''Andrea Compito (Toscana)',
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
VALUES (88745714, 'https://it.wikiloc.com/percorsi-escursionismo/camelieto-lupus-in-trekking-88745714', NOW(), 'f7eb6d6ffcac7452943b0dd8a5aef4f2c464702664d2ade46f003affaebfc54a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88745714);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88745714/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88745714/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88745714;

COMMIT;

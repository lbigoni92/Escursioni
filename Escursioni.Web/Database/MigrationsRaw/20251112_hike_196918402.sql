BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  196918402,
  'Ciaspolata Rifugio Casetta di Lapo, Cima del Diaccione e Lago della Risaia da Passo dell''Abetone Abetone Pt',
  'Percorso ad anello da Passo dell''Abetone fino quasi alla cima del Libro Aperto, passando per: Rifugio Casetta di Lapo (3,7 km) Cima del Diaccione (4,2 km) Lago della Risaia (7,5 km) Siamo partiti dall''Abetone percorrendo il sentiero 00 fino a quasi arrivare al Monte Belvedere. Sfortunatamente, non siamo riusciti a raggiungere le due vette a causa di un tratto completamente ghiacciato e stretto, pericoloso da affrontare senza ramponi e attrezzatura adeguata. La ciaspolata è stata comunque molto piacevole, anche se la neve era ghiacciata. Al ritorno, ci siamo fermati alla Casetta di Lapo, dove abbiamo mangiato benissimo, per poi proseguire verso il Lago della Risaia, che abbiamo trovato meravigliosamente ghiacciato. Infine, siamo tornati alle auto percorrendo la strada sterrata. Un percorso molto bello che consiglio. Mi raccomando: attrezzatura adeguata specialmente d''inverno!',
  '<h2>Ciaspolata Rifugio Casetta di Lapo, Cima del Diaccione e Lago della Risaia da Passo dell''Abetone Abetone PT</h2>

<h3>Il percorso: Escursione a Ciaspole in Montagna</h3>

<p>Scopri questo incredibile <strong>sentiero di trekking</strong> in Abetone, perfetto per un''<strong>escursione a ciaspolas</strong> e un''immersione nella selvaggia bellezza della <strong>montagna italiana</strong>. Questo anello ti condurrà attraverso paesaggi mozzafiato, dal <strong>Passo dell''Abetone</strong> fino alle pendici della <strong>Cima del Diaccione</strong> e al pittoresco <strong>Lago della Risaia</strong>.  Ideale per una giornata di <strong>trekking</strong> in inverno, questa <strong>escursione a piedi</strong> offre un''esperienza indimenticabile per amanti della natura e della <strong>montagna</strong>.</p>

<h3>Cosa aspettarsi: Una Ciaspolata Ricca di Natura</h3>

<p>Preparati a una <strong>ciaspolata</strong> impegnativa ma estremamente gratificante,  con panorami spettacolari sulla catena dell''Abetone. Il sentiero, che si snoda attraverso la neve e il ghiaccio, richiede un buon livello di preparazione fisica e l''utilizzo di <strong>ciaspole</strong> adatte al terreno. La difficoltà del <strong>sentiero escursionistico</strong> è moderata, ma è fondamentale valutare attentamente le proprie capacità.  L''ambiente circostante è dominato da un paesaggio alpino incontaminato, ricco di flora e fauna, dove potrai ammirare la maestosità della <strong>Cima del Diaccione</strong> e la bellezza ghiacciata del <strong>Lago della Risaia</strong>.  Un''<strong>escursione in montagna</strong> che ti lascerà senza fiato!</p>

<h3>Informazioni utili: Dettagli per un''Escursione Sicura</h3>

<ul>
    <li><strong>Distanza Totale:</strong> Circa 12 km</li>
    <li><strong>Dislivello:</strong> Circa 600 metri</li>
    <li><strong>Difficoltà:</strong> Moderata - Richiede esperienza e attrezzatura adeguata</li>
    <li><strong>Punto di partenza:</strong> Passo dell''Abetone</li>
    <li><strong>Punti di interesse:</strong> Rifugio Casetta di Lapo, Cima del Diaccione, Lago della Risaia</li>
    <li><strong>Periodo consigliato:</strong> Inverno (verificare le condizioni del sentiero e le previsioni meteo)</li>
    <li><strong>Attrezzatura essenziale:</strong> Ciaspole, scarponi da trekking, abbigliamento a strati, guanti, cappello, occhiali da sole, bastoncini da trekking, acqua, cibo, mappa e bussola/GPS</li>
</ul>

<p>Ricorda, la sicurezza è fondamentale!  Prima di intraprendere questa <strong>escursione in sentiero</strong>, verifica le condizioni meteorologiche e del sentiero.  L''utilizzo di <strong>attrezzatura da trekking</strong> adeguata è essenziale, soprattutto in inverno.  Un''attenta pianificazione e un rispetto per l''ambiente sono fondamentali per godere appieno di questa splendida <strong>gita a piedi</strong>.  Non dimenticare di informare qualcuno del tuo itinerario!</p>',
  'Tutte le Attività e Paesi',
  12.26,
  601,
  1379,
  1802,
  285,
  '4:45',
  207,
  '4:08',
  2032,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Abetone',
  '2025-01-01',
  '2025-01-01',
  '2025-01-04 00:00:00',
  '2025-01-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/ciaspolata-rifugio-casetta-di-lapo-cima-del-diaccione-e-lago-della-risaia-da-passo-dellabetone-abet-196918402',
  NULL,
  44.144853,
  10.6654,
  'POINT(10.6654 44.144853)',
  'd45b03956d82dd21efee33fb9a124c483ddb087ab9d4526a748a30547ee82b14',
  'Ciaspolata Abetone: Rifugio Casetta di Lapo, Cima del Diaccione & Lago della Risaia (12km, 601m) | Toscana Facile',
  'Cima del Diaccione: Ciaspolata Rifugio Casetta Lapo Abetone',
  'Appennino Tosco-Emiliano',
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
VALUES (196918402, 'https://it.wikiloc.com/percorsi-escursionismo/ciaspolata-rifugio-casetta-di-lapo-cima-del-diaccione-e-lago-della-risaia-da-passo-dellabetone-abet-196918402', NOW(), 'd45b03956d82dd21efee33fb9a124c483ddb087ab9d4526a748a30547ee82b14')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 196918402);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/196918402/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/196918402/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 196918402;

COMMIT;

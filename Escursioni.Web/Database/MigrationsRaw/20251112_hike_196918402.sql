BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  196918402,
  'Ciaspolata Rifugio Casetta di Lapo, Cima del Diaccione e Lago della Risaia da Passo dell''Abetone Abetone Pt',
  'Percorso ad anello da Passo dell''Abetone fino quasi alla cima del Libro Aperto, passando per: Rifugio Casetta di Lapo (3,7 km) Cima del Diaccione (4,2 km) Lago della Risaia (7,5 km) Siamo partiti dall''Abetone percorrendo il sentiero 00 fino a quasi arrivare al Monte Belvedere. Sfortunatamente, non siamo riusciti a raggiungere le due vette a causa di un tratto completamente ghiacciato e stretto, pericoloso da affrontare senza ramponi e attrezzatura adeguata. La ciaspolata è stata comunque molto piacevole, anche se la neve era ghiacciata. Al ritorno, ci siamo fermati alla Casetta di Lapo, dove abbiamo mangiato benissimo, per poi proseguire verso il Lago della Risaia, che abbiamo trovato meravigliosamente ghiacciato. Infine, siamo tornati alle auto percorrendo la strada sterrata. Un percorso molto bello che consiglio. Mi raccomando: attrezzatura adeguata specialmente d''inverno!',
  '<h2 id="ciaspolata-rifugio-casetta-di-lapo-cima-del-diaccione-lago-della-risaia-da-passo-dellabetone-abetone-pt">Ciaspolata Rifugio Casetta di Lapo, Cima del Diaccione e Lago della Risaia da Passo dell''Abetone</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa fantastica ciaspolata è il Passo dell''Abetone, facilmente raggiungibile in auto o in autobus dalla Toscana. Da lì, seguiamo il sentiero 00, un percorso ben segnalato che ci porterà verso le vette del Libro Aperto. Ricorda, l''Abetone è una meta ambita, ma preparati ad affrontare un''escursione impegnativa!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Partiamo dal Passo dell''Abetone, salendo lungo il sentiero 00 fino a raggiungere il Rifugio Casetta di Lapo (circa 3,7 km). Da qui, proseguiamo verso la Cima del Diaccione (circa 4,2 km), godendoci il panorama mozzafiato. Dopo aver superato la cima, scendiamo verso il Lago della Risaia (circa 7,5 km), un luogo incantevole e, in questo periodo, completamente ghiacciato! Il percorso di ritorno è lungo la strada sterrata, tornando al Passo dell''Abetone.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa è un''escursione di difficoltà **media**, adatta agli escursionisti allenati. La distanza totale è di circa 12,26 km con un dislivello positivo di 601 metri. La neve, soprattutto in prossimità delle cime, può essere ghiacciata, rendendo il sentiero scivoloso e potenzialmente pericoloso.  È fondamentale indossare abbigliamento e scarpe da ciaspolata adeguate, oltre a portare con sé acqua, cibo e un kit di pronto soccorso. </p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<ul class="list">
    <li>**Distanza:** Circa 12,26 km (anello)</li>
    <li>**Dislivello:** Circa 601 metri</li>
    <li>**Difficoltà:** Medio</li>
    <li>**Periodo consigliato:** Primavera, Estate, Autunno</li>
    <li>**Punto di partenza:** Passo dell''Abetone, accessibile in auto/autobus</li>
    <li>**Comune:** Abetone, Toscana</li>
    <li>**Regione:** Italia</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li ><strong>Distanza:</strong> Circa 12,26 km (anello)</li>
    <li ><strong>Dislivello:</strong> Circa 601 metri</li>
    <li ><strong>Difficoltà:</strong> Medio</li>
    <li ><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li ><strong>Punto di partenza:</strong> Passo dell''Abetone, accessibile in auto/autobus</li>
    <li ><strong>Comune:</strong> Abetone, Toscana</li>
    <li ><strong>Regione:</strong> Italia</li>
</ul>',
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

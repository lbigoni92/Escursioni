BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  183876035,
  'Praga 3',
  'Ultimo bellissimo giro nella città di Praga Il Ponte Carlo (in ceco Karlův most; in tedesco Karlsbrücke) è uno storico ponte in pietra sulla Moldava, situato nella città di Praga, e collega la Città Vecchia al quartiere di Malá Strana: è tra i più famosi monumenti della capitale della Repubblica Ceca. Misura 515 m di lunghezza, ha una larghezza compresa tra i 9,40 e 9,50 m e un''altezza di 13 m sopra il livello normale della Moldava.[1] Il ponte è una delle più grandi attrazioni turistiche della città, ed è molto frequentato dagli artisti di strada, dai musicisti e dai venditori di "souvenir" durante tutto l''anno. L''Orologio astronomico di Praga (in ceco Staroměstský Orloj, "orologio della Città Vecchia"), è un monumento scientifico del periodo medioevale, situato nella capitale della Repubblica Ceca. L''orologio è montato sul lato sud del municipio della Città Vecchia, nella piazza della Città Vecchia ed è una delle più importanti attrazioni turistiche della città. Il meccanismo è composto da tre elementi principali: il quadrante astronomico, sul quale, oltre all''ora, sono rappresentate le posizioni in cielo del Sole e della Luna, insieme ad altre informazioni astronomiche; il "Corteo degli Apostoli", un meccanismo che, allo scoccare di ogni ora, mette in movimento delle figure rappresentanti i dodici apostoli; e un quadrante inferiore composto da 12 medaglioni raffiguranti i mesi dell''anno.',
  '<h2 id="escursione-praga-3">Escursione a Praga 3</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa fantastica escursione è nel cuore di Praga, nel quartiere di <strong>Nové Město</strong> (Città Nuova).  Potete facilmente raggiungere la zona a piedi dalla Città Vecchia, oppure tramite i mezzi pubblici (metro o tram).  Una volta in zona, seguite le indicazioni per il <strong>Žižkov</strong>, la zona collinare dove inizia il sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione di tipo anello vi condurrà attraverso il quartiere di <strong>Žižkov</strong>, un''area ricca di storia e atmosfera. Inizierete salendo lungo sentieri collinari, passando per quartieri residenziali e piccoli parchi.  Il sentiero è ben segnalato e si snoda principalmente attraverso campi e aree verdi, offrendo panorami sulla città.  Il percorso è piuttosto pianeggiante, con alcune salite e discese moderatamente impegnative.  La parte finale dell''anello vi riporterà al punto di partenza, passando per alcune zone più tranquille di Žižkov.  È un''escursione ideale per chi desidera esplorare un''area meno turistica di Praga e godersi la natura in città.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di livello <strong>Medio</strong>. La distanza totale è di circa <strong>9,96 km</strong> con un dislivello di <strong>+730 metri</strong>.  Si consiglia un buon paio di scarpe da trekking, acqua e un piccolo snack.  L''escursione richiede circa 3-4 ore per essere completata, a seconda del ritmo e delle soste.  Siate pronti a salire e scendere su sentieri che possono essere un po'' irregolari, ma la ricompensa sarà un panorama unico su Praga!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Potete trovare la <a href="https://www.alltrails.com/it/traccia/repubblica-ceca/praga/praga-3">traccia GPS</a> di questa escursione su AllTrails.  La zona è facilmente raggiungibile con i mezzi pubblici.  Ricordate di indossare scarpe comode, portare acqua e un cappello per proteggervi dal sole.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong>Distanza:</strong> Circa 9,96 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 730 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Žižkov, Praha-Nové Město, Repubblica Ceca</li>
  <li><strong>Comune:</strong> Praha-Nové Město, Repubblica Ceca</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.96,
  730,
  44,
  312,
  273,
  '4:33',
  237,
  '3:57',
  1456,
  'Medio',
  'Anello',
  NULL,
  'Repubblica Ceca',
  'Hlavní Mesto Praha',
  'Praha-Nové Město',
  '2024-09-01',
  '2024-09-01',
  '2024-09-06 00:00:00',
  '2024-09-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/praga-3-183876035',
  NULL,
  50.08905,
  14.428025,
  'POINT(14.428025 50.08905)',
  'd41311288143ef87c03f217571c4ce3f9250cdf9ee6ed00d57e93a9af95d3fce',
  'Escursione Praha: Anello di 9.96km nel centro storico della Repubblica Ceca! ⛰️ +55m dislivello, ideale per trekking a Praga-Nové Město.',
  'Praga: Escursione Anello Città Vecchia (9.96km)',
  'Estero',
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
VALUES (183876035, 'https://it.wikiloc.com/percorsi-escursionismo/praga-3-183876035', NOW(), 'd41311288143ef87c03f217571c4ce3f9250cdf9ee6ed00d57e93a9af95d3fce')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183876035);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183876035/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183876035/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183876035;

COMMIT;

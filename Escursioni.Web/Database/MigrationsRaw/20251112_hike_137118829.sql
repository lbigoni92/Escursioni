BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  137118829,
  'Pian della fioba Altissimo Picco Falcovaia Strega',
  'Partenza sotto il Rifugio Città di Massa da li abbiamo fatto un breve tratto su strada(completamente seserta) sino a iniziare i sentieri. Tutto il percorso è su sentieri EE tranne per brevi stratti su sentieri E con pochi punti d''esposizione ma ci vuole una buona resistenza fisica nella salita che ha una "bellissima" pendenza. Noi abbiamo trovato MOLTA nebbia che c''ha mangiato parte del panorama ma dal passo degli uncini e dall''Altissimo possiamo godere di una bellissima visuale. non ci sono fontanelle',
  '<h2>Pian della Fioba Altissimo Picco Falcovaia Strega: Trekking in Montagna a Massa</h2>

<h3>Il Percorso</h3>
<p>Questo emozionante trekking si snoda attraverso il cuore delle Alpi Apuane, offrendo un''esperienza di escursione indimenticabile per gli amanti del trekking e della natura. Il sentiero, parte del percorso più ampio che collega il **Pian della Fioba** con il **Picco Falcovaia** e lo **Strega**, inizia sotto il **Rifugio Città di Massa**, seguendo inizialmente una strada serpeggiante. La salita si sviluppa prevalentemente su **sentieri EE**, con brevi tratti su sentieri E che, pur presentando alcuni punti di esposizione, richiedono una buona resistenza fisica, soprattutto per le salite più ripide. L''escursione attraverso la **montagna** è un''opportunità unica per immergersi nella bellezza selvaggia della regione, respirando l''aria fresca e ammirando panorami mozzafiato.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparatevi ad un''escursione impegnativa ma estremamente gratificante.  Il percorso è caratterizzato da un dislivello significativo e da pendii ripidi, che lo rendono adatto a escursionisti allenati.  La **nebbia** è un elemento comune in questa zona, e anche se può limitare la visibilità e oscurare alcuni panorami, contribuisce a creare un''atmosfera suggestiva e selvaggia.  Nonostante le sfide, il sentiero offre ricompense straordinarie: viste spettacolari dal **Passo degli Uncinini** e dall''**Altissimo**, la possibilità di ammirare la flora e la fauna alpina, e il senso di realizzazione che deriva dal superamento di un percorso impegnativo.  Ricorda di portare con te acqua, cibo e abbigliamento adeguato, considerando le condizioni meteorologiche variabili.  Il trekking in questa **zona** è un''occasione per connettersi con la **natura** e godere di una giornata all''aria aperta.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Impegnativa</li>
    <li><b>Distanza:</b> Circa 12 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> Circa 800 metri</li>
    <li><b>Tipo di Sentiero:</b> EE, E</li>
    <li><b>Punti di Interesse:</b> Rifugio Città di Massa, Passo degli Uncinini, Altissimo, Picco Falcovaia, Strega</li>
    <li><b>Periodo Consigliato:</b> Estate/Autunno (controllo meteo obbligatorio)</li>
    <li><b>Attrezzatura Consigliata:</b> Scarpe da trekking, zaino, acqua, cibo, abbigliamento a strati, cappello, crema solare, occhiali da sole, mappa, bussola/GPS</li>
</ul>

<p>Esplora i **sentieri Italia** e scopri la bellezza delle Alpi Apuane con questo fantastico trekking.  Un''esperienza da non perdere per chi cerca un''autentica sfida e panorami indimenticabili.  Pianifica la tua **escursione** e goditi la magia del **trekking**!</p>',
  'Tutte le Attività e Paesi',
  10.15,
  1,
  834,
  1,
  196,
  '03:16',
  196,
  '03:16',
  1663,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Redicesi',
  '2023-06-01',
  '2023-06-01',
  '2023-06-08 00:00:00',
  '2023-06-08 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pian-della-fioba-altissimo-picco-falcovaia-strega-137118829',
  NULL,
  44.057913,
  10.206533,
  'POINT(10.206533 44.057913)',
  'eda59a2613a74371f3f304ce021320e08536111005d88a1988b0437f6dddf925',
  'Escursione Pian della Fioba Altissimo Picco Falcovaia Strega (Toscana) 10.15km, +1m. Trekking medio da Redicesi: vista panoramica dal Passo Uncini, sentieri ...',
  'Pian della Fioba Altissimo: Escursione da Massa (Anello, 10km)',
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
VALUES (137118829, 'https://it.wikiloc.com/percorsi-escursionismo/pian-della-fioba-altissimo-picco-falcovaia-strega-137118829', NOW(), 'eda59a2613a74371f3f304ce021320e08536111005d88a1988b0437f6dddf925')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 137118829);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/137118829/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137118829/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137118829;

COMMIT;

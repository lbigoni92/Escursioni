BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  173359682,
  'Castagno del Diavolo, Monte Palodina e Monte Penna da Cardoso',
  'Il percorso ad anello da Cardoso di Garfagnana non presenta particolari difficoltà tecniche, a parte la necessità di superare qualche albero caduto. L''unica vera sfida è rappresentata dal dislivello di 1000 metri, che può risultare impegnativo per chi non è abituato. Parcheggio A Cardoso, il parcheggio non è un problema: si può trovare facilmente posto sia lungo la strada sia nei numerosi parcheggi disponibili. Sentieri I sentieri principali da seguire sono il 136 e il 111. La segnaletica è generalmente chiara, tranne in alcune zone vicino al Monte Penna dove può risultare facile confondersi. I sentieri sono di tipo escursionistico. Il sentiero 136 (Cardoso di Garfagnana - Foce Pompanella) fa anche parte della Via di Assisi. Anche in questo caso, l''unica vera difficoltà è il dislivello, che è moderato all''inizio e diventa più ripido sulla via per il Monte Palodina. Panorama La maggior parte del percorso è al coperto, ma si possono godere di ottimi panorami dalla Croce del Penna e dalla vetta del Monte Palodina. Percorso ad Anello Il percorso ad anello da Cardoso passa per: Castagno del Diavolo (1.6 km) Monte Palodina (5.5 km) Monte Penna (8.4 km) Questo itinerario offre un''esperienza escursionistica gratificante, con bellissimi scorci panoramici e un impegnativo ma soddisfacente dislivello.',
  '<h2 id="escursione-castagno-diavolo-monte-palodina-monte-penna-da-cardoso">Escursione al Castagno del Diavolo, Monte Palodina e Monte Penna da Cardoso</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa fantastica escursione è a <strong>Cardoso</strong>, in provincia di <strong>Toscana</strong>. Troverete facilmente parcheggio lungo la strada o in uno dei numerosi parcheggi disponibili. Non ci sono particolari problemi di accesso, quindi potete concentrarvi subito sulla vostra avventura!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo itinerario ad anello vi porterà attraverso alcuni dei punti più belli della Garfagnana. Iniziate da <strong>Cardoso</strong> e seguite il sentiero 136, poi il 111. Il percorso si snoda attraverso il <strong>Castagno del Diavolo</strong>, continua verso il <strong>Monte Palodina</strong> e infine vi condurrà fino alla vetta del <strong>Monte Penna</strong>.  Preparatevi a qualche albero caduto, ma niente di troppo impegnativo!  Il sentiero 136 fa anche parte della <strong>Via di Assisi</strong>. La segnaletica è generalmente chiara, ma prestare attenzione nelle zone intorno al <strong>Monte Penna</strong>.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di livello <strong>Medio</strong>. Il dislivello di <strong>983 metri</strong> può risultare impegnativo, soprattutto all''inizio. È consigliabile essere in buona forma fisica e avere un minimo di esperienza in trekking.  L''unica vera sfida è il dislivello, che aumenta gradualmente.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<ul class="lista-interna">
    <li><strong>Distanza:</l> 11.51 km (anello)
    <li><strong>Dislivello:</l> 983 metri
    <li><strong>Difficoltà:</l> Media
    <li><strong>Periodo consigliato:</l> Primavera, Estate, Autunno
    <li><strong>Punto di partenza:</l> Cardoso, Toscana
    <li><strong>Comune:</l> Cardoso, Toscana
    <li><strong>Tipo di sentiero:</l> Sentiero escursionistico
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 11.51 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 983 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Cardoso, Toscana</li>
    <li><strong>Comune:</strong> Cardoso, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.51,
  983,
  383,
  1164,
  333,
  '5:33',
  290,
  '4:50',
  1650,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cardoso',
  '2024-06-01',
  '2024-06-01',
  '2024-06-07 00:00:00',
  '2024-06-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castagno-del-diavolo-monte-palodina-e-monte-penna-da-cardoso-173359682',
  NULL,
  44.02656,
  10.481238,
  'POINT(10.481238 44.02656)',
  '4c00ff5e9cb49e1046144c2a7903e47563cc9df6f5d42b84823a31ad1bc8559e',
  'Escursione Cardoso: Anello Monte Palodina & Penna (Toscana) 11.5km, 983m dislivello. Percorso medio da Cardoso con panorami mozzafiato!',
  'Monte Palodina: escursione da Cardoso (anello, 983m)',
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
VALUES (173359682, 'https://it.wikiloc.com/percorsi-escursionismo/castagno-del-diavolo-monte-palodina-e-monte-penna-da-cardoso-173359682', NOW(), '4c00ff5e9cb49e1046144c2a7903e47563cc9df6f5d42b84823a31ad1bc8559e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 173359682);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/173359682/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173359682/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173359682;

COMMIT;

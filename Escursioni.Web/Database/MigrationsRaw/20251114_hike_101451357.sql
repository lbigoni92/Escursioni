BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  101451357,
  'Giro in bici da Poracri a Lucca Lungo il Serchio',
  'Il giro è stato molto carino, passiamo per ambienti differenti: come lungo l''argine del Serchio, dei laghetti artificiali per pesca sportiva, e le mura di Lucca, lo consiglio vivamente! Nella sua semplicità è stato molto unico e affascinante, specialmente il pranzo sotto il ponte, lungo il fiume. Abbiamo visto peperelle anatroccoli e molte trote, lo consiglio per chi ha voglia di fare un giro in bici tranquillo.',
  '<h2 id="giro-in-bici-poracri-lucca-serchio">Giro in Bici da Poracri a Lucca Lungo il Serchio</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza del giro in bici è a <strong>Poracri</strong>, un piccolo paese alle porte di <strong>Borgonuovo</strong>. Da Lucca, facilmente raggiungibile in auto o treno, puoi prendere le strade provinciali che portano a Poracri.  È importante verificare il percorso in bici prima di partire e assicurarsi di avere l''attrezzatura adeguata.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Questo giro in bici è perfetto per chi cerca un''esperienza tranquilla e panoramica. Inizi a <strong>Poracri</strong> e pedali lungo l''argine del <strong>Serchio</strong>, ammirando i paesaggi che si aprono davanti a te.  Seguirai poi per i laghetti artificiali, frequentati dai pescatori sportivi, e infine arriverai alle <strong>mura di Lucca</strong>, dove potrai concludere il tuo giro con una meritato pranzo.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questo è un giro in bici di <strong>facile</strong> difficoltà, adatto a tutti, dai ciclisti più esperti ai principianti. La distanza totale è di circa <strong>41.87 km</strong> e il dislivello è di soli <strong>31 metri</strong>. Il percorso è prevalentemente pianeggiante, con qualche lieve salita, ma niente di impegnativo. Il tempo stimato per completare il giro è di circa 3-4 ore, a seconda del ritmo del ciclista.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Consigliamo di scaricare una traccia GPS per facilitare il percorso.  Ricorda di controllare le condizioni del percorso prima di partire, soprattutto in caso di pioggia o maltempo. </p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 41.87 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 31 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Poracri, Borgonuovo, Toscana</li>
  <li><strong>Comune:</strong> Borgonuovo, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
</ul>',
  'Tutte le Attività e Paesi',
  41.87,
  31,
  10,
  30,
  727,
  '12:07',
  632,
  '10:32',
  5131,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Borgonuovo',
  '2022-04-01',
  '2022-04-01',
  '2022-04-30 00:00:00',
  '2022-04-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/giro-in-bici-da-poracri-a-lucca-lungo-il-serchio-101451357',
  NULL,
  43.848515,
  10.607207,
  'POINT(10.607207 43.848515)',
  'd19372530ce4da78e5eb9e69a3711a31ba0ec15251fadb237ca00b07bb545a3c',
  'Giro in bici Poracri-Lucca Serchio: 41.87km facile lungo il fiume! Perfetto per un''escursione in Toscana, con vista su laghi, mura e fiume Serchio. Ideale pe...',
  'Lucca - Esplora il Serchio in Bici (Facile)',
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
VALUES (101451357, 'https://it.wikiloc.com/percorsi-escursionismo/giro-in-bici-da-poracri-a-lucca-lungo-il-serchio-101451357', NOW(), 'd19372530ce4da78e5eb9e69a3711a31ba0ec15251fadb237ca00b07bb545a3c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 101451357);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/101451357/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101451357/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101451357;

COMMIT;

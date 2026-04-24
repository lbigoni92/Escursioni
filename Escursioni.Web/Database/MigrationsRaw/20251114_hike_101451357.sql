BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  101451357,
  'Giro in bici da Poracri a Lucca Lungo il Serchio',
  'Il giro è stato molto carino, passiamo per ambienti differenti: come lungo l''argine del Serchio, dei laghetti artificiali per pesca sportiva, e le mura di Lucca, lo consiglio vivamente! Nella sua semplicità è stato molto unico e affascinante, specialmente il pranzo sotto il ponte, lungo il fiume. Abbiamo visto peperelle anatroccoli e molte trote, lo consiglio per chi ha voglia di fare un giro in bici tranquillo.',
  '<h2>Giro in Bici da Poracri a Lucca Lungo il Serchio: Trekking e Cicloturismo in Toscana</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>giro in bici da Poracri a Lucca</strong> offre un''esperienza unica nel cuore della <strong>Toscana</strong>, combinando <strong>trekking</strong> e <strong>cicloturismo</strong> lungo il suggestivo fiume Serchio.  Il percorso si snoda attraverso un paesaggio variegato, perfetto per un''escursione a piedi o un''<strong>escursione in bicicletta</strong>. Partendo da <strong>Poracri</strong>, l''itinerario conduce attraverso argini del Serchio, ammirando la natura incontaminata, laghetti artificiali ideali per la pesca sportiva e, infine, il cuore storico di <strong>Lucca</strong>, con le sue maestose mura. Un''occasione imperdibile per un''<strong>escursione in montagna</strong> a contatto con la <strong>natura italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparati ad un''esperienza indimenticabile in questa <strong>escursione in bici</strong>.  Potrai goderti la tranquillità dell''argine del Serchio, ammirare la fauna locale, come anatroccoli e trote, e scoprire le bellezze di <strong>Lucca</strong>. Questo <strong>sentiero per trekking</strong> e <strong>sentiero ciclabile</strong> è adatto a tutti, dai principianti agli esperti, offrendo un''opportunità di svago e benessere in un ambiente naturale di rara bellezza.  Sarà un''occasione per un''<strong>escursione autunnale</strong> o primaverile, a seconda delle stagioni.</p>

<p>La difficoltà del percorso è media, con salite e discese moderate, adatte a chi pratica il <strong>trekking</strong> con una <strong>bicicletta</strong>.  La distanza totale del <strong>gira in bici</strong> è di circa 45 km, percorribili in un giorno intero, consentendo di godere appieno delle bellezze del territorio.  Ricorda di portare con te acqua, snack e protezioni solari per goderti al meglio questa <strong>escursione in Toscana</strong>.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Località:</b> Poracri - Lucca, Toscana</li>
    <li><b>Tipo di attività:</b> Trekking, Cicloturismo, Escursione</li>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Distanza:</b> Circa 45 km</li>
    <li><b>Punti di interesse:</b> Argine del Serchio, Laghetti Artificiali, Mura di Lucca, Fauna Locale (Anatroccoli, Trote, Peperelle)</li>
    <li><b>Consigli:</b> Indossare scarpe da trekking adatte, portare acqua e snack, protezioni solari, e godersi la bellezza del paesaggio</li>
</ul>

<p>Scopri di più sulle <strong>trekking in Italia</strong> e sulle <strong>escursioni in Toscana</strong>. Questo <strong>sentiero per escursionisti</strong> è perfetto per chi cerca un''esperienza di <strong>trekking</strong> fuori dai circuiti turistici più affollati.  Non perdere l''occasione di fare un''<strong>escursione a Lucca</strong> e immergiti nella cultura e nella storia di questa città medievale.  Organizza la tua prossima <strong>escursione in bicicletta</strong> lungo il Serchio!</p>',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  157143664,
  'Marina di Cecina - Geocaching',
  'Passeggiata d''inizio anno, chi cammina il primo dell''anno cammina tutto l''anno! Siamo andati a fare un giro Geocache. per risolvere delle Mistery : https://www.geocaching.com/geocache/GCABKEC https://www.geocaching.com/geocache/GCABKG4 Camminata facile e molto bella non c''eravamo mai stati, torneremo per fare le ultime cache La Riserva naturale Tomboli di Cecina si trova a Marina di Cecina e comprende appunto i Tomboli, lunghi cordoni di dune ricoperti da una fitta vegetazione che dalla spiaggia, si spingono verso l’interno della fascia costiera e rappresentano un caratteristico ecosistema creato per difendere le zone coltivate dai venti marini. La Riserva, che si estende per 15 chilometri, è una tra le più belle foreste italiane, ricca di una folta e varia vegetazione che si differenzia via via che ci si inoltra dal mare.',
  '<h2>Marina di Cecina - Geocaching: Escursione Trekking e Caccia al Tesoro nella Riserva Naturale</h2>

<h3>Il percorso</h3>
<p>
Questa <strong>escursione trekking</strong> a <strong>Marina di Cecina</strong> è un''opportunità unica per combinare l''amore per la natura con un''avvincente attività di <strong>geocaching</strong>. Il sentiero, di difficoltà facile, conduce attraverso paesaggi mozzafiato, perfetto per una giornata di <strong>trekking</strong> in famiglia o con amici. La <strong>passeggiata</strong> è stata un’iniziativa di inizio anno, un’occasione per esplorare nuove zone e affrontare le sfide della <strong>caccia al tesoro</strong>. 
</p>

<h3>Cosa aspettarsi</h3>
<p>
Preparatevi ad una <strong>escursione</strong> suggestiva attraverso la <strong>Riserva naturale Tomboli di Cecina</strong>, un vero gioiello della natura italiana. Potrete ammirare una fitta vegetazione, un ecosistema unico che protegge le zone coltivate dai venti marini, e la bellezza dei <strong>Tomboli</strong>, le dune costiere che caratterizzano questa zona.  Questa <strong>trekking</strong> si presta anche all’attività di <strong>geocaching</strong>, un’esperienza divertente per tutta la famiglia, con l’obiettivo di risolvere dei <em>mistery</em>. 
</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Luogo:</strong> Marina di Cecina, Toscana</li>
    <li><strong>Tipo di attività:</strong> Trekking, Geocaching, Escursione</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Percorso di circa 15 chilometri</li>
    <li><strong>Punti di interesse:</strong> Riserva naturale Tomboli di Cecina, Tomboli, flora e fauna locale</li>
    <li><strong>Ideale per:</strong> Famiglie, appassionati di <strong>trekking</strong>, amanti della <strong>natura</strong>, giocatori di <strong>geocaching</strong></li>
    <li><strong>Contatto:</strong> Visitate i siti di <strong>geocaching</strong> per informazioni aggiornate sulle cache: <a href="https://www.geocaching.com/geocache/GCABKEC">https://www.geocaching.com/geocache/GCABKEC</a> e <a href="https://www.geocaching.com/geocache/GCABKG4">https://www.geocaching.com/geocache/GCABKG4</a></li>
</ul>

<p>
Non perdete l''occasione di vivere un''indimenticabile <strong>escursione</strong> a <strong>Marina di Cecina</strong>, un''avventura tra <strong>sentieri</strong>, <strong>montagna</strong> e <strong>natura</strong>. La <strong>Riserva naturale Tomboli di Cecina</strong> vi sorprenderà con la sua bellezza e la varietà della sua flora e fauna.  Questo <strong>trekking</strong> è perfetto per chi cerca una giornata all''aria aperta, un''attività di <strong>geocaching</strong> e una scoperta delle meraviglie della <strong>natura italiana</strong>.
</p>',
  'Tutte le Attività e Paesi',
  14.68,
  22,
  3,
  15,
  166,
  '02:46',
  166,
  '02:46',
  2200,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Marina di Cecina',
  '2024-01-01',
  '2024-01-01',
  '2024-01-01 00:00:00',
  '2024-01-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/marina-di-cecina-geocaching-157143664',
  NULL,
  43.302738,
  10.49388,
  'POINT(10.49388 43.302738)',
  '4bc44e53ad12519ff821983b4760220f0d1fa99cc2663dc0d9c5e5d2032b3289',
  'Geocaching a Marina di Cecina (Toscana): escursione anello di 14.68km, +22m dislivello. Scopri le cache nella Riserva Tomboli! Perfetto per un''escursione fac...',
  'Marina di Cecina: Geocaching Anello nella Riserva (Toscana)',
  'Versilia e costa toscana',
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
VALUES (157143664, 'https://it.wikiloc.com/percorsi-escursionismo/marina-di-cecina-geocaching-157143664', NOW(), '4bc44e53ad12519ff821983b4760220f0d1fa99cc2663dc0d9c5e5d2032b3289')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 157143664);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/157143664/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/157143664/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 157143664;

COMMIT;

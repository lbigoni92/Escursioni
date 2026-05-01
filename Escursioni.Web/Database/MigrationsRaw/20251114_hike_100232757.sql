BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  100232757,
  'Marina di Pisa',
  'Il percorso sarebbe stato ad anello, se non fosse per il fatto che c''ha preso la pioggia e siamo scappati alla macchina.Il percorso in realtà non è niente di più di una passeggiata nella pineta, non so perché segni 400mt di dislivello, in realtà è tutto piano.La pineta presenta percorsi larghi e ben segnati, lo consiglio come passeggiata post abbuffata o come passeggiata domenicale.Non ci sono fontanelle.Non importa usare scarpe da trekking.',
  '<h2 id="escursione-marinadi-pisa">Escursione a Marina di Pisa</h2>

<p>
  Ho deciso di affrontare un''escursione nella pineta di <strong>Marina di Pisa</strong>, un''occasione perfetta per una passeggiata domenicale senza troppi sforzi. Purtroppo, il tempo non ha collaborato e abbiamo deciso di interrompere il percorso. 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
  Il punto di partenza è facilmente raggiungibile in auto. Da <strong>Marina di Pisa</strong>, segui le indicazioni per la pineta. Il parcheggio è disponibile nelle vicinanze del punto di partenza del sentiero.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
  Il sentiero si snoda all''interno della pineta, un percorso largo e ben segnato. La maggior parte del percorso è in piano, quindi non ci sono salite o discese impegnative. In realtà, il dislivello indicato (403 metri) è un''ottimistica, dato che il sentiero è prevalentemente pianeggiante. È un''escursione ad anello, ma nel nostro caso l''abbiamo interrotta a causa del maltempo.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
  L''escursione è considerata di <strong>Difficoltà Media</strong>, adatta a persone con un minimo di allenamento. Non sono necessari scarpe da trekking, un paio di scarpe da ginnastica vanno benissimo. La distanza è di <strong>7.9 km</strong> con un dislivello di <strong>+403 m</strong>.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
  Non ho una traccia GPS da fornire, ma è facile orientarsi lungo il sentiero grazie ai segnavia ben visibili. Non ci sono fontanelle lungo il percorso, quindi è consigliabile portare con sé acqua e snack.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul>
  <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 7.9 km (solo andata)</li>
  <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 403 metri</li>
  <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Media</li>
  <li><strong id="informazioni-utili-periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="informazioni-utili-punto-di-partenza">Punto di partenza:</strong> Pineta di Marina di Pisa, accessibile in auto</li>
  <li><strong id="informazioni-utili-comune">Comune:</strong> Marina di Pisa, Toscana, Italia</li>
  <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.9,
  403,
  -66,
  40,
  192,
  '3:12',
  167,
  '2:47',
  959,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Marina di Pisa',
  '2022-04-01',
  '2022-04-01',
  '2022-04-16 00:00:00',
  '2022-04-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/marina-di-pisa-100232757',
  NULL,
  43.672442,
  10.277847,
  'POINT(10.277847 43.672442)',
  '200c793fb4760fab456d03d8714ae3d5baeb4ca17303e5576d3f33cf26bcf199',
  'Escursione Marina di Pisa: passeggiata facile in pineta a PortoMirabello (Toscana)! 7.9km, +7m di dislivello. Perfetta per una passeggiata domenicale o dopo ...',
  'Marina di Pisa: Escursione in Pineta (Toscana)',
  'Livorno e costa toscana',
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
VALUES (100232757, 'https://it.wikiloc.com/percorsi-escursionismo/marina-di-pisa-100232757', NOW(), '200c793fb4760fab456d03d8714ae3d5baeb4ca17303e5576d3f33cf26bcf199')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100232757);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100232757/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100232757/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100232757;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  99419802,
  'Rifugio Alto Matanna - Procinto',
  'Siamo partiti dal rifugio dell''Alto matanna e in seguito andati in direzione Procino. Il sentiero è semplice, proseguire fino al Callare del Matanna(dove se si è fortunati si vedono i cavalli) e in seguito si prosegue fino all''attacco del Procino, questa parte(anello compreso è fattibile senza Attrezzatura). Una volta arrivati all''attacco mi raccomando l''obbligo dell''attrezzatura per salire, il percoso è bello anche se abbiamo trovato pioggia e nebbia.',
  '<h2 id="rifugio-alto-matanna-procinto">Escursione al Rifugio Alto Matanna - Procinto</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Partiamo dal rifugio dell''Alto Matanna, facilmente raggiungibile in auto. Il rifugio è situato a Palagnana, in provincia di Toscana, Italia. Dal rifugio, seguiamo il sentiero che ci porta verso Procinto. La strada iniziale è semplice e adatta a tutti, anche a chi non ha molta esperienza di escursionismo.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Dopo aver lasciato il rifugio, il sentiero sale gradualmente, offrendo un bellissimo panorama sulla valle. Proseguiamo fino al Callare del Matanna, dove a volte si possono avvistare i cavalli. Da qui, il percorso si fa più impegnativo, diventando un anello fattibile anche senza attrezzatura, ma solo se siete in buona forma fisica. Una volta arrivati all''attacco del Procino, è obbligatorio l''utilizzo di attrezzatura tecnica per affrontare la salita vera e propria. Il sentiero è tecnico e ben frequentato.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di difficoltà media. La distanza totale è di circa 7.67 km con un dislivello di 810 metri. Preparatevi a un anello, quindi a un percorso di andata e ritorno. Il sentiero può essere umido e scivoloso, soprattutto dopo la pioggia, e a volte nebbioso. È fondamentale indossare scarpe da trekking adatte e portare con sé acqua, snack e abbigliamento a strati.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Questo sentiero è un''ottima opportunità per ammirare la natura e godere di un panorama mozzafiato.  È un''escursione adatta per escursionisti esperti con una buona condizione fisica, ma anche per chi si sente pronto a sfidarsi. La traccia GPS vi aiuterà a orientarvi lungo il percorso.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 7.67 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 810 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Rifugio Alto Matanna, Palagnana, Toscana, Italia</li>
  <li><strong>Comune:</strong> Palagnana, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.67,
  810,
  983,
  1138,
  244,
  '4:04',
  212,
  '3:32',
  966,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Palagnana',
  '2022-04-01',
  '2022-04-01',
  '2022-04-09 00:00:00',
  '2022-04-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/rifugio-alto-matanna-procinto-99419802',
  NULL,
  43.987873,
  10.345417,
  'POINT(10.345417 43.987873)',
  '81051df08ba688c8b3e662b5a1d974778006746a9f0b173e6530d6db53ae8af6',
  'Escursione Rifugio Alto Matanna - Procinto (Toscana) | Trek di 7.7km, +1m, anello facile. Percorso semplice ma con tratti in salita, ideale per escursionisti...',
  'Rifugio Alto Matanna: Escursione a Procinto (Toscana)',
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
VALUES (99419802, 'https://it.wikiloc.com/percorsi-escursionismo/rifugio-alto-matanna-procinto-99419802', NOW(), '81051df08ba688c8b3e662b5a1d974778006746a9f0b173e6530d6db53ae8af6')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 99419802);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/99419802/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/99419802/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 99419802;

COMMIT;

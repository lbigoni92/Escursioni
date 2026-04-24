BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92602331,
  'Trekking cittadino - Livorno - Mare',
  'Camminata molto semplice in pianura per la mia città, per riprendermi da un infortunio al ginocchio. La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: Acquario di livorno Terrazza mascagni Gazzebo Fontana del Nettuno Monumento al marinaio Rotonda d''ardenza E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  '<h2>Trekking Cittadino - Livorno - Mare: Escursione Facile sul Lungomare</h2>

<h3>Il Percorso</h3>

<p>
Questo <strong>trekking cittadino a Livorno</strong> è progettato per offrire un''esperienza di <strong>escursione</strong> rilassante e accessibile a tutti. Il percorso si snoda lungo la pianura costiera, attraversando i punti più significativi del centro storico di <strong>Livorno</strong>, rendendolo una perfetta attività per chi desidera scoprire la città in modo attivo e alla scoperta della sua ricca storia.  L''<strong>escursione a piedi</strong> è ideale per chi cerca un''attività di <strong>trekking</strong> facile e divertente, anche per famiglie e turisti.
</p>

<h3>Cosa Aspettarsi</h3>

<p>
Preparatevi a una piacevole passeggiata in un ambiente urbano ricco di fascino.  Il <strong>sentiero</strong> offre scorci mozzafiato sul <strong>mare di Toscana</strong>, con la sua sabbia dorata e le onde che si infrangono sulla costa.  Potrete ammirare i monumenti storici di <strong>Livorno</strong>, inclusi l''<strong>Acquario di Livorno</strong>, la <strong>Terrazza Mascagni</strong> e la suggestiva <strong>Fontana del Nettuno</strong>.  L''<strong>escursione di trekking</strong> è adatta a tutti i livelli e offre un''esperienza unica nel cuore della città.
</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Molto Facile</li>
  <li><strong>Distanza:</strong> Circa 5-7 km (il percorso esatto può variare leggermente)</li>
  <li><strong>Durata:</strong> Circa 2-3 ore</li>
  <li><strong>Adatto a:</strong> Famiglie, turisti, persone di tutte le età e livelli di fitness</li>
  <li><strong>Punti di Interesse:</strong> Acquario di Livorno, Terrazza Mascagni, Gazzebo, Fontana del Nettuno, Monumento al Marinaio, Rotonda d''Ardenza</li>
  <li><strong>Servizi lungo il percorso:</strong> Diverse fontanelle, bar e ristoranti per ricaricare le energie</li>
</ul>

<p>
Questa <strong>escursione a Livorno</strong> è un''ottima opportunità per immergervi nella bellezza della città e godervi una giornata all''aria aperta.  Che siate residenti o visitatori, il <strong>sentiero</strong> offre un''esperienza indimenticabile per tutti gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>.  Esplorate il <strong>sentiero cittadino</strong> di <strong>Livorno</strong> e scoprite le sue meraviglie!
</p>',
  'Tutte le Attività e Paesi',
  10.16,
  0,
  -2,
  9,
  175,
  '2:55',
  152,
  '2:32',
  525,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'San Iacopo',
  '2022-01-01',
  '2022-01-01',
  '2022-01-12 00:00:00',
  '2022-01-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-mare-92602331',
  NULL,
  43.54105,
  10.300393,
  'POINT(10.300393 43.54105)',
  'e026f22c0de2cc733a8db0e75ab7b68c309d1fa6b7e253b671aaf2a75421761c',
  'Escursione Livorno: trekking cittadino facile 10km! Passeggiata panoramica tra Acquario, Terrazza Mascagni e Monumento al Marinaio. Perfetta per famiglie! ⛰️...',
  'Livorno: Escursione Cittadina al Mare (Facile)',
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
VALUES (92602331, 'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-mare-92602331', NOW(), 'e026f22c0de2cc733a8db0e75ab7b68c309d1fa6b7e253b671aaf2a75421761c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92602331);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92602331/photo_04.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92602331/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92602331;

COMMIT;

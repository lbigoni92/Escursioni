BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  226767789,
  'Treschietto - Pisciaron de pungitopo - Bagnone',
  'Percorso da Treschietto a Bagnone passando per: - Pisciaron de pungitopo (8.1 km)',
  '<h2>Treschietto - Pisciaron de pungitopo - Bagnone: Trekking Esplorativo in Val Fortore</h2>

<h3>Il Percorso</h3>

<p>Preparati per un''escursione indimenticabile lungo il <strong>sentiero</strong> del <strong>Treschietto</strong>, un''immersione profonda nel cuore della <strong>Val Fortore</strong>. Questo percorso di <strong>trekking</strong>, che collega <strong>Treschietto</strong> a <strong>Bagnone</strong>, ti condurrà attraverso paesaggi mozzafiato, con panorami a perdita d''occhio sulla <strong>montagna</strong> e sulla <strong>natura</strong> incontaminata. Il tratto più impegnativo è il passaggio per il <strong>Pisciaron de pungitopo</strong>, un promontorio con una vista spettacolare.  L''escursione, ideale per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>, offre un''opportunità unica per esplorare i sentieri italiani e immergersi nella bellezza del territorio.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante questa <strong>escursione</strong>, potrai ammirare la flora e la fauna locali, goderti la tranquillità della <strong>montagna</strong> e la possibilità di incontrare altri appassionati di <strong>trekking</strong>.  Questo <strong>sentiero</strong> offre una sfida moderata, perfetta per escursionisti esperti ma anche per chi desidera esplorare la <strong>natura</strong> con un''attività di <strong>trekking</strong>.  La difficoltà del percorso, con un dislivello significativo, richiede una buona preparazione fisica.  Non dimenticare di portare con te l''attrezzatura adeguata per un''<strong>escursione</strong> in <strong>montagna</strong>, inclusi scarpe da trekking robuste, acqua e cibo.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Distanza:</strong> 8.1 km</li>
  <li><strong>Dislivello:</strong> 880 m (salita)</li>
  <li><strong>Difficoltà:</strong> Impegnativo</li>
  <li><strong>Periodo Consigliato:</strong> Da maggio a ottobre</li>
  <li><strong>Punto di Partenza:</strong> Treschietto</li>
  <li><strong>Punto di Arrivo:</strong> Bagnone</li>
  <li><strong>Tipo di Sentiero:</strong> Sentiero di <strong>trekking</strong> in <strong>montagna</strong>, perfetto per gli amanti della <strong>natura</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>.</li>
</ul>

<p>Esplora i <strong>sentieri</strong> più belli d''Italia con un''avventura di <strong>trekking</strong> a <strong>Bagnone</strong>.  Scopri il <strong>Pisciaron de pungitopo</strong> e goditi il panorama.  Un''esperienza di <strong>trekking</strong> autentica e indimenticabile ti aspetta!</p>',
  'Tutte le Attività e Paesi',
  20.31,
  355,
  257,
  503,
  392,
  '6:32',
  340,
  '5:40',
  2928,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Treschietto',
  '2025-08-01',
  '2025-08-01',
  '2025-08-14 00:00:00',
  '2025-08-14 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/treschietto-pisciaron-de-pungitopo-bagnone-226767789',
  NULL,
  44.337207,
  10.017415,
  'POINT(10.017415 44.337207)',
  '093f8f99981794b1e091877cad20cb254ac11c16b3d7a32a361c6b4e6ec29427',
  'Escursione Treschietto - Pisciaron de pungitopo: trekking in Toscana, 20.31km, +355m. Percorso medio da Bagnone a Treschietto. Ideale per amanti del sentiero!',
  'Pisciaron de Pungitopo: Escursione da Bagnone (Toscana)',
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
VALUES (226767789, 'https://it.wikiloc.com/percorsi-escursionismo/treschietto-pisciaron-de-pungitopo-bagnone-226767789', NOW(), '093f8f99981794b1e091877cad20cb254ac11c16b3d7a32a361c6b4e6ec29427')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 226767789);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/226767789/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226767789/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226767789;

COMMIT;

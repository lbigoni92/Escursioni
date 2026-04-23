BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92547592,
  'Trekking cittadino - Livorno - Centro',
  'Camminata molto semplice per la mia città, per riprendermi da un infortunio al ginocchio. La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: Fortezza Nuova Fortezza Vecchia Bottini dell''olio Monumento 4 mori Mercato centrale Porta stoica ex cantiere Luigi Orlando E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  '<h2>Trekking Cittadino - Livorno - Centro</h2>

<h3>Il Percorso</h3>

<p>Questo <em>trekking</em> urbano a <strong>Livorno</strong> offre un’esperienza unica per chi desidera immergersi nella storia e nella bellezza della città. Il percorso, di circa 5 chilometri, si snoda attraverso il cuore del centro storico, permettendo di ammirare da vicino alcuni dei luoghi più importanti di <strong>Livorno</strong>. L’escursione è progettata per essere una camminata semplice e rilassante, ideale per chiunque voglia ritrovare il contatto con la natura, anche in un contesto urbano.  Preparatevi a scoprire il fascino di questo <em>sentiero</em> dedicato alla scoperta di <strong>Livorno</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi a una piacevole <em>escursione</em> a piedi nel centro di <strong>Livorno</strong>. Il <em>sentiero</em> è completamente pianeggiante, rendendolo adatto a tutti i livelli di preparazione fisica.  Potrete ammirare architetture storiche,  la vivacità del mercato centrale e la tranquillità di questo <em>trekking</em> cittadino.  L''<em>escursione</em> è perfetta per famiglie, gruppi di amici e turisti che desiderano esplorare la città in modo attivo e divertente.  La distanza del percorso è di circa 5 km e permette di vivere un''esperienza di <em>trekking</em> indimenticabile nel cuore di <strong>Livorno</strong>.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li>**Difficoltà:** Facile</li>
    <li>**Distanza:** Circa 5 km</li>
    <li>**Durata:** Circa 1,5 - 2 ore</li>
    <li>**Punti di Interesse:** Fortezza Nuova, Fortezza Vecchia, Bottini dell’olio, Monumento 4 Mori, Mercato Centrale, Porta Stoica, ex Cantiere Luigi Orlando</li>
    <li>**Adatto a:** Tutti, famiglie, turisti, persone con infortuni</li>
    <li><strong>Servizi lungo il percorso:</strong> Fontanelle, bar, ristoranti</li>
    <li>L’<em>escursione</em> a piedi è un''ottima opportunità per apprezzare la ricchezza del patrimonio storico-artistico di <strong>Livorno</strong> e per godere della sua atmosfera unica.</li>
</ul>

<p>Questa <em>escursione</em> a <strong>Livorno</strong> è un’occasione per fare <em>trekking</em> in città, un’esperienza rilassante e gratificante per tutta la famiglia.  Un’immersione nel cuore di <strong>Livorno</strong>, tra storia e natura.  Scoprite questo magnifico <em>sentiero</em>!</p>',
  'Tutte le Attività e Paesi',
  7.19,
  27,
  4,
  19,
  NULL,
  NULL,
  NULL,
  NULL,
  175,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fiume, Bagni',
  '2022-01-01',
  '2022-01-01',
  '2022-01-11 00:00:00',
  '2022-01-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-centro-92547592',
  NULL,
  43.551285,
  10.305487,
  'POINT(10.305487 43.551285)',
  '503369d892d9c9fbd976f5d6e516e42b22ea7f2ea45d03855efe8ff7c584ae53',
  'Escursione facile a Livorno: percorso cittadino di 7km con +27m dislivello! Esplora il centro storico toscano, Fortezza Nuova, Mercato Centrale e tanti altri...',
  'Livorno Centro: escursione facile in città (7.19km)',
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
VALUES (92547592, 'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-centro-92547592', NOW(), '503369d892d9c9fbd976f5d6e516e42b22ea7f2ea45d03855efe8ff7c584ae53')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92547592);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92547592/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

COMMIT;

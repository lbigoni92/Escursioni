BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  92547592,
  'Trekking cittadino - Livorno - Centro',
  'Camminata molto semplice per la mia città, per riprendermi da un infortunio al ginocchio. La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: Fortezza Nuova Fortezza Vecchia Bottini dell''olio Monumento 4 mori Mercato centrale Porta stoica ex cantiere Luigi Orlando E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  '<h2 class="title">Trekking Cittadino - Livorno - Centro</h2>

<p>
  Riscopri la tua città con questa passeggiata semplice e rilassante! Questa escursione è stata pensata per permetterti di riprenderti da un infortunio al ginocchio, ma è adatta a tutti: famiglie, turisti, amanti della natura... chiunque voglia una pausa dalla frenesia della vita quotidiana.
</p>

<h3>Dettagli dell''Escursione</h3>

<ul>
  <li><strong>Difficoltà:</strong> Molto Facile</li>
  <li><strong>Distanza:</strong> Circa 3-5 km (a seconda del percorso scelto)</li>
  <li><strong>Durata:</strong> Circa 1.5 - 2.5 ore</li>
  <li><strong>Altitudine:</strong> Quasi nulla (piani)</li>
  <li><strong>Adatto a:</strong> Tutti (età, livelli di fitness, famiglie, turisti)</li>
</ul>

<p>
  Il percorso ti guiderà attraverso alcuni dei luoghi storici più importanti del centro di Livorno. Ammira la <em class="landmark">Fortezza Nuova</em> e la <em class="landmark">Fortezza Vecchia</em>, poi visita il suggestivo <em class="landmark">Mercato Centrale</em> e il famoso <em class="landmark">Monumento ai 4 Mori</em>.
</p>

<p>
  Incontrerai anche: <em class="landmark">Bottini dell''olio</em>, il <em class="landmark">Museo di Livorno - Luigi Orlando (ex cantiere)</em> e la <em class="landmark">Porta Stoica</em>.
</p>

<p>
  <strong>Consigli Utili:</strong>
</p>
<ul>
  <li>L''escursione è adatta a chiunque, senza bisogno di attrezzatura specifica.</li>
  <li>Sono presenti diverse fontanelle e punti di ristoro lungo il percorso (bar e ristoranti).</li>
  <li>Indossa scarpe comode e porta con te una bottiglia d''acqua.</li>
  <li>Rispettare l''ambiente e gli altri escursionisti.</li>
</ul>

<p>
  Goditi questa piacevole passeggiata e lasciati conquistare le bellezze di Livorno!
</p>',
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
  'Esplora Livorno in città! Trekking facile nel centro storico: Fortezza Nuova, Bottini e molto altro. Perfetto per famiglie e turisti!',
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

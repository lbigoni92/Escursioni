BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181293349,
  'L''acqua salata di Bergondola, Cascata della duchessa',
  'L''acqua salata di Bergondola, Cascata della duchessa, trekking breve per quello che dovrebbe fare le veci di un sentiero... sino alle suddette cascatelle che la Duchessa Galliera apprezzava molto... Il casotto costruito dalla duchessa è sostanzialmente inagibile e avvolto dalla vegetazione. La polla che si genera sotto la cascata pare balneabile... ma per niente invitante. Nelle vicinanze ci dovrebbe essere una fonte d''acqua salata che si dice abbia capacità purgative (NE SCONSIGLIO L''ASSUZIONE).',
  '<h2 id="acqua-salata-di-bergondola-cascata-della-duchessa">Escursione all''Acqua Salata di Bergondola e alla Cascata della Duchessa</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa breve escursione è facilmente raggiungibile in auto lungo la strada che costeggia la costa. Cercate un parcheggio poco prima di **Costa d''Arzola**, in un punto dove la strada si fa più stretto e tortuosa. Da lì, il sentiero è ben segnalato e inizia subito dopo un breve tratto di strada sterrata. L''accessibilità a piedi è possibile, ma non consigliata a causa del pendio e del fondo irregolare.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo **trekking** di circa 0.82 km ad anello vi condurrà attraverso un ambiente naturale suggestivo, fiancheggiato da una vegetazione rigogliosa. Inizialmente il sentiero è ben tenuto, ma si fa più stretto e scosceso avvicinandosi alle cascate. Seguire attentamente le indicazioni perché, in alcuni punti, il sentiero si perde tra la vegetazione. Il tratto finale porta al punto più vicino alla **Cascata della Duchessa**, dove è ancora visibile il casotto costruito dalla Principessa Galliera. La zona sottostante la cascata è caratterizzata da una caratteristica pozzaglia di acqua, che si dice sia balneabile ma non particolarmente invitante.  Non assicuratevi la purezza dell''acqua, si dice che provenga da una fonte salata con proprietà purgative (consiglio di non berla!).</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa **escursione** è **media**. Il dislivello di soli 29 metri lo rende accessibile anche a chi non ha molta esperienza, ma il sentiero presenta alcuni tratti scoscesi e tratti con ciottoli. È importante indossare scarpe da trekking adeguate e portare con sé acqua e una piccola merenda. L''escursione è consigliata in primavera, estate e autunno. Prendetevi il vostro tempo e godetevi il panorama!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per aiutarvi durante l''escursione, vi forniamo qui sotto i dati per la traccia GPS. Ricordatevi di scaricare la traccia sul vostro dispositivo GPS o smartphone prima di partire.  La traccia GPS vi aiuterà a seguire il sentiero e ad orientarvi lungo il percorso. </p>

<ul>
  <li>**Distanza:** Circa 0.82 km (anello)</li>
  <li>**Dislivello:** Circa 29 metri</li>
  <li>**Difficoltà:** Media</li>
  <li>**Periodo consigliato:** Primavera, Estate, Autunno</li>
  <li>**Punto di partenza:** Parcheggio prima di Costa d''Arzola, Toscana</li>
  <li>**Comune:** Costa d''Arzola</li>
  <li>**Regione:** Toscana</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong>Distanza:</strong> Circa 0.82 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 29 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio prima di Costa d''Arzola, Toscana</li>
  <li><strong>Comune:</strong> Costa d''Arzola, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  0.82,
  29,
  161,
  199,
  18,
  '0:18',
  16,
  '0:16',
  152,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Costa d''Arzola',
  '2024-08-01',
  '2024-08-01',
  '2024-08-16 00:00:00',
  '2024-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lacqua-salata-di-bergondola-cascata-della-duchessa-181293349',
  NULL,
  44.297227,
  9.929502,
  'POINT(9.929502 44.297227)',
  '37e446ae20c0446a582fbc678a6b9174eed9a9f5f5c085c879eb13ac1e15733a',
  'Trekking Bergondola: Cascata della Duchessa, Costa d''Arzola (Toscana). Anello medio 0.82km +29m. Esplora la cascata e il casotto storico! Fonte salata? (NON ...',
  'Bergondola: Escursione alla Cascata della Duchessa (Toscana)',
  'Lunigiana',
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
VALUES (181293349, 'https://it.wikiloc.com/percorsi-escursionismo/lacqua-salata-di-bergondola-cascata-della-duchessa-181293349', NOW(), '37e446ae20c0446a582fbc678a6b9174eed9a9f5f5c085c879eb13ac1e15733a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 181293349);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/181293349/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181293349/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181293349;

COMMIT;

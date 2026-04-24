BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181293349,
  'L''acqua salata di Bergondola, Cascata della duchessa',
  'L''acqua salata di Bergondola, Cascata della duchessa, trekking breve per quello che dovrebbe fare le veci di un sentiero... sino alle suddette cascatelle che la Duchessa Galliera apprezzava molto... Il casotto costruito dalla duchessa è sostanzialmente inagibile e avvolto dalla vegetazione. La polla che si genera sotto la cascata pare balneabile... ma per niente invitante. Nelle vicinanze ci dovrebbe essere una fonte d''acqua salata che si dice abbia capacità purgative (NE SCONSIGLIO L''ASSUZIONE).',
  '<h2>Trekking L’acqua salata di Bergondola, Cascata della Duchessa – Escursione in Montagna a Savognola</h2>

<h3>Il percorso: Un Sentiero di Storia e Natura</h3>
<p>
Preparatevi per un''escursione indimenticabile lungo il sentiero “L’acqua salata di Bergondola, Cascata della duchessa”, un breve trekking che vi condurrà alla scoperta di un luogo ricco di storia e bellezza naturale. Questo sentiero, situato a <strong>Savognola</strong>, offre un’esperienza di trekking in montagna perfetta per gli amanti della natura e degli appassionati di escursioni. L’escursione permette di immergersi nella profonda tranquillità della <strong>montagna italiana</strong> ed esplorare un sentiero che ha visto protagoniste la <strong>Duchessa Galliera</strong>. La difficoltà è moderata, rendendolo accessibile anche a escursionisti meno esperti.
</p>

<h3>Cosa aspettarsi: Un’Esperienza Unica</h3>
<p>
Questo sentiero vi porterà ad ammirare la maestosità della <strong>Cascata della Duchessa</strong>, un vero gioiello naturale.  La discesa alla cascata è un’esperienza emozionante, mentre il percorso, seppur breve, è ricco di dettagli storici legati alla figura della <strong>Duchessa Galliera</strong>.  Il casotto costruito dalla duchessa, ora inagibile e ricoperto di vegetazione, è un ricordo tangibile del suo amore per la natura e per questo luogo. La zona circostante offre la possibilità di godere di un''atmosfera unica, con la presenza di una <em>pola balneabile</em> (non consigliata per il consumo).  Potrete esplorare l’area e scoprire di più sulla storia locale e sulla tradizione del trekking in <strong>Sentieri Italia</strong>.
</p>

<h3>Informazioni utili: Dettagli per la Vostra Escursione</h3>
<ul>
    <li><b>Nome Sentiero:</b> L’acqua salata di Bergondola, Cascata della Duchessa</li>
    <li><b>Località:</b> Savognola, Val d''Intelvi</li>
    <li><b>Difficoltà:</b> Moderata</li>
    <li><b>Distanza:</b> Circa 3-4 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> Circa 200 metri</li>
    <li><b>Tipo di Sentiero:</b> Sentiero di trekking, adatto a famiglie e appassionati di escursioni.</li>
    <li><b>Punti di interesse:</b> Cascatella della Duchessa, Casotto della Duchessa Galliera,  Possibile balneazione in una pola (SCONSIGLIATA).</li>
    <li><b>Note Importanti:</b>  Attenzione alla polla sotto la cascata; la fonte d’acqua salata non è consigliata per il consumo.  Verificare le condizioni meteorologiche prima di partire.</li>
</ul>

<p>
Non perdete l’occasione di vivere un’esperienza di trekking indimenticabile lungo il sentiero “L’acqua salata di Bergondola, Cascata della Duchessa”.  Un’escursione per appassionati di <strong>trekking</strong>, <strong>escursionismo</strong> e <strong>sentieri in montagna</strong>, perfetta per scoprire la bellezza della <strong>natura italiana</strong> e l''eredità storica del territorio. Organizzate il vostro trekking a <strong>Savognola</strong> e godetevi un''esperienza autentica!
</p>',
  'Tutte le Attività e Paesi',
  0.82,
  29,
  161,
  199,
  12,
  '00:12',
  12,
  '00:12',
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

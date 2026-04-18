BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  99419802,
  'Rifugio Alto Matanna - Procinto',
  'Siamo partiti dal rifugio dell''Alto matanna e in seguito andati in direzione Procino. Il sentiero è semplice, proseguire fino al Callare del Matanna(dove se si è fortunati si vedono i cavalli) e in seguito si prosegue fino all''attacco del Procino, questa parte(anello compreso è fattibile senza Attrezzatura). Una volta arrivati all''attacco mi raccomando l''obbligo dell''attrezzatura per salire, il percoso è bello anche se abbiamo trovato pioggia e nebbia.',
  '<h2>Rifugio Alto Matanna - Procinto: Escursione Trekking in Montagna in Italia</h2>

<h3>Il Percorso: Un''Escursione Panoramica al Rifugio Procinto</h3>

<p>Partite dal suggestivo <strong>Rifugio Alto Matanna</strong> e intraprendete un''entusiasmante <strong>escursione trekking</strong> verso il pittoresco paese di <strong>Procino</strong>. Questo sentiero, di difficoltà semplice, vi condurrà attraverso paesaggi mozzafiato, immersi nella natura selvaggia della <strong>montagna italiana</strong>. L''<strong>escursione</strong> è ideale per appassionati di <strong>trekking</strong> e <strong>sentieri</strong> alla ricerca di un''avventura all''aria aperta in un ambiente incontaminato.</p>

<p>Il percorso inizia con una salita graduale fino al <strong>Callare del Matanna</strong>, un punto di osservazione dove, con un po'' di fortuna, potrete ammirare i cavalli locali. Da qui, proseguite verso l''<strong>attacco del Procino</strong>, una parte dell''anello che può essere affrontata anche senza attrezzatura specifica, offrendo un''esperienza di <strong>trekking</strong> accessibile a tutti.</p>

<h3>Cosa Aspettarsi: Natura, Panorami e Sfide</h3>

<p>Preparatevi a un''esperienza immersiva nella natura. L''<strong>escursione</strong> offre viste panoramiche mozzafiato sulla campagna circostante e sulle cime circostanti. Tuttavia, il percorso presenta alcune pendenze e tratti rocciosi, soprattutto all''<strong>attacco del Procino</strong>, dove è indispensabile l''equipaggiamento adeguato. La possibilità di incontrare pioggia e nebbia rende importante essere preparati ad affrontare condizioni atmosferiche variabili. Questa <strong>escursione in montagna</strong> è un''ottima opportunità per apprezzare la bellezza del paesaggio e sfidare le proprie capacità di <strong>trekking</strong>.</p>

<h3>Informazioni Utili: Dettagli per un Trekking di Successo</h3>

<ul>
    <li><b>Difficoltà:</b> Facile - Media (richiede attrezzatura adeguata all''attacco del Procino)</li>
    <li><b>Distanza:</b> Circa 8 km (andata e ritorno)</li>
    <li><b>Dislivello:</b> Circa 600 metri</li>
    <li><b>Tempo di percorrenza:</b> 3-4 ore (a seconda del ritmo e delle soste)</li>
    <li><b>Punto di partenza:</b> Rifugio Alto Matanna</li>
    <li><b>Punto di arrivo:</b> Attacco del Procino</li>
    <li><b>Consigli:</b> Indossare scarpe da trekking robuste, portare con sé acqua e cibo, controllare le previsioni del tempo e informarsi sulle condizioni del sentiero prima di partire.  Questa <strong>escursione sentiero Italia</strong> è perfetta per gli amanti del <strong>trekking</strong>!</li>
</ul>

<p>Ricordatevi sempre di rispettare l''ambiente naturale e di seguire le indicazioni del sentiero. Un''<strong>escursione</strong> responsabile contribuisce a preservare la bellezza di questi luoghi per le future generazioni. Godetevi questa splendida <strong>escursione trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.67,
  1,
  983,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
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
  'Escursione al Rifugio Alto Matanna e Procinto: sentiero facile, vista cavalli e panorami mozzafiato! Ideale senza attrezzatura (attacco).',
  'Trekking Procinto: Rifugio Alto Matanna - Escursione Facile',
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

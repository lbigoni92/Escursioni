BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617334,
  'Vicopisano - Verruca - Ritorno',
  'Andata -> https://www.wikiloc.com/hiking-trails/vicopisano-verruca-andata-87617356 Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima alla rocca verruca. La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. Ho fatto il percorso in 4 ore con pause e pranzo',
  '<h2>Trekking Vicopisano - Verruca - Ritorno: Escursione nella Rocca Medievale</h2>

<h3>Il Percorso</h3>
<p>Preparatevi per un’entusiasmante <strong>escursione di trekking</strong> attraverso il territorio di <strong>Vicopisano</strong>, un’opportunità unica per immergervi nella <strong>natura</strong> e scoprire le meraviglie dei <strong>Monti Pisani</strong>. Questo sentiero, chiamato <strong>Vicopisano - Verruca - Ritorno</strong>, offre un percorso gradevole e accessibile a tutti, ideale per una <strong>passeggiata domenicale</strong> in famiglia o con amici. La difficoltà è media, con un dislivello impegnativo ma gestibile, rendendolo perfetto per chi cerca una valida <strong>escursione di montagna</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Il <strong>sentiero</strong> inizia dalla pizza di <strong>Vicopisano</strong> e si snoda attraverso un paesaggio variegato, caratterizzato inizialmente da una vegetazione densa, seguita da ampie zone aperte. Un aspetto da tenere presente è la presenza di aree interessate da incendi, che hanno ridotto alcune zone di bosco. Tuttavia, la ricompensa alla fine del percorso è notevole: la maestosa <strong>Rocca della Verruca</strong>, un’antica fortezza medievale con una vista panoramica mozzafiato sulla pianura pisana e la valle dell’Arno.  Questa <strong>escursione</strong> vi permetterà di ammirare un punto di vista unico e di immergervi nella storia e nella cultura della regione.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Nome Sentiero:</b> Vicopisano - Verruca - Ritorno</li>
    <li><b>Località:</b> Vicopisano, Monti Pisani</li>
    <li><b>Tipo di Attività:</b> Trekking, Escursione, Sentiero di Montagna</li>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Distanza:</b> Circa 8-10 km (a seconda del percorso seguito)</li>
    <li><b>Dislivello:</b> Circa 400-500 metri</li>
    <li><b>Tempo di Percorrenza:</b> 4-5 ore (con pause)</li>
    <li><b>Punti di Interesse:</b> <strong>Rocca della Verruca</strong> (XIII secolo), Panorami sulla Piana Pisana, Valle dell''Arno</li>
    <li><b>Consigli:</b>  Portate con voi acqua (almeno 2 litri d''estate), scarpe da trekking adatte, cappello e crema solare.  La segnaletica del <strong>sentiero</strong> è buona, ma è sempre consigliabile avere una mappa e una bussola.</li>
</ul>

<p>Questa <strong>trekking</strong> a <strong>Vicopisano</strong> - <strong>Verruca</strong> - <strong>Ritorno</strong> è un''opportunità imperdibile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>. Scoprite la bellezza dei <strong>Monti Pisani</strong> e lasciatevi incantare dalla <strong>Rocca della Verruca</strong>!</p>',
  'Tutte le Attività e Paesi',
  6.16,
  18,
  46,
  554,
  NULL,
  NULL,
  NULL,
  NULL,
  1409,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Montemagno',
  '2019-02-01',
  '2019-02-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-ritorno-87617334',
  NULL,
  43.707131,
  10.534114,
  'POINT(10.534114 43.707131)',
  '1f977db50c19157cb4b8988008a74f13fa65aa46f85a156e4f22690fd0fcf7ba',
  'Escursione Vicopisano-Verruca: trekking facile e panoramico in Toscana! Visita la Rocca pisana medievale e ammira la vista sulla pianura. Perfetto per famiglie!',
  'Trekking Verruca Vicopisano: Escursione Rocca Pisa Oggi',
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
VALUES (87617334, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-ritorno-87617334', NOW(), '1f977db50c19157cb4b8988008a74f13fa65aa46f85a156e4f22690fd0fcf7ba')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617334);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617334/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617334;

COMMIT;

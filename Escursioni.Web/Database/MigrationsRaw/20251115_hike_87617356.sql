BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617356,
  'Vicopisano - Verruca - Andata',
  'Ritorno -> https://www.wikiloc.com/hiking-trails/vicopisano-verruca-ritorno-87617334 Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima alla rocca verruca. La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. Ho fatto il percorso in 4 ore con pause e pranzo',
  '<h2>Vicopisano - Verruca - Andata: Trekking e Escursione alla Rocca Medievale</h2>

<h3>Il Percorso</h3>
<p>Preparatevi per un''indimenticabile <strong>escursione trekking</strong> lungo il sentiero <strong>Vicopisano - Verruca - Andata</strong>. Questo percorso, ideale per famiglie e appassionati di <strong>trekking</strong>, vi condurrà attraverso paesaggi mozzafiato dei <strong>Monti Pisani</strong>. Partendo da <strong>Vicopisano</strong>, il sentiero si snoda dolcemente, offrendo un''esperienza di <strong>escursione</strong> accessibile a tutti. Il percorso, diviso in diverse sezioni, è stato recentemente modificato per garantire la registrazione accurata del tracciato, offrendo un''esperienza di <strong>sentiero</strong> sicura e ben definita.</p>

<h3>Cosa Aspettarsi</h3>
<p>Durante questa <strong>escursione</strong>, potrete ammirare una varietà di panorami, dalla suggestiva piana pisana alla valle dell''Arno.  Il sentiero, sebbene caratterizzato da tratti alberati, offre momenti di splendida visuale, in particolare una volta raggiunta la cima della <strong>Rocca della Verruca</strong>.  La parte più impegnativa del percorso è stata recentemente modificata per garantire un''esperienza di <strong>trekking</strong> più fluida e sicura.  Nonostante qualche sezione alberata, il sentiero è adatto a diversi livelli di preparazione fisica, rendendolo un''ottima scelta per una <strong>passeggiata domenicale</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile - Media</li>
    <li><strong>Distanza:</strong> Circa 8 km (andata e ritorno)</li>
    <li><strong>Durata:</strong> 4 ore (con pause)</li>
    <li><strong>Dislivello:</strong> Circa 300 metri</li>
    <li><strong>Punto di Partenza:</strong> Vicopisano (pizza)</li>
    <li><strong>Punto di Arrivo:</strong> Rocca della Verruca</li>
    <li><strong>Consigli:</strong>  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua (almeno 2 litri, data l''assenza di fontanelle) e cibo per il pranzo.  La <strong>escursione</strong> è particolarmente consigliata per le giornate di sole, ma tenete presente la possibilità di affrontare il caldo estivo.</li>
</ul>

<p>La <strong>Rocca della Verruca</strong>, eretta dalla Repubblica di Pisa nel XIII secolo, rappresenta un''affascinante testimonianza storica e architettonica.  La sua posizione strategica dominava la piana pisana e la valle dell''Arno, rendendola un importante avamposto militare.  Questo <strong>sentiero di trekking</strong> rappresenta un''occasione unica per immergersi nella natura e scoprire la storia di questa antica fortezza, una vera e propria <strong>passeggiata domenicale</strong> nel cuore della Toscana.  Esplorate la <strong>Rocca della Verruca</strong> e godetevi la vista panoramica!</p>',
  'Tutte le Attività e Paesi',
  6.55,
  515,
  14,
  516,
  135,
  '02:15',
  NULL,
  NULL,
  1434,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2019-02-01',
  '2019-02-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-andata-87617356',
  NULL,
  43.700258,
  10.583324,
  'POINT(10.583324 43.700258)',
  '8b8bcbcd3e79a9100462fd02639b93596688a69c2408793f7b4df894b21496e3',
  'Escursione Vicopisano-Verruca: Rocca medievale e panorama mozzafiato sui Monti Pisani. Percorso facile e ben segnalato per famiglie!',
  'Trekking Vicopisano Verruca: Escursione Rocca & Vista Pisa',
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
VALUES (87617356, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-andata-87617356', NOW(), '8b8bcbcd3e79a9100462fd02639b93596688a69c2408793f7b4df894b21496e3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617356);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617356/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617356;

COMMIT;

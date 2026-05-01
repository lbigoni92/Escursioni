BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617334,
  'Vicopisano - Verruca - Ritorno',
  'Andata -> https://www.wikiloc.com/hiking-trails/vicopisano-verruca-andata-87617356 Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima alla rocca verruca. La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. Ho fatto il percorso in 4 ore con pause e pranzo',
  '<h2 id="vicopisano-verruca-ritorno">Escursione a Verruca da Vicopisano: La Rocca Medievale e il Panorama</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

Parti da Vicopisano, in direzione di Montemagno. Troverai facilmente il punto di partenza, vicino alla pizzeria, un ottimo spunto per riforzarci l''energia prima dell''escursione. Il percorso è accessibile in auto, ma per l''ultima parte è consigliabile arrivare a piedi per goderti appieno la bellezza del sentiero.

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

L''escursione inizia da Vicopisano e si snoda attraverso un sentiero carino, sebbene un po'' ombreggiato a causa della presenza di alberi bruciati (una caratteristica del percorso che è rimasta anche nel 2019). Il sentiero è ben segnalato e adatto a tutti, suddiviso in diverse sezioni per facilitare il percorso. La parte più bella è la salita alla Rocca della Verruca, dove potrai ammirare un panorama mozzafiato sulla pianura pisana e la valle dell''Arno. L''escursione è ideale per una passeggiata domenicale, perfetta per famiglie.

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

Questa escursione è di **facilità**, con un dislivello di 0 metri. La distanza totale è di circa 6.16 km. La durata approssimativa è di 4 ore, tenendo conto di eventuali pause e del pranzo. Porta con te almeno 2 litri d''acqua, soprattutto durante i mesi estivi.

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

Questo sentiero offre un''esperienza di trekking piacevole e accessibile, ideale per chi cerca una passeggiata nella natura senza impegnativi dislivelli. La vista dalla Rocca è un premio per ogni escursionista.

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6.16 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 0 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Vicopisano (accessibile in auto/a piedi)</li>
    <li><strong>Comune:</strong> Montemagno, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.16,
  0,
  46,
  554,
  106,
  '1:46',
  92,
  '1:32',
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
  'Escursione Vicopisano Verruca: facile giro di 6.16km in Toscana +18m dislivello. Vista Rocca Verruca (Pisa) – ideale per famiglie! ⛰️',
  'Verruca (Montemagno): escursione facile da Vicopisano',
  'Monti Pisani',
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

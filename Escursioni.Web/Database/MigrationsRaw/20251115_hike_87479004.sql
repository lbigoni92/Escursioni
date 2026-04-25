BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87479004,
  'Valle Benedetta - Parrana San Martino',
  'Questo sentiero parte dalla Valle Benedetta, e lo abbiamo percorso con l’idea di fare una tranquilla passeggiata mattutina alla ricerca di qualche fungo.

Arrivati alla Valle Benedetta, abbiamo proseguito fino al parcheggio dove si trova il classico crocifisso. Da lì non abbiamo imboccato il sentiero 00 in direzione Sambuca, scegliendo di salire.

Al primo incrocio abbiamo preso subito a sinistra, continuando fino ad arrivare quasi a Parrana San Martino. A quel punto siamo tornati indietro lungo lo stesso sentiero e, una volta rientrati all’incrocio, abbiamo deciso di scendere verso il podere Il Pianone.

Da lì abbiamo fatto ritorno, chiudendo l’anello e concludendo il nostro giro.',
  '<h2>Valle Benedetta - Parrana San Martino: Trekking e Escursione nel Cuore della Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> nella <strong>Valle Benedetta</strong>, a <strong>Parrana San Martino</strong>, offre un''esperienza unica per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>. L''escursione, ideata per una tranquilla <strong>passeggiata mattutina</strong> alla ricerca di funghi, si snoda attraverso paesaggi mozzafiato, offrendo un''opportunità perfetta per un''<strong>escursione</strong> in <strong>montagna</strong>.</p>
<p>Il percorso inizia dalla pittoresca <strong>Valle Benedetta</strong>, proseguendo verso il parcheggio con il caratteristico <strong>crocifisso</strong>. Da qui, si intraprende una salita seguendo il sentiero, evitando la direzione verso <strong>Sambuca</strong>, per poi tornare indietro lungo lo stesso tracciato fino all''incrocio. Da qui, si sceglie di scendere verso il <strong>podere Il Pianone</strong> per completare l''anello e tornare al punto di partenza, concludendo il giro.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a un''<strong>escursione</strong> immersa nella <strong>natura</strong> incontaminata. Il <strong>sentiero</strong> offre panorami spettacolari sulle cime circostanti e la possibilità di ammirare la flora e la fauna locali. Questa <strong>trekking</strong> è ideale per chi cerca una <strong>passeggiata mattutina</strong> rilassante o un''esperienza più impegnativa di <strong>escursionismo</strong> nella <strong>montagna</strong>.  Potresti anche avvistare qualche fungo, specialmente durante la stagione giusta, rendendo questa <strong>escursione</strong> ancora più speciale.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Circa 8-10 km (il percorso può variare leggermente)</li>
    <li><strong>Dislivello:</strong> Circa 400-500 metri</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero di <strong>trekking</strong> segnalato</li>
    <li><strong>Consigli:</strong> Indossa scarpe da <strong>trekking</strong> adatte, porta con te acqua e cibo, e rispetta l''ambiente.</li>
</ul>
<p>Esplora la bellezza della <strong>Valle Benedetta</strong> e di <strong>Parrana San Martino</strong> con questa splendida <strong>escursione</strong>.  Un''opportunità imperdibile per gli appassionati di <strong>sentieri Italia</strong> e di <strong>trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  11.61,
  299,
  242,
  435,
  293,
  '4:01',
  210,
  '3:30',
  3288,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2020-11-01',
  '2020-11-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-parrana-san-martino-87479004',
  NULL,
  43.522087,
  10.406714,
  'POINT(10.406714 43.522087)',
  '7035e440158abfdd8c2aff630fd04183f62d2c473b5a920943d4baebab08ea06',
  'Escursione Valle Benedetta - Parrana San Martino: facile anello di 11.6km in Toscana (+384m dislivello). Perfetta per una passeggiata mattutina!',
  'Parrana San Martino: escursione facile da Valle Benedetta...',
  'Livorno e costa toscana',
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
VALUES (87479004, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-parrana-san-martino-87479004', NOW(), '7035e440158abfdd8c2aff630fd04183f62d2c473b5a920943d4baebab08ea06')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479004);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479004/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479004;

COMMIT;

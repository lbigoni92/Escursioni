BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  135432935,
  'Gabbro- monte Carvoli',
  'Percorso improvvisato all''ultimo, doveva essere molto più lungo ma è stato interrotto dalla pioggia improvvisa... I vare sentieri che vedete iniziati ma non finiti sono così perchè completamenti immersi nella vegetazione e non più percorribili. Il monte merita molto con i sui tre balconi panoramici.',
  '<h2 id="gabbro-monte-carvoli">Escursione al Gabbro del Monte Carvoli</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa escursione al Gabbro del Monte Carvoli si trova a Nibbiaia, in Toscana.  È raggiungibile in auto, seguendo le indicazioni per la frazione di Nibbiaia.  Dalla strada principale, si trova un parcheggio limitato dove lasciare l''auto e da lì è necessario seguire il sentiero iniziale per raggiungere il punto di partenza del percorso.  L''ultimo tratto è improvvisato, quindi preparatevi a un''ultima breve salita.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo trekking al Gabbro del Monte Carvoli è un''escursione ad anello di circa 7.05 km. Il sentiero iniziale è piuttosto impervio, immerso nella vegetazione, e alcuni sentieri inizati ma non completati sono frutto della sua posizione nascosta.  Il percorso si snoda attraverso boschi e radici, offrendo panorami incantevoli. Il punto culminante è, ovviamente, la cima del monte Carvoli, con i suoi tre balconi panoramici che offrono una vista mozzafiato sulla campagna circostante. La pioggia improvvisa ha interrotto il percorso, rendendolo più breve e impegnativo.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione al Gabbro del Monte Carvoli presenta una difficoltà valutata come Media.  Il sentiero è in alcuni tratti piuttosto tecnico, con saliscendi e tratti rocciosi.  La distanza totale è di 7.05 km con un dislivello positivo di 192 metri.  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.  Considerando la posizione e l''immersione nella vegetazione, preparatevi a un''escursione impegnativa, ma ricca di soddisfazioni.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per facilitare la vostra escursione, vi forniamo una traccia GPS (da utilizzare con le vostre app preferite).  Ricordatevi di controllare sempre le previsioni meteo prima di partire e di informare qualcuno del vostro itinerario.  L''escursione è consigliata in primavera, estate e autunno per godere al meglio del panorama.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 7.05 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 192 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Sentiero iniziale a Nibbiaia, Toscana</li>
  <li><strong>Comune:</strong> Nibbiaia, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.05,
  192,
  249,
  353,
  148,
  '2:28',
  129,
  '2:09',
  948,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Nibbiaia',
  '2023-05-01',
  '2023-05-01',
  '2023-05-21 00:00:00',
  '2023-05-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gabbro-monte-carvoli-135432935',
  NULL,
  43.46409,
  10.416567,
  'POINT(10.416567 43.46409)',
  '0548de93bb4d93e0c628be6e838427db3ea39cae841ef6593c53216c91a5d8e0',
  'Escursione Gabbro Monte Carvoli Nibbiaia: percorso anello medio (7.05km, +157m) tra i Balcioni Panoramici. Sentiero improvvisato a tratti, immerso nella Tosc...',
  'Monte Carvoli: escursione a Gabbro (Nibbiaia, Toscana)',
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
VALUES (135432935, 'https://it.wikiloc.com/percorsi-escursionismo/gabbro-monte-carvoli-135432935', NOW(), '0548de93bb4d93e0c628be6e838427db3ea39cae841ef6593c53216c91a5d8e0')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 135432935);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/135432935/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/135432935/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 135432935;

COMMIT;

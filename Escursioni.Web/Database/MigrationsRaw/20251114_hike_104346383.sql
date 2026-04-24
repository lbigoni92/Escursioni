BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104346383,
  'Talamone',
  'Talamone',
  '<h2>Trekking al Talamone: Escursione in Montagna e Natura Selvaggia</h2>

<h3>Il Percorso</h3>
<p>Immergiti nel cuore della **Talamone**, un''escursione indimenticabile che ti condurrà attraverso paesaggi mozzafiato. Questo sentiero di <strong>trekking** ti farà scoprire la vera anima della **montagna** e della **natura** selvaggia della **Valle d''Arbia**. Il percorso, di circa 8 chilometri, è pensato per escursionisti esperti che amano l''adrenalina e l''immersione nella **natura**.</p>
<p>La discesa è impegnativa, con pendenze ripide e tratti rocciosi, quindi è consigliabile indossare scarpe da trekking adatte e prepararsi fisicamente.  Questo <strong>sentiero** offre un''opportunità unica per l''<strong>escursione** in **Italia**, avvicinandoti alla cultura e alla tradizione di questo borgo medievale.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a un''esperienza intensa e ricca di emozioni. Durante il <strong>trekking** potrai ammirare panorami spettacolari, attraversare boschi rigogliosi e raggiungere punti di osservazione privilegiati sulla **Valle d''Arbia**.  L''aria fresca di **montagna** ti rinvigorerà e la bellezza del paesaggio ti lascerà senza parole.  Quest''<strong>escursione** è perfetta per chi cerca un''avventura autentica e un contatto diretto con la **natura**.</p>
<p>Avrai la possibilità di osservare la fauna locale, come la volpe e il cervo, e la flora tipica della macchia mediterranea. La **Talamone**  è un luogo ricco di storia e tradizioni, e questo <strong>sentiero** ti permetterà di scoprire i suoi segreti e la sua autenticità.</p>

<h3>Informazioni Utili</h3>
<ul>
  <li><strong>Difficoltà:</strong> Impegnativa</li>
  <li><strong>Distanza:</strong> 8 km</li>
  <li><strong>Dislivello:</strong> 400 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 3-4 ore</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, bastoncini da trekking, acqua, snack, cappello, crema solare, mappa.</li>
  <li><strong>Punto di partenza:</strong>  (Indicare il punto esatto)</li>
  <li><strong>Accesso:</strong> Facile, raggiungibile con mezzi pubblici o auto privata.</li>
</ul>

<p>Non perdere l''occasione di vivere un''indimenticabile <strong>trekking** in **Talamone**!</p>',
  'Tutte le Attività e Paesi',
  13.57,
  546,
  8,
  279,
  309,
  '5:09',
  269,
  '4:29',
  2320,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Talamone',
  '2022-06-01',
  '2022-06-01',
  '2022-06-01 00:00:00',
  '2022-06-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/talamone-104346383',
  NULL,
  42.553842,
  11.134698,
  'POINT(11.134698 42.553842)',
  'a95dc644ec879e5524518484d45049631a9c466cd6f8d49b3e2d520cfccb69f3',
  'Escursione Talamone: Anello nel Parco Naturale della Maremma Toscana. 13.57km, +454m, difficoltà media. Scopri il borgo medievale e il Monte Talamone!',
  'Talamone: Escursione Anello da Talamone (Toscana)',
  'Grosseto e Maremma',
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
VALUES (104346383, 'https://it.wikiloc.com/percorsi-escursionismo/talamone-104346383', NOW(), 'a95dc644ec879e5524518484d45049631a9c466cd6f8d49b3e2d520cfccb69f3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104346383);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104346383/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

COMMIT;

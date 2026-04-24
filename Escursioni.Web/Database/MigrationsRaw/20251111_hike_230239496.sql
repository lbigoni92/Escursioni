BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  230239496,
  'Anello del Lago di Carezza con Ponte Sospeso',
  'Breve percorso ad anello con partenza dal parcheggio superiore gratuito di Carezza. Il sentiero che scende verso il lago è molto semplice e adatto a tutti, compresi bambini e persone anziane. Dopo pochi minuti si raggiunge il Lago di Carezza, famoso per i suoi colori intensi e per la cornice delle Dolomiti. Non è consentito avvicinarsi alle sponde, per motivi di tutela ambientale, ma il giro panoramico offre splendide vedute da diversi punti di osservazione. Il rientro avviene passando per il ponte sospeso, un passaggio breve ma suggestivo, che rende l’escursione ancora più piacevole. Il percorso è ben segnalato e poco impegnativo, ideale come passeggiata rilassante o come escursione in famiglia. Consiglio di evitare il parcheggio a pagamento vicino al lago: il parcheggio superiore è gratuito e permette comunque un facile accesso. Nei dintorni si trovano bar e punti di ristoro per una sosta.',
  '<h2>Anello del Lago di Carezza con Ponte Sospeso: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>anello del Lago di Carezza</strong> è un’escursione a piedi perfetta per chi cerca un''esperienza di <strong>trekking</strong> in un paesaggio mozzafiato. Il percorso, di circa <strong>6 km</strong>, si snoda lungo le rive del pittoresco <strong>Lago di Carezza</strong>, un vero gioiello delle <strong>Dolomiti</strong>. L’<strong>escursione</strong>, completamente pianeggiante e ben segnalata, è adatta a tutti, dai principianti agli escursionisti esperti, rendendola un''ottima scelta per un’<strong>passeggiata in montagna</strong> o un''<strong>escursione in famiglia</strong>. Il sentiero, facilmente percorribile, offre panorami spettacolari sulla **montagna** e sulla **natura** incontaminata.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati ad ammirare i caratteristici colori iridescenti del <strong>Lago di Carezza</strong>, un fenomeno naturale dovuto alla rifrazione della luce sulle alghe.  L''escursione è un''opportunità unica per immergerti nella bellezza delle <strong>Dolomiti</strong> e godere di una giornata all''aria aperta. Ti imbatterai in punti di osservazione strategici che offrono viste panoramiche mozzafiato e potrai ammirare il suggestivo <strong>Ponte Sospeso</strong>, un breve tratto che aggiunge un tocco di magia al tuo <strong>trekking</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6 km</li>
    <li><strong>Dislivello:</strong> 150 metri</li>
    <li><strong>Difficoltà:</strong> Facile - Adatto a tutti</li>
    <li><strong>Tempi di percorrenza:</strong> 2-3 ore</li>
    <li><strong>Punto di partenza:</strong> Parcheggio superiore gratuito di Carezza</li>
    <li><strong>Punto di arrivo:</strong> Parcheggio superiore (ciclo chiuso)</li>
    <li><strong>Sentiero:</strong> Sentiero n. 734</li>
    <li><strong>Attenzione:</strong> Non è consentito avvicinarsi alle sponde del lago per motivi di tutela ambientale.</li>
</ul>
<p>Ricorda di indossare scarpe da trekking adatte e di portare con te acqua, cibo e protezione solare.  Goditi questa splendida <strong>escursione in sentiero</strong> e scopri le meraviglie del <strong>Lago di Carezza</strong>, un vero paradiso per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  2.84,
  63,
  1540,
  1605,
  58,
  '0:58',
  50,
  '0:50',
  479,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Trentino-Alto Adige',
  'Carezza al Lago',
  '2025-09-01',
  '2025-09-01',
  '2025-09-05 00:00:00',
  '2025-09-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lago-di-carezza-e-ponte-sospeso-da-carezza-230239496',
  NULL,
  46.410354,
  11.58051,
  'POINT(11.58051 46.410354)',
  '83a6f0f9b0e139bc8f715c9469324c68995e18ff1d617b4f0f931bcf7e63779b',
  'Escursione Lago di Carezza: Anello facile da Cardoso al Ponte Sospeso! 2.8km, +63m, Dolomiti, Trentino. Ideale famiglie e passeggiate rilassanti.',
  'Lago di Carezza: escursione ad anello con Ponte Sospeso',
  'Trentino',
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
VALUES (230239496, 'https://it.wikiloc.com/percorsi-escursionismo/lago-di-carezza-e-ponte-sospeso-da-carezza-230239496', NOW(), '83a6f0f9b0e139bc8f715c9469324c68995e18ff1d617b4f0f931bcf7e63779b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230239496);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230239496/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230239496/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230239496;

COMMIT;

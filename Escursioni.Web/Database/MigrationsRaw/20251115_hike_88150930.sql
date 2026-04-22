BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  88150930,
  'Parrana - Colognole - Valle Benedetta',
  'Partenza da Parrana e senza problemi abbiamo seguito tuto il tempo sentieri del CAI ben segnati, tra il km 4/5 il sentiero ea dissestato come al km9.8 colpa di un alluvio inizio 2021, ma tranquillamente praticabile. Al km12.5 abbiamo preso un breve fuori pista, si può omettere, tirando a dritto sul sentiero. Il rientro a Parrana è stato molto semplice in discesa, non lo consiglio a chiunque per la difficoltà in alcuni punti, sconsiglio d''andare dopo forti piogge. Per il resto lasciate un commento e buon trek!',
  '<h2>Parrana - Colognole - Valle Benedetta: Trekking e Escursione nel Cuore della Montagna Toscana</h2>

<h3>Il Percorso: Un Sentiero CAI Ben Segnato tra Natura e Paesaggi Incredibili</h3>
<p>
Questo itinerario di <strong>trekking</strong> e <strong>escursione</strong> vi condurrà attraverso il magnifico paesaggio della **Valle Benedetta**, partendo da <strong>Parrana</strong> e raggiungendo il punto più lontano. Il sentiero, prevalentemente ben segnalato dal <strong>CAI</strong>, offre un''esperienza immersiva nella natura toscana. Il percorso, di circa 12-15 km, è adatto ad escursionisti esperti e amanti del <strong>trekking</strong> in <strong>montagna</strong>, con brevi tratti in <strong>fuori pista</strong> facilmente superabili.</p>

<h3>Cosa Aspettarsi: Un''Escursione Ricca di Sfide e Ricompense</h3>
<p>
Preparatevi a un''<strong>escursione</strong> che vi farà scoprire panorami mozzafiato e un ambiente naturale incontaminato. Il sentiero presenta un dislivello moderato, con alcuni tratti più impegnativi, specialmente nel ritorno a <strong>Parrana</strong>. È importante essere adeguatamente equipaggiati e avere una buona preparazione fisica. Il <strong>sentiero</strong> è stato parzialmente modificato a causa di un alluvione nel 2021, ma rimane praticabile e offre comunque un''esperienza indimenticabile. La possibilità di brevi tratti in <strong>fuori pista</strong> aggiunge un elemento di avventura a questa <strong>trekking</strong>.</p>

<h3>Informazioni Utili: Dettagli per una Trekking Sicura e Appagante</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media/Difficile</li>
    <li><strong>Distanza:</strong> Circa 12-15 km</li>
    <li><strong>Dislivello:</strong> Circa 400-500 metri</li>
    <li><strong>Periodo Consigliato:</strong> Primavera/Estate/Autunno</li>
    <li><strong>Punto di Partenza:</strong> Parrana</li>
    <li><strong>Punto di Arrivo:</strong> Valle Benedetta</li>
    <li><strong>Attenzione:</strong> Si consiglia di evitare il percorso dopo forti piogge a causa della discesa impegnativa.  Il sentiero CAI è ben segnalato, ma è consigliabile avere con sé una mappa e una bussola.</li>
    <li><strong>Consigli:</strong>  Preparatevi adeguatamente, indossate scarpe da trekking robuste, portate con voi acqua e cibo, e rispettate l''ambiente naturale.  Quest''<strong>escursione</strong> nel cuore della **montagna** toscana è un''ottima opportunità per praticare il <strong>trekking</strong> in Italia.</li>
</ul>

<p>
Scoprite la bellezza della **Valle Benedetta** e vivete un''esperienza di <strong>trekking</strong> indimenticabile. Buon <strong>sentiero</strong>! Lasciate un commento e condividete la vostra esperienza di <strong>trekking</strong> in questa splendida zona.</p>',
  'Tutte le Attività e Paesi',
  17.38,
  674,
  78,
  416,
  425,
  '07:05',
  NULL,
  NULL,
  4443,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Parrana San Martino',
  '2021-05-01',
  '2021-05-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parrana-colognole-valle-benedetta-con-lupus-in-trekking-88150930',
  NULL,
  43.537354,
  10.441417,
  'POINT(10.441417 43.537354)',
  '3c2d7d1f753c9e155397348ea77f3bc6fad531121f958989438e6ed425d8ab88',
  'Escursione Parrana - Valle Benedetta: Trek facile 17.4km, +674m nel CAI in Toscana. Sentiero ben segnato (fino km 9.8 dissestato), breve fuori pista opzional...',
  'Parrana - Valle Benedetta: Escursione Facile da Parrana (17km)',
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
VALUES (88150930, 'https://it.wikiloc.com/percorsi-escursionismo/parrana-colognole-valle-benedetta-con-lupus-in-trekking-88150930', NOW(), '3c2d7d1f753c9e155397348ea77f3bc6fad531121f958989438e6ed425d8ab88')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88150930);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88150930/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88150930;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88150930,
  'Parrana - Colognole - Valle Benedetta',
  'Partenza da Parrana e senza problemi abbiamo seguito tuto il tempo sentieri del CAI ben segnati, tra il km 4/5 il sentiero ea dissestato come al km9.8 colpa di un alluvio inizio 2021, ma tranquillamente praticabile. Al km12.5 abbiamo preso un breve fuori pista, si può omettere, tirando a dritto sul sentiero. Il rientro a Parrana è stato molto semplice in discesa, non lo consiglio a chiunque per la difficoltà in alcuni punti, sconsiglio d''andare dopo forti piogge. Per il resto lasciate un commento e buon trek!',
  '<h2 id="parrana-cognole-valle-benedetta">Escursione a Parrana, Colognole e Valle Benedetta</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>La partenza per questa bella escursione si trova a <strong>Parrana San Martino</strong>, in provincia di <strong>Toscana</strong>.  Raggiungere Parrana è relativamente semplice: si può arrivare in auto, seguendo le indicazioni stradali per Parrana San Martino.  Da lì, il sentiero inizia direttamente dal paese, seguendo i percorsi segnalati del CAI.  Non ci sono particolari difficoltà di accesso, solo un breve tratto su strada sterrata per raggiungere il punto di partenza.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione è un vero gioiello! Partendo da <strong>Parrana</strong>, ci si inoltra immediatamente in un sentiero ben tracciato del CAI. Il percorso è prevalentemente facile e lineare, con alcuni brevi tratti su sentiero dissestato, come segnalato a km 4/5, dove un alluvione del 2021 ha modificato il percorso.  A km 9.8, si prende un breve tratto fuori pista, facilmente omettile se si preferisce un percorso più diretto.  La salita è costante ma non impegnativa, e il sentiero offre panorami mozzafiato sulla <strong>Valle Benedetta</strong>. Il ritorno a <strong>Parrana</strong> è una discesa dolce e ben definita, ma tenete presente che alcune sezioni potrebbero risultare impegnative per chi non è abituato a discese ripide.  Un’escursione da fare con calma e godendosi la natura!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è classificata come <strong>Facile</strong>, ideale per famiglie e per chi cerca un trekking non troppo impegnativo.  La <strong>distanza totale</strong> è di circa <strong>17.38 km</strong> con un <strong>dislivello positivo di 674 metri</strong>.  Si tratta di un <strong>solo andata</strong>, quindi preparatevi adeguatamente per il ritorno.  È importante indossare scarpe da trekking e portare con sé acqua, snack e una mappa.  Evitate di effettuare questa escursione dopo forti piogge, a causa della presenza di sentieri dissestati e della difficoltà della discesa.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>La traccia GPS di questa escursione è disponibile a breve, a seguito dei test. Nel frattempo, vi forniamo le informazioni pratiche principali:</p>
<ul>
    <li><strong>Distanza:</strong> Circa 17.38 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 674 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parrana San Martino, accessibile in auto</li>
    <li><strong>Comune:</strong> Parrana San Martino, Regione Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 17.38 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 674 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parrana San Martino, accessibile in auto</li>
    <li><strong>Comune:</strong> Parrana San Martino, Regione Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  17.38,
  674,
  78,
  416,
  425,
  '6:23',
  333,
  '5:33',
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
  'Parrana - Valle Benedetta: Escursione Facile Toscana',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  97490981,
  'Montenero - Ciano',
  'Il percorso è molto semplice da fare, secondo me con un allungata al vecchio faro li vicino, oppure proseguendo verso il Castellaccio. Qua visitiamo il santuario di Montenero è il monumento a Ciano, dietro il monumento parte un sentiero secondario immerso nella natura, pieno di asparagi.',
  '<h2 id="montenero-ciano">Escursione a Montenero da Ciano: Un Anello Facile tra Storia e Natura</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è a Ciano, un caratteristico borgo nel cuore della Val d''Arbia. Raggiungibile in auto tramite strade secondarie, Ciano offre un facile parcheggio nei pressi del centro. Da qui, il sentiero inizia direttamente dal paese, seguendo un percorso ben segnalato.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo anello escursionistico di circa 2,7 km è perfetto per una giornata all''aria aperta. Iniziando da Ciano, il sentiero sale gradualmente attraverso un boschetto di faggi, offrendo già un primo splendido panorama sulla Val d''Arbia. Proseguendo, si raggiunge il Santuario di Montenero, un luogo di grande importanza storica e religiosa. Da qui, si può scegliere di allungare il giro visitando il vecchio faro, oppure proseguire verso il Castellaccio, immergendosi in un sentiero secondario che si snoda tra la natura, ricco di asparagi e altri tesori vegetali. Un''escursione davvero varia e suggestiva!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come **Facile**, adatta a famiglie, bambini e a chiunque cerchi un percorso piacevole e senza particolari difficoltà. Il dislivello di circa 143 metri è contenuto, rendendo il sentiero accessibile anche a chi non ha molta esperienza di trekking.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per orientarsi meglio durante l''escursione, ti consiglio di scaricare una traccia GPS disponibile online. In alternativa, segui attentamente le segnaletiche presenti lungo il sentiero.  L''escursione offre ampie possibilità di allungo e permette di personalizzare il percorso in base ai propri interessi e capacità.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 2.69 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 143 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Ciano, accessibile in auto</li>
    <li><strong>Comune:</strong> Montenero, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
    <li><strong>Parco Nazionale:</strong> Non applicabile</li>
</ul>',
  'Tutte le Attività e Paesi',
  2.69,
  143,
  171,
  230,
  66,
  '1:06',
  58,
  '0:58',
  404,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Montenero',
  '2022-03-01',
  '2022-03-01',
  '2022-03-13 00:00:00',
  '2022-03-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/montenero-ciano-97490981',
  NULL,
  43.491427,
  10.343522,
  'POINT(10.343522 43.491427)',
  '12608bd332d3ed5ebca4fc5f9e3cacb97b6903450ea4a468d5fb219298fdfd75',
  'Escursione Montenero Ciano: Anello facile in Toscana (2.69km, +108m). Visita santuario, monumento Ciano e sentiero asparagi! Ideale per principianti.',
  'Montenero: escursione facile da Ciano (Toscana)',
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
VALUES (97490981, 'https://it.wikiloc.com/percorsi-escursionismo/montenero-ciano-97490981', NOW(), '12608bd332d3ed5ebca4fc5f9e3cacb97b6903450ea4a468d5fb219298fdfd75')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97490981);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97490981/photo_03.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97490981/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97490981;

COMMIT;

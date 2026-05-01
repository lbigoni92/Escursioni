BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  97480494,
  'Montenero - Vecchio faro',
  'Percorso ovviamente molto semplice, appena un chilometro, ma è interessante dal punto di vista storico, qua possiamo ammirare il vecchio faro di Livorno anche se oramai è un disuso. Il farò oramai è in stato di abbandono, e si trova vicino alla funicolare, ed è dietro a una delle più belle ville di Livorno',
  '<h2 id="montenero-vecchio-faro">Escursione al Vecchio Faro di Montenero</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza dell''escursione al Vecchio Faro di Montenero, si arriva facilmente in auto lungo la strada che sale al paese di Montenero. Il parcheggio è situato poco prima dell''inizio del sentiero, vicino alla funicolare. Da qui, si segue il sentiero segnalato, facilmente riconoscibile. Si tratta di un percorso accessibile anche a persone alle prime armi, con una breve salita iniziale.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo sentiero è un''escursione davvero semplice, perfetta per una passeggiata nella natura e per scoprire la storia del luogo. Inizierete dal punto di arrivo, vicino alla funicolare, e seguirete un percorso di circa 1.19 km ad anello. Il sentiero è prevalentemente pianeggiante, con una leggera salita alla fine, dove si trova il vecchio faro.  Avrete la possibilità di ammirare un panorama mozzafiato sulla costa livornese e di scoprire un luogo ricco di storia. L''escursione è ideale per famiglie e per chi cerca una passeggiata facile e rilassante.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà **Facile**. Il sentiero è ben segnalato e il dislivello è contenuto, circa 35 metri. La distanza totale del percorso è di 1.19 km, quindi è un''escursione breve e adatta a tutti, anche ai bambini. Aspettatevi una passeggiata piacevole attraverso un paesaggio suggestivo, con la possibilità di ammirare un antico faro e un panorama spettacolare.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per scaricare la traccia GPS di questa escursione, potete utilizzare le app per smartphone dedicate all''escursionismo. Ecco alcune informazioni pratiche:</p>
<ul>
    <li><strong>Distanza:</strong> Circa 1.19 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 35 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Vicino alla funicolare di Montenero, Livorno</li>
    <li><strong>Comune:</strong> Montenero, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong id="distanza">Distanza:</strong> Circa 1.19 km (anello)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 35 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Vicino alla funicolare di Montenero, Livorno</li>
    <li><strong id="comune">Comune:</strong> Montenero, Toscana</li>
    <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  1.19,
  35,
  73,
  115,
  26,
  '0:26',
  23,
  '0:23',
  190,
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
  'https://it.wikiloc.com/percorsi-escursionismo/montenero-vecchio-faro-97480494',
  NULL,
  43.497267,
  10.343448,
  'POINT(10.343448 43.497267)',
  '8b57c1137611401e27e6cb90d0dbbf2f810712fc8781a8d69289c943a761ae07',
  'Escursione Montenero - Vecchio Faro, Livorno: Anello facile 1.19km, +35m dislivello. Ammira il faro abbandonato e la villa storica! Perfetto per una passeggi...',
  'Montenero: escursione al Vecchio Faro (Livorno)',
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
VALUES (97480494, 'https://it.wikiloc.com/percorsi-escursionismo/montenero-vecchio-faro-97480494', NOW(), '8b57c1137611401e27e6cb90d0dbbf2f810712fc8781a8d69289c943a761ae07')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97480494);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97480494/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97480494/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97480494/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97480494;

COMMIT;

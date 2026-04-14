BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97480494,
  'Montenero - Vecchio faro',
  'Percorso ovviamente molto semplice, appena un chilometro, ma è interessante dal punto di vista storico, qua possiamo ammirare il vecchio faro di Livorno anche se oramai è un disuso. Il farò oramai è in stato di abbandono, e si trova vicino alla funicolare, ed è dietro a una delle più belle ville di Livorno',
  '<h2 class="title">Montenero - Vecchio faro</h2>
<figure>
  <figcaption>Il vecchio faro di Livorno, un testimone del passato.</figcaption>
</figure>

<p>Questo percorso è una gita facilissima, con soli un chilometro di distanza, perfetta per una mattinata all''aria aperta. Nonostante la sua brevità, il Vecchio Faro di Montenero offre un''esperienza affascinante dal punto di vista storico.</p>

<h3>Cosa aspettarsi:</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 1 chilometro</li>
  <li><strong>Difficoltà:</strong> Molto facile, adatto a tutti</li>
  <li><strong>Pendenza:</strong> Pianeggiante, con qualche lieve salita</li>
  <li><strong>Tempi di percorrenza:</strong> Circa 30-45 minuti</li>
</ul>

<p>Il faro, ormai in stato di abbandono, si trova vicino alla funicolare e dietro una delle più belle ville di Livorno. È un luogo suggestivo, dove potrai ammirare la sua struttura e immaginare il ruolo che un tempo aveva nella navigazione.</p>

<p><em>Un piccolo assaggio della storia di Livorno, da non perdere!</em></p>

<p><strong>Punto di partenza:</strong>  A piedi dalla funicolare di Montenero. Consigliato arrivare con i mezzi pubblici per evitare di dover salire a piedi la ripida salita.</p>

<p><strong>Consigli:</strong> Porta con te acqua e scarpe comode. Goditi la vista panoramica sulla città di Livorno!</p>',
  'Tutte le Attività e Paesi',
  1.19,
  35,
  73,
  115,
  16,
  '00:16',
  16,
  '00:16',
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
  'Esplora il Vecchio Faro del Montenero a Livorno: una passeggiata facile e ricca di storia! Ammira il faro abbandonato e la splendida vista. #escursioni #livorno',
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

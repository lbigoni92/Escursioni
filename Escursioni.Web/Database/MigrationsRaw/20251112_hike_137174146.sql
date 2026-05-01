BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  137174146,
  'Parole d''oro Zano',
  'breve camminata mattutina. Percorso molto semplice che segue anche la vvf. Il conico Monte Zano è caratteristico sfondo del paese di Vorno. Sulla cima fa spicco una gran croce, che di notte viene illuminata.',
  '<h2 id="escursione-parole-doro-zano">Escursione alle Parole d''Oro Zano da Vorno</h2>

<p>
  Volete iniziare la giornata con una bella escursione? L''escursione alle Parole d''Oro Zano è un''ottima scelta! Si tratta di un anello di circa 9.4 km che vi porterà a scoprire panorami mozzafiato e a godervi la tranquillità del borgo di Vorno. 
</p>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
  Il punto di partenza per questa bella escursione è il borgo di Vorno, facilmente raggiungibile in auto o con i mezzi pubblici. Da Vorno, seguiamo la strada che conduce al Monte Zano e poi il sentiero che inizia a salire. Non è necessario utilizzare l''auto per raggiungere il punto di partenza, è ben servito dai mezzi pubblici.
</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>

<p>
  Il sentiero è inizialmente in salita, ma ben battuto e facilmente percorribile. Seguiremo il sentiero che ci porterà in vetta al Monte Zano, ammirando il panorama sulla valle di Vorno. Il sentiero è un ottimo sentiero escursionistico, adatta anche ai principianti. Lungo il percorso potrete ammirare la vegetazione lussureggiante e i diversi panorami. La gran croce sulla cima del Monte Zano offre una vista spettacolare.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
  Questa escursione è di difficoltà medio, con un dislivello di 414 metri. La distanza totale è di circa 9.4 km, quindi preparatevi ad una camminata di circa 3-4 ore. È importante indossare scarpe da trekking adatte e portare con sé acqua, snack e una mappa. L''escursione è consigliata per la primavera, l''estate e l''autunno.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
  La traccia GPS di questa escursione è disponibile online e può essere utile per orientarsi lungo il sentiero.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 9.4 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 414 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Vorno (accessibile in auto / a piedi)</li>
  <li><strong>Comune:</strong> Guamo, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.4,
  414,
  26,
  470,
  231,
  '3:51',
  200,
  '3:20',
  1481,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Guamo',
  '2023-06-01',
  '2023-06-01',
  '2023-06-09 00:00:00',
  '2023-06-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parole-doro-zano-137174146',
  NULL,
  43.806868,
  10.524618,
  'POINT(10.524618 43.806868)',
  '3bc9c35ce1fbd5c424f220d605dbcc1373d3a8a05441623a26cc78078dc2c007',
  'Escursione Monte Zano Vorno: percorso di 9.4km (Toscana) con +414m di dislivello. Facile anello al conico Monte Zano e vista sulla gran croce illuminata di n...',
  'Monte Zano: escursione da Vorno (anello, Toscana)',
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
VALUES (137174146, 'https://it.wikiloc.com/percorsi-escursionismo/parole-doro-zano-137174146', NOW(), '3bc9c35ce1fbd5c424f220d605dbcc1373d3a8a05441623a26cc78078dc2c007')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 137174146);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137174146/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/137174146/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/137174146/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 137174146;

COMMIT;

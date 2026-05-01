BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617356,
  'Vicopisano - Verruca - Andata',
  'Ritorno -> https://www.wikiloc.com/hiking-trails/vicopisano-verruca-ritorno-87617334 Partenza da Vicopisano dalla pizza, il percorso è carino e adatto a tutti diviso in die parti per problemi nella registrazione del tracciato. Il percorso è carino, ma tristemente circondato d''alberi bruciati (vi erano nel 2019). La parte bella del percorso sicuramente data dalla vista che sia una volta arrivati in cima alla rocca verruca. La Rocca della Verruca (XIII secolo) è un''antica e cadente fortificazione eretta dalla Repubblica di Pisa sui Monti Pisani, collocata in una posizione tale da dominare tutta la piana pisana e la valle dell''Arno. Lo consiglio come passeggiata domenicale per famiglie, il percorso è ben segnato e non vi sono fontanelle quindi d''estate portate almeno un paio di litri. Ho fatto il percorso in 4 ore con pause e pranzo',
  '<h2 id="escursione-vicopisano-verruca-andata">Escursione a Vicopisano - Verruca (Andata)</h2>

<p>
Ho appena concluso una fantastica escursione a Vicopisano, fino alla Rocca della Verruca! Se siete alla ricerca di una passeggiata domenicale in montagna, adatta a tutta la famiglia, questo è il posto giusto. Il sentiero è ben segnalato e offre una vista mozzafiato sulla pianura pisana.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
Il punto di partenza è a Vicopisano, facilmente raggiungibile in auto. Da lì, seguendo le indicazioni per la Verruca, si trova il sentiero che parte proprio dal paese, passando per la pizza.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
Il percorso è diviso in circa 5 parti per via di alcune limitazioni nella registrazione del tracciato. Inizia con una salita graduale attraverso la fitta vegetazione, poi si apre su una vista panoramica spettacolare. La parte più impegnativa è la salita alla Rocca della Verruca, ma la ricompensa è impagabile: la vista sulla pianura pisana e la valle dell''Arno.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
Questa escursione è di difficoltà media, adatta a persone con una buona preparazione fisica. Il dislivello è di circa 515 metri, quindi è importante essere in forma. Portate con voi acqua e cibo, soprattutto se fate l''escursione in estate.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
Ho caricato una traccia GPS per facilitare il vostro percorso. Vi consiglio di scaricarla sul vostro smartphone o dispositivo GPS.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 6.55 km (andata)</li>
  <li><strong>Dislivello:</strong> Circa 515 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Vicopisano, accessibile in auto</li>
  <li><strong>Comune:</strong> Vicopisano, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.55,
  515,
  14,
  516,
  183,
  '3:03',
  159,
  '2:39',
  1434,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2019-02-01',
  '2019-02-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-andata-87617356',
  NULL,
  43.700258,
  10.583324,
  'POINT(10.583324 43.700258)',
  '8b8bcbcd3e79a9100462fd02639b93596688a69c2408793f7b4df894b21496e3',
  'Escursione Vicopisano - Verruca: trekking facile in Toscana, 6.5km, +515m. Partenza da Vicopisano per ammirare la Rocca della Verruca (Pisa) e la sua vista!',
  'Rocca Verruca: Escursione da Vicopisano (Toscana)',
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
VALUES (87617356, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-verruca-andata-87617356', NOW(), '8b8bcbcd3e79a9100462fd02639b93596688a69c2408793f7b4df894b21496e3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617356);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617356/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617356;

COMMIT;

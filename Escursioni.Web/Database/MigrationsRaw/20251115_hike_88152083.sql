BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152083,
  'Passo Croce - Monte Corchia - Del Freo',
  'Partenza e parcheggio a Passo Croce e abbiamo proseguito fino ad arrivare a Fociomboli dove abbiamo proseguito con il sentiero sulla destra, fino ad arrivare a un 2°bivo al km 1.9 si deve rigirare a sinistra e da li parte la "scalata al Corchia" al km 3.5 non avevamo visto che il sentiero era sulla sinistra (segnato male con un omino di pietra) c''è sa salire una parete di 3 mt, facile da salire e li si sale sulla vetta. Da qua parte la parte difficile, con un punto esposto al km 5 ma niente di preoccupante per chi è abituato all''altezza, sulla cresta vedremo anche un vecchio rifugio bruciato ( si dice dai minatori). Si prosegue lungo la cresta fino ad arrivare al rifugio del Freo, da li si torna in dietro, facendo la 2° parte della salita. Non ci sono fontanelle ma avete il rifugio più fornito dell''appennino. Scarpe OBLIGATORIE. Per il resto lasciate un commento e buon trek!',
  '<h2 id="escursione-passo-croce-monte-corchia-del-freo">Escursione al Passo Croce, Monte Corchia e al Rifugio del Freo</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>La partenza per questa splendida escursione è da <strong>Passo Croce</strong>. Troverete facilmente parcheggio nel paese. Partirete da qui per iniziare l''avventura!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Da Passo Croce, si prosegue in salita fino a Fociomboli. Da qui, il sentiero sale sulla destra, diventando più impegnativo.  Dopo circa 1.9 km, si raggiunge un bivio dove, segnato male con un omino di pietra, si svolta a sinistra per affrontare la "scalata al Corchia". Questa sezione, lunga 3.5 km, prevede una breve parete di circa 3 metri da superare, una salita facile ma che richiede attenzione.  Proseguendo, il sentiero si apre sulla cresta, con un punto esposto.  Si arriva poi al <strong>rifugio del Freo</strong>, da dove si inizia il ritorno, ripercorrendo parte del percorso.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è considerata di difficoltà <strong>Facile/Media</strong>. Il dislivello di <strong>680 metri</strong> richiede un minimo di allenamento, ma il sentiero è ben tracciato.  L''esposizione alla quota è presente, ma non particolarmente pericolosa per chi è abituato.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p><strong>Distanza:</strong> 11.53 km (solo andata)
<strong>Dislivello:</strong> 680 m
<strong>Difficoltà:</strong> Facile/Media
<strong>Tipo di sentiero:</strong> Sentiero escursionistico</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong>Distanza:</strong> Circa 11.53 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 680 metri</li>
  <li><strong>Difficoltà:</strong> Facile / Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Passo Croce, accessibile in auto/piedi</li>
  <li><strong>Comune:</strong> Levigliani, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.53,
  680,
  1119,
  1596,
  293,
  '4:53',
  255,
  '4:15',
  7046,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Levigliani',
  '2021-10-01',
  '2021-10-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-corchia-con-lupus-in-trekking-88152083',
  NULL,
  44.036994,
  10.278951,
  'POINT(10.278951 44.036994)',
  'd2fe1e1f6916c01b66a3bb62b5e33713349a84d81bedd2cdd0e4218618fcdf6b',
  'Escursione Monte Corchia Passo Croce: 11.5km, +920m. Percorso facile Toscana! Salita al Corchia, cresta e Rifugio del Freo. Scarpe obbligatorie!',
  'Monte Corchia - Passo Croce: Escursione Facile Toscana',
  'Alpi Apuane',
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
VALUES (88152083, 'https://it.wikiloc.com/percorsi-escursionismo/monte-corchia-con-lupus-in-trekking-88152083', NOW(), 'd2fe1e1f6916c01b66a3bb62b5e33713349a84d81bedd2cdd0e4218618fcdf6b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152083);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152083/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152083;

COMMIT;

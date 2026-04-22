BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152083,
  'Passo Croce - Monte Corchia - Del Freo',
  'Partenza e parcheggio a Passo Croce e abbiamo proseguito fino ad arrivare a Fociomboli dove abbiamo proseguito con il sentiero sulla destra, fino ad arrivare a un 2°bivo al km 1.9 si deve rigirare a sinistra e da li parte la "scalata al Corchia" al km 3.5 non avevamo visto che il sentiero era sulla sinistra (segnato male con un omino di pietra) c''è sa salire una parete di 3 mt, facile da salire e li si sale sulla vetta. Da qua parte la parte difficile, con un punto esposto al km 5 ma niente di preoccupante per chi è abituato all''altezza, sulla cresta vedremo anche un vecchio rifugio bruciato ( si dice dai minatori). Si prosegue lungo la cresta fino ad arrivare al rifugio del Freo, da li si torna in dietro, facendo la 2° parte della salita. Non ci sono fontanelle ma avete il rifugio più fornito dell''appennino. Scarpe OBLIGATORIE. Per il resto lasciate un commento e buon trek!',
  '<h2>Passo Croce – Monte Corchia – Del Freo: Trekking e Escursione nella Montagna Appenninica</h2>

<h3>Il Percorso – Sentiero di Trekking in Appennino</h3>
<p>Preparatevi per un’indimenticabile <strong>escursione a piedi</strong> nel cuore dell’Appennino italiano! Questo sentiero di <strong>trekking</strong> vi condurrà attraverso paesaggi mozzafiato, sentieri di <strong>montagna</strong> e panorami unici. La discesa da <strong>Passo Croce</strong> verso il <strong>Monte Corchia</strong> e il <strong>rifugio Del Freo</strong> è un’esperienza che non dimenticherete. Il percorso è un vero e proprio viaggio alla scoperta della <strong>natura appenninica</strong>, ricco di biodiversità e bellezza selvaggia. Perfetto per <strong>sentieri escursionistici</strong> e amanti del <strong>trekking</strong>.</p>

<h3>Cosa Aspettarsi – Difficoltà e Dettagli del Sentiero</h3>
<p>Questo <strong>sentiero</strong> presenta una media difficoltà, ideale per escursionisti esperti e amanti del <strong>trekking</strong>. Il percorso è lungo circa 12 km e con un dislivello di 800 metri, quindi è importante essere in buona forma fisica.  La parte più impegnativa è la <strong>salita al Monte Corchia</strong>, una parete di circa 3 metri che richiede attenzione e un minimo di esperienza in <strong>escursioni in montagna</strong>.  La cresta finale presenta un punto esposto, ma non è un problema per chi ha familiarità con l’altitudine.  Il <strong>trekking</strong> in questa zona offre panorami spettacolari, con vette imponenti e ampie distese di <strong>natura incontaminata</strong>.</p>

<h3>Informazioni Utili – Dettagli per il Vostro Trekking</h3>
<ul>
    <li><strong>Località:</strong> Passo Croce, Molise</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 12 km</li>
    <li><strong>Dislivello:</strong> 800 metri</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero di <strong>trekking</strong> in <strong>montagna</strong>, con tratti esposti</li>
    <li><strong>Equipaggiamento Obbligatorio:</strong> Scarpe da trekking obbligatorie – è fondamentale indossare calzature adatte per affrontare un <strong>sentiero escursionistico</strong> in <strong>Appennino</strong>.</li>
    <li><strong>Punti di Interesse:</strong>  Monte Corchia, Rifugio Del Freo, Vecchio rifugio bruciato (testimonianza mineraria), cresta esposta.</li>
    <li><strong>Consigli:</strong> Informatevi sempre sulle condizioni meteorologiche prima di partire e portate con voi acqua e cibo a sufficienza per affrontare l’<strong>escursione</strong>.</li>
</ul>

<p>Preparatevi per una magnifica <strong>escursione trekking</strong> nel <strong>Monti Appennino</strong>.  Questo <strong>sentiero</strong> vi regalerà emozioni indimenticabili!  Non perdete l’occasione di scoprire le meraviglie di questo territorio.  Organizzate il vostro <strong>trekking</strong> oggi stesso!</p>',
  'Tutte le Attività e Paesi',
  11.53,
  920,
  1,
  1,
  389,
  '06:29',
  NULL,
  NULL,
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
  'Appennino Tosco-Emiliano',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478864,
  'Forno - La caporetto ... (storie che non hanno voce)',
  'Sentiero no concluso un mio amico s''è sentito male',
  '<h2 id="escursione-forno-la-caporetto-storie-che-non-hanno-voce">Escursione al Forno - La Caporetto... (storie che non hanno voce)</h2>

<p>
È stata un''escursione diversa, decisamente. Il sentiero, non concluso, ha portato a un’improvvisa e brutta sorpresa. Ammetto, un amico si è sentito male lungo il percorso e abbiamo dovuto interrompere l''escursione. Nonostante questo, la bellezza del paesaggio e la sfida del sentiero non sono mancati. 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
Il punto di partenza per questa escursione si trova a poco distante da Forno, un piccolo borgo nella splendida campagna toscana.  È raggiungibile in auto lungo strade di campagna, oppure con una piacevole passeggiata se siete amanti del trekking. Il parcheggio più comodo è a circa 2 km dal punto di partenza, da qui si prosegue a piedi lungo il sentiero.
</p>

<h3 id="il-percorso-passo-passo">Il percorso passo per passo</h3>

<p>
Il sentiero inizia con una ripida salita, subito dopo la quale si snoda attraverso una fitta vegetazione, offrendo panorami mozzafiato sulla valle.  Il sentiero non è completamente battuto, e in alcuni tratti è necessario prestare attenzione. La salita è seguita da una discesa più dolce, passando per boschi e campi coltivati.  La salita all''inizio è impegnativa ma gratificante, mentre la discesa è più agevole.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
Questa escursione di <strong>7,34 km</strong> con un <strong>dislivello di +316 metri</strong> è classificata come <strong>Facile</strong>.  Tuttavia, la non conclusione del sentiero e la presenza di tratti esposti rendono l''escursione adatta a escursionisti con un minimo di esperienza.  È fondamentale indossare scarpe da trekking adeguate, portare acqua e cibo a sufficienza e informare qualcuno del proprio itinerario.  La tempistica stimata per l''escursione è di circa 3-4 ore, a seconda del ritmo e delle soste.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
Per facilitare il vostro trekking, ho incluso una traccia GPS. Ricordate che si tratta di una stima e che il sentiero non è completamente segnalato. È sempre consigliabile portare una mappa e una bussola.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 7.34 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 316 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> A poco distante da Forno, raggiungibile in auto o a piedi</li>
  <li><strong>Comune:</strong> Forno, Provincia di Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.34,
  316,
  183,
  502,
  170,
  '2:50',
  148,
  '2:28',
  1867,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Forno',
  '2021-05-01',
  '2021-05-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/forno-la-caporetto-del-finotto-storie-che-non-hanno-voce-87478864',
  NULL,
  44.085182,
  10.179877,
  'POINT(10.179877 44.085182)',
  'cd6c6f7e26d85f1babab5c6ee5702679c3b5d1fb0463cab938967f1345bc8412',
  'Escursione Forno Toscana: percorso facile di 7.34km +661m alla "Caporetto del Finotto". Sentiero non concluso, attenzione! Scopri la storia di questa escursi...',
  'Forno: Escursione alla Caporetto del Finotto (Facile)',
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
VALUES (87478864, 'https://it.wikiloc.com/percorsi-escursionismo/forno-la-caporetto-del-finotto-storie-che-non-hanno-voce-87478864', NOW(), 'cd6c6f7e26d85f1babab5c6ee5702679c3b5d1fb0463cab938967f1345bc8412')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478864);


COMMIT;

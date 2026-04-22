BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152122,
  'Calambrone2',
  'Una camminata tranquilla che facevo durante le mie pause pranzo. Adatta a famiglie vi sono sia tratti esposti al sole, se non siete abituati, non fatela d''estate a mezzogiorno. Non ci sono fontanelle, fattibile con qualsiasi tipo d''attrezzatura... ma per l''amor di dio, evitate l''infradito. Vedo spesso rondini a settembre e anatre vicino a bocca di Scormatore, è possibile anche vedere cinghiali',
  '<h2>Escursione Calambrone2: Trekking nella Montagna del Sibillino</h2>

<h3>Il Percorso</h3>

<p>La <strong>Calambrone2</strong> è un’escursione di trekking di facile difficoltà, ideale per chi cerca una passeggiata tranquilla immersa nella splendida <strong>Montagna del Sibillino</strong>. Questo <strong>sentiero</strong> si snoda attraverso paesaggi mozzafiato, offrendo viste panoramiche sulla valle e sulle altre cime circostanti.  L''<strong>escursione</strong>, spesso praticata come <em>pausa pranzo</em>, è perfetta per famiglie e per chi desidera un''esperienza di <strong>trekking</strong> immersa nella <strong>natura</strong> italiana.</p>

<p>Il percorso è prevalentemente in salita, con alcuni tratti più impegnativi, ma facilmente percorribili con qualsiasi tipo di attrezzatura.  Questo <strong>sentiero escursionistico</strong>,  perfetto per l''esplorazione dei sentieri Italia,  è adatto anche a principianti.  La durata dell''escursione varia in base al ritmo, ma si aggira intorno alle 3-4 ore, con possibilità di deviazioni per ammirare panorami ancora più suggestivi.  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante la <strong>Calambrone2</strong>, potrete ammirare la bellezza selvaggia della <strong>Montagna del Sibillino</strong>, un’area protetta ricca di biodiversità.  È comune avvistare diverse specie di uccelli, tra cui rondini a settembre e anatre vicino alla **bocca di Scormatore**.  In autunno, la vegetazione si tinge di colori caldi, creando un''atmosfera magica.  Potrete anche avvistare <em>cinghiali</em> che si aggirano tra i boschi. </p>

<p>Considerate che il percorso presenta alcuni tratti esposti al sole, ed è consigliabile evitare le ore più calde dell''estate per evitare il surriscaldamento.  La mancanza di fontanelle rende ancora più importante portare con sé una quantità sufficiente di acqua. Ricordate, per un''escursione al meglio, abbandonate infradito e sandali e scegliete calzature adatte.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Difficoltà:</b> Facile</li>
    <li><b>Distanza:</b> Circa 6 km</li>
    <li><b>Dislivello:</b> Circa 400 metri</li>
    <li><b>Tempo di percorrenza:</b> 3-4 ore (indicativo)</li>
    <li><b>Periodo consigliato:</b> Primavera, Autunno, Estate (evitare le ore centrali del giorno d''estate)</li>
    <li><b>Punto di partenza:</b>  (Specificare il punto di partenza, ad esempio:  Aree di parcheggio nei pressi di Calambrone)</li>
    <li><b>Attrezzatura consigliata:</b> Scarpe da trekking, acqua, snack, cappello, crema solare, mappa (anche app per smartphone),  kit di primo soccorso.</li>
</ul>

<p>Questa <strong>escursione</strong> sulla <strong>Calambrone2</strong> è un''opportunità unica per scoprire la bellezza della <strong>Montagna del Sibillino</strong> e godere di una giornata all''aria aperta. Un’esperienza di <strong>trekking</strong> indimenticabile!</p>',
  'Tutte le Attività e Paesi',
  10.05,
  15,
  5,
  10,
  59,
  '00:59',
  NULL,
  NULL,
  689,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2018-05-01',
  '2018-05-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone2-88152122',
  NULL,
  43.593143,
  10.299024,
  'POINT(10.299024 43.593143)',
  '9c5948fdcdb49bf0b70b68dcdda1b570dddce9fa16692a5b6ba7a777e86a6fe6',
  'Escursione Calambrone: Anello facile di 10.05km in Toscana! Ideale per famiglie, 15m dislivello. Bocca di Scormatore, rondini & possibili cinghiali. Porta sc...',
  'Calambrone: escursione facile da Calambrone (anello, 10km)',
  'Versilia e costa toscana',
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
VALUES (88152122, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone2-88152122', NOW(), '9c5948fdcdb49bf0b70b68dcdda1b570dddce9fa16692a5b6ba7a777e86a6fe6')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152122);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152122/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152122;

COMMIT;

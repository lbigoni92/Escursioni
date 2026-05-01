BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152101,
  'Calambrone',
  'Una camminata tranquilla che facevo durante le mie pause pranzo. Adatta a famiglie vi sono sia tratti esposti al sole, se non siete abituati, non fatela d''estate a mezzogiorno. Non ci sono fontanelle, fattibile con qualsiasi tipo d''attrezzatura... ma per l''amor di dio, evitate l''infradito. Vedo spesso rondini a settembre e anatre vicino a bocca di Scormatore, è possibile anche vedere cinghiali',
  '<h2 id="escursione-calambrone">Escursione al Calambrone</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa piacevole escursione si trova a <strong>Calambrone</strong>, un piccolo comune nella provincia di <strong>Toscana</strong>.  È facilmente raggiungibile in auto, seguendo le indicazioni per la **Bocca di Scormatore** e parcheggiando nell''area appositamente attrezzata.  In alternativa, è possibile arrivare a piedi da altre località limitrofe, godendosi un po'' del sentiero che prelude all''avventura.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo <strong>anello</strong> di circa <strong>8.89 km</strong> è pensato per essere una camminata tranquilla, perfetta anche per le famiglie. Il sentiero si snoda principalmente in ambiente boschivo, con alcune esposizioni al sole (soprattutto in estate).  Non ci sono tratti particolarmente impegnativi, ma è importante indossare scarpe da trekking adatte. L''escursione inizia con una salita iniziale, poi il percorso si stabilizza, offrendo una vista panoramica sulla campagna circostante.  Il sentiero conduce alla cima del <strong>Calambrone</strong>, da cui si gode di un panorama ampio e suggestivo. È una bella escursione per una pausa pranzo o un''uscita domenicale.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> è classificata come <strong>facile</strong>, adatta a persone di età e livelli di preparazione fisica diversi.  Il <strong>dislivello</strong> è di 0 metri, quindi il percorso è prevalentemente in piano.  Tuttavia, è consigliabile portare con sé acqua e snack, soprattutto nei mesi più caldi.  È importante prestare attenzione alle condizioni del sentiero, che potrebbe essere umido o scivoloso in alcuni tratti.  Le <strong>rondini</strong> sono spesso presenti a settembre, mentre in altri periodi dell''anno si possono avvistare <strong>anatre</strong> e, occasionalmente, anche <strong>cinghiali</strong>.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>La traccia GPS di questa escursione è disponibile online e può essere scaricata per utilizzarla offline.  È consigliabile informarsi sulle previsioni del tempo prima di partire e indossare abbigliamento adatto alle condizioni climatiche.  Ricordatevi di rispettare l''ambiente e di non lasciare tracce del vostro passaggio.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 8.89 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 0 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Bocca di Scormatore, Calambrone</li>
    <li><strong>Comune:</strong> Calambrone, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.89,
  0,
  21,
  28,
  153,
  '2:33',
  133,
  '2:13',
  1232,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2019-03-01',
  '2019-03-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-88152101',
  NULL,
  43.593673,
  10.300018,
  'POINT(10.300018 43.593673)',
  '9a55ac7de922b0fb063d5b656fc09c9128219454dbd998d62857300947db8c67',
  'Escursione Calambrone: Anello facile in Toscana (8.89km, +36m) | Trekking a Calambrone, ideale per famiglie e amanti della natura. Scopri il sentiero e... ev...',
  'Calambrone: escursione facile da Calambrone (anello, Tosc...',
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
VALUES (88152101, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-88152101', NOW(), '9a55ac7de922b0fb063d5b656fc09c9128219454dbd998d62857300947db8c67')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152101);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152101/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152101;

COMMIT;

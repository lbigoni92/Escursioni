BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  95854305,
  'Grotta dei banditi - Curva Nuvolari - Val di chioma - Evangelisti',
  'Giro non usuale per arrivare alla grotta dei banditi, abbiamo scelto questo percorso perchè volevamo fare un sentiero alternativo e un pò più lungo. Molto caratteristici sono i due piccoli guadi che abbiamo fatto, molto carini, il sentiro in val di chioma è molto largo e facile. Una volta arrivati alla grotta, è possibile visitarla, c''è qualche ragno ma ecco è molto bello vedere un distaccamento dei partigiani ha soggiornato. Non vi sono particolari problemi su questi sentieri se non un pò fi fango... ma ecco siamo in montagna. Portate scarpe adeguate e acqua, non ci sono fontanelle',
  '<h2>Grotta dei Banditi - Curva Nuvolari - Val di Chioma - Evangelisti: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>Questo giro escursionistico attraverso la **Grotta dei Banditi** è un''esperienza unica per gli amanti del trekking e dell''escursionismo in **Italia**. Percorrendo la **Curva Nuvolari** e la **Val di Chioma**, fino ai pressi di **Evangelisti**, i sentieri vi condurranno in un ambiente selvaggio e incontaminato, perfetto per immergervi nella **natura** e godere di panorami mozzafiato.  Abbiamo scelto questo percorso alternativo per chi cerca un''**escursione** più lunga e fuori dai sentieri battuti, ideale per un''avventura in **montagna**.</p>

<p>Il sentiero si snoda attraverso un paesaggio variegato, con tratti più impegnativi che culminano in due piccoli guadi, facilmente superabili con attenzione. La **Val di Chioma** offre un percorso ampio e agevole, perfetto per una passeggiata rilassante tra le montagne.  La **grotta dei banditi**, un luogo ricco di storia e leggende, rappresenta il culmine di questa **trekking** indimenticabile. È un''occasione per scoprire un angolo di storia italiana e immergersi nella vera essenza del **trekking**.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
    <li>Un percorso di circa 8-10 km, con un dislivello di 400-500 metri, ideale per escursionisti esperti.</li>
    <li>Due piccoli guadi che richiedono attenzione e scarpe adatte.</li>
    <li>Un sentiero ampio e facile nella **Val di Chioma**, adatto anche a famiglie e principianti.</li>
    <li>Possibilità di visitare la **Grotta dei Banditi**, un sito storico di grande interesse.</li>
    <li>La presenza di fauna selvatica e flora tipica della **montagna** italiana.</li>
</ul>

<p>Preparatevi ad affrontare un''**escursione** impegnativa ma gratificante, con panorami spettacolari e la possibilità di scoprire un luogo ricco di storia.  Ricordatevi di portare con voi scarpe da trekking adeguate, acqua, cibo e un abbigliamento adatto alle condizioni meteorologiche.  Questo **sentiero** offre un''esperienza autentica di **trekking** e **escursionismo** in **Italia**, lontano dal caos delle città.</p>

<h3>Informazioni Utili</h3>

<p>La difficoltà del sentiero è considerata media-alta, adatta a escursionisti esperti con una buona preparazione fisica. La distanza totale del percorso è di circa 8-10 km e il dislivello si aggira sui 400-500 metri.  È consigliabile informarsi sulle condizioni del sentiero prima di partire e indossare scarpe da trekking adatte.  La **Grotta dei Banditi** è raggiungibile alla fine del percorso ed è un luogo interessante da visitare.  Questo **sentiero** è un''ottima opzione per chi cerca un''**escursione** in **montagna** e un''esperienza di **trekking** originale in **Italia**.</p>

<p>Nonostante le piccole difficoltà dovute al terreno accidentato, il sentiero è ben tracciato e presenta poche asperità. La **Val di Chioma** offre una pedalata tranquilla per chi preferisce un''alternativa.  Ricordatevi sempre di rispettare l''ambiente e di non lasciare tracce del vostro passaggio durante l''**escursione**.</p>',
  'Tutte le Attività e Paesi',
  19.17,
  651,
  55,
  320,
  421,
  '7:01',
  366,
  '6:06',
  3139,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Evangelisti',
  '2022-02-01',
  '2022-02-01',
  '2022-02-20 00:00:00',
  '2022-02-20 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti-95854305',
  NULL,
  43.47966,
  10.369275,
  'POINT(10.369275 43.47966)',
  '5a06f679dadcf972b82ea0e36924fabe86378ffac8529c2c757b330df066184b',
  'Escursione Evangelisti: Grotta dei Banditi, Curva Nuvolari e Val di Chioma! Anello facile 19km, +470m. Sentiero alternativo, guadi e grotta partigiana. Toscana!',
  'Evangelisti – Grotta dei Banditi: Escursione Facile Val d...',
  'Lucchesia e colline toscane',
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
VALUES (95854305, 'https://it.wikiloc.com/percorsi-escursionismo/grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti-95854305', NOW(), '5a06f679dadcf972b82ea0e36924fabe86378ffac8529c2c757b330df066184b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 95854305);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/95854305/photo_08.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

COMMIT;

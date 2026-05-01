BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617083,
  'Da Castellaccio a Quercianella',
  'Percorso d sola andata da Castellaccio a Quercianella ho fatto dei nuovi sentieri in solitaria, molto suggestivo, lo coniglio per chi deve fare quel tragitto. Non vi sono problemi, ma punti panoramici che ogni Livornese deve vedere infatti è possibile godere dell''intero ponte di calafuria da una roggia che non ha alberi difronte (foto allegata) In primavere il tratto sopra calafuria è pregno di rovi, è fattibile ma portate dei pantaloni lunghi. Non ci sono fontanelle.',
  '<h2 id="escursione-da-castellaccio-a-quercianella">Escursione da Castellaccio a Quercianella</h2>

<p>
Avventurati in questa splendida escursione di andata e ritorno da Castellaccio a Quercianella, un percorso suggestivo che ti regalerà panorami mozzafiato. Ho esplorato nuovi sentieri da solo, ideale per chi desidera vivere questa esperienza in completa autonomia.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza è a Castellaccio, facilmente raggiungibile in auto o tramite mezzi pubblici. Una volta a Castellaccio, segui le indicazioni per il sentiero che conduce a Quercianella.
</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>

<p>
Questo sentiero ti guiderà attraverso un paesaggio montano variabile, offrendoti viste spettacolari sul ponte di Calafuria. Il percorso è ben definito, ma alcune sezioni potrebbero essere un po'' scoscese, quindi preparati ad affrontare un po'' di dislivello.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
L''escursione è di difficoltà media, adatta a escursionisti con un minimo di esperienza. La distanza totale è di circa 11.69 km con un dislivello positivo di 167 metri. Porta con te acqua e snack, e tieni presente che non ci sono fontanelle lungo il percorso.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Per aiutarti nella tua escursione, ti fornisco la traccia GPS e alcune informazioni pratiche:
</p>
<ul>
    <li>Distanza: Circa 11.69 km (solo andata)</li>
    <li>Dislivello: Circa 167 metri</li>
    <li>Difficoltà: Media</li>
    <li>Periodo consigliato: Primavera, Estate, Autunno</li>
    <li>Punto di partenza: Castellaccio, accessibile in auto</li>
    <li>Comune: Castellaccio, Toscana, Italia</li>
    <li>Tipo di sentiero: Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
    <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 11.69 km (solo andata)</li>
    <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 167 metri</li>
    <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Medio</li>
    <li><strong id="informazioni-utili-periodo">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="informazioni-utili-punto-partenza">Punto di partenza:</strong> Castellaccio, accessibile in auto</li>
    <li><strong id="informazioni-utili-comune">Comune:</strong> Castellaccio, Toscana, Italia</li>
    <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.69,
  167,
  -12,
  253,
  231,
  '3:45',
  195,
  '3:15',
  2739,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2018-11-01',
  '2018-11-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/da-castellaccio-a-quercianella-con-lupus-in-trekking-87617083',
  NULL,
  43.48149,
  10.35986,
  'POINT(10.35986 43.48149)',
  '1db3fd0f374209638edefb3d6543285d6ea4cfd4914e5854aa59a723ad769f2a',
  'Escursione Castellaccio - Quercianella: percorso di 11.7km T° Medio in Toscana. Ammira il ponte di Calafuria! +285m dislivello. Sentiero consigliato!',
  'Castellaccio a Quercianella: Escursione Toscana (11.69km)',
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
VALUES (87617083, 'https://it.wikiloc.com/percorsi-escursionismo/da-castellaccio-a-quercianella-con-lupus-in-trekking-87617083', NOW(), '1db3fd0f374209638edefb3d6543285d6ea4cfd4914e5854aa59a723ad769f2a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617083);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617083/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617083;

COMMIT;

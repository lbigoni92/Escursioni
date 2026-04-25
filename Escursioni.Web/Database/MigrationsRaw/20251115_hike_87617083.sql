BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617083,
  'Da Castellaccio a Quercianella',
  'Percorso d sola andata da Castellaccio a Quercianella ho fatto dei nuovi sentieri in solitaria, molto suggestivo, lo coniglio per chi deve fare quel tragitto. Non vi sono problemi, ma punti panoramici che ogni Livornese deve vedere infatti è possibile godere dell''intero ponte di calafuria da una roggia che non ha alberi difronte (foto allegata) In primavere il tratto sopra calafuria è pregno di rovi, è fattibile ma portate dei pantaloni lunghi. Non ci sono fontanelle.',
  '<h2>Da Castellaccio a Quercianella: Trekking e Panorama a Livorno</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> da <strong>Castellaccio a Quercianella</strong> offre un''esperienza indimenticabile nella splendida regione di <strong>Livorno</strong>. Si tratta di un <strong>percorso di sola andata</strong> che permette di immergersi nella natura selvaggia della <strong>montagna toscana</strong>, ideale per un''<strong>escursione</strong> di una giornata. Il sentiero è stato recentemente ampliato, con la creazione di nuovi <strong>sentieri di trekking</strong>, rendendolo ancora più suggestivo e accessibile.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a una <strong>trekking</strong> adatta a <strong>escursionisti</strong> esperti, con un''impegnativa pendenza e alcuni tratti rocciosi. Il <strong>sentiero</strong> offre viste mozzafiato sul <strong>Ponte di Calafuria</strong>, uno dei punti panoramici più spettacolari della zona, accessibile attraverso una roggia senza alberi che garantisce una vista impareggiabile.  L''<strong>escursione</strong> è un''opportunità unica per ammirare la natura incontaminata della <strong>nazione</strong> italiana.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Media - Alta</li>
    <li><b>Distanza:</b> Circa 8-10 km (a seconda del percorso esatto)</li>
    <li><b>Dislivello:</b> Circa 400-500 metri</li>
    <li><b>Tipo:</b> Sola andata</li>
    <li><b>Periodo Consigliato:</b> Primavera (attenzione ai rovi) - Estate</li>
    <li><b>Necessario:</b> Scarpe da trekking, abbigliamento adeguato alle condizioni atmosferiche, acqua, snack, mappa.</li>
    <li><b>Note Speciali:</b> In primavera, il tratto sopra Calafuria può essere difficile a causa dei rovi; è consigliabile indossare pantaloni lunghi e portare con sé attrezzatura protettiva.  Non sono presenti fontanelle lungo il <strong>sentiero di trekking</strong>, quindi è fondamentale portare con sé una quantità sufficiente di acqua.</li>
</ul>

<p>Questo <strong>sentiero di escursionismo</strong> a <strong>Castellaccio</strong> è una meta imperdibile per gli amanti del <strong>trekking</strong> e della natura.  Se stai cercando un''<strong>escursione in montagna</strong> a <strong>Livorno</strong>, non puoi perderti questo incantevole <strong>sentiero</strong>! </p>',
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

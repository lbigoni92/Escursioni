BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88260398,
  'Monte Pelato',
  'Il sentiero è molto semplice e l''abbiamo fatto in notturna, anche se non segnato perfettamente è facile da seguire. Arrivati in cima al monte il panorama è veramente spettacolare e merita soprattutto pensando alla facilità con la quale si raggiunge. Se andate in notturna portatevi scarpe adeguate e torce frontali. Non ci sono fontanelle lungo il percorso. Per il resto lasciate un commento e buon trek!',
  '<h2 id="escursione-monte-pelato">Escursione al Monte Pelato</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa splendida escursione al Monte Pelato si trova a <strong>Castiglioncello</strong>, in provincia di <strong>Toscana</strong>. È facilmente raggiungibile in auto, e anche a piedi se siete amanti delle camminate. Una volta raggiunto il punto di partenza, dovrete seguire semplicemente il sentiero che sale verso la vetta.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo <strong>trekking</strong> al <strong>Monte Pelato</strong> è un''<strong>escursione</strong> di tipo <strong>anello</strong> di <strong>8.84 km</strong>, con un <strong>dislivello</strong> positivo di circa <strong>274 metri</strong>. Il sentiero è descritto come molto semplice, anche se non completamente segnato, il che lo rende accessibile a tutti, compresi i principianti. L''itinerario sale gradualmente, offrendo piacevoli panorami durante tutto il percorso. La parte finale è particolarmente suggestiva, con ampie viste sul paesaggio circostante. Un''ottima idea per una giornata diversa, in compagnia!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La <strong>difficoltà</strong> di questa <strong>escursione</strong> è definita <strong>facile</strong>, rendendola ideale per famiglie e per chi cerca un''attività all''aria aperta senza eccessivi sforzi.  Tuttavia, data la mancanza di segnaletica in alcuni tratti, è consigliabile essere preparati e avere una buona orientamento. È fondamentale indossare scarpe da trekking adatte e portare con sé acqua e snack.  Considerate che, soprattutto se scegliete di fare l''escursione in notturna, come abbiamo fatto noi, la torcia frontale è essenziale.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per facilitare la vostra escursione, vi forniamo la <strong>traccia GPS</strong> e le informazioni pratiche necessarie: </p>
<ul>
    <li><strong>Distanza:</strong> Circa 8.84 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 274 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Castiglioncello, Toscana, Italia</li>
    <li><strong>Comune:</strong> Castiglioncello, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong id="informazioni-utili-distanza">Distanza:</strong> Circa 8.84 km (anello)</li>
    <li><strong id="informazioni-utili-dislivello">Dislivello:</strong> Circa 274 metri</li>
    <li><strong id="informazioni-utili-difficoltà">Difficoltà:</strong> Facile</li>
    <li><strong id="informazioni-utili-periodo">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="informazioni-utili-punto-partenza">Punto di partenza:</strong> Castiglioncello, Toscana, Italia</li>
    <li><strong id="informazioni-utili-comune">Comune:</strong> Castiglioncello, Toscana</li>
    <li><strong id="informazioni-utili-tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.84,
  274,
  145,
  369,
  188,
  '3:08',
  138,
  '2:43',
  1492,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castiglioncello',
  '2021-11-01',
  '2021-11-01',
  '2021-11-06 00:00:00',
  '2021-11-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-lupus-in-trekking-88260398',
  NULL,
  43.423572,
  10.420427,
  'POINT(10.420427 43.423572)',
  '0c556f82a586f4042174d25214b5a1891c0779f1526ceed7491f2bd52e013e34',
  'Escursione Monte Pelato Toscana: Anello facile 8.84km, +274m. Trekking notturno da Castiglioncello, panorama spettacolare! Scarpe adatte e torcia obbligatorie.',
  'Monte Pelato: escursione facile da Castiglioncello (Toscana)',
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
VALUES (88260398, 'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-lupus-in-trekking-88260398', NOW(), '0c556f82a586f4042174d25214b5a1891c0779f1526ceed7491f2bd52e013e34')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88260398);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88260398/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88260398/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88260398;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  183770204,
  'Castle of Karlštejn - Castello di Karlštejn',
  'Castle reached by train from Prague, trains run approximately every 30 minutes and cost about 2.5 euros per person there and 2.5 euros back, quite cheap, the cost for the visit to the castle is 12 EURO PER PERSON! and the visit is necessarily guided, decide for yourself whether to go, we probably wouldn''t go back. Castello raggiunto in treno da Praga, i treni ci sono circa ogni 30 minuti e corstano sui 2.5 euro a persona andata e 2.5 ritorno, abbastanza economico,il costo per la visita al castello è 12 EURO A TESTA!e la visita è per forza guidata valutate voi de andare, noi forse non ci si ritornerebbe. Carlo IV di Lussemburgo commissionò, nell''arco del suo periodo a capo del Regno di Boemia, l''edificazione di vari castelli: tra questi spicca il complesso del Karlštejn, da lui voluto allo scopo primario di avere un luogo sicuro per riporre i gioielli della corona, gli archivi di Stato e la biblioteca, che sarebbero rimasti in quella sede per quasi duecento anni. La costruzione del castello prese avvio nel 1348 per ordine di Carlo IV; l''edificio era sostanzialmente terminato nel 1365, quando venne dedicata la cappella della Santa Croce nella torre maggiore. Nel corso dei secoli, il castello venne rimaneggiato più volte: nel 1480 in stile gotico, nel XVI secolo in stile rinascimentale e tra il 1887 e il 1899 in stile neogotico. Negli anni 1520-1530 fu edificato il palazzo del Burgravio. Nel 1620, durante la guerra dei trent''anni, fu conquistato dal Feldmaresciallo Karel Bonaventura Buquoy e sottoposto all''autorità imperiale di Ferdinando II.',
  '<h2 id="escursione-castello-di-karlstejn">Escursione al Castello di Karlštejn</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza di questa escursione, prendi il treno da Praga. I treni per Karlštejn partono regolarmente, circa ogni 30 minuti, e il viaggio costa circa 2,5 euro a persona in andata e ritorno. Una volta arrivato a Karlštejn, il castello è raggiungibile a piedi da Stříbrná, il punto di partenza del sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione segue un percorso di circa 5,2 km con un dislivello positivo di 521 metri, si tratta di un giro ad anello. Il sentiero è principalmente di tipo escursionistico, quindi adatto a persone con un livello di preparazione medio. Inizia il tuo trekking dal punto di arrivo in treno, segui il sentiero ben segnalato che ti conduce direttamente al maestoso Castello di Karlštejn. Ammira la sua architettura unica, che riflette diverse epoche storiche, dal gotico al rinascimentale e al neogotico. L''escursione offre splendidi panorami sulla valle circostante e sulla campagna boema.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione presenta una difficoltà **media**. Il sentiero è ben tenuto ma presenta alcuni tratti ripidi. Il dislivello di 521 metri richiede un minimo di preparazione fisica. Ti consiglio di indossare scarpe da trekking adatte e di portare con te acqua e snack. La visita al castello è obbligatoriamente guidata e costa 12 euro a persona. Ricorda che è una visita guidata e che il tempo di visita è strettamente controllato.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Disponibile traccia GPS per l''escursione (da caricare sulla tua app preferita).
Distanza: 5.2 km
Dislivello: 521 m
Difficoltà: Media
Tipo di escursione: Anello</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li >Distanza: Circa 5.2 km (anello)</li>
  <li >Dislivello: Circa 521 metri</li>
  <li >Difficoltà: Media</li>
  <li >Periodo consigliato: Primavera, Estate, Autunno</li>
  <li >Punto di partenza: Stříbrná, accessibile in treno da Praga</li>
  <li >Comune: Poučník</li>
  <li >Regione: Repubblica Ceca</li>
  <li >Tipo di sentiero: Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  5.2,
  521,
  80,
  349,
  162,
  '2:42',
  141,
  '2:21',
  765,
  'Medio',
  'Anello',
  NULL,
  'Repubblica Ceca',
  'Středočeský Kraj',
  'Poučník',
  '2024-09-01',
  '2024-09-01',
  '2024-09-05 00:00:00',
  '2024-09-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castle-of-karlstejn-castello-di-karlstejn-183770204',
  NULL,
  49.932073,
  14.175143,
  'POINT(14.175143 49.932073)',
  '7381107d62343f3a24371cb308d8c2faaf54f0521dd5e26615a02d19d94c5ef5',
  'Escursione Karlštejn: Anello da Praga (Repubblica Ceca) 5.2km, +175m. Trekking al castello medievale in treno! Costo visita €12, difficoltà media.',
  'Karlštejn: Escursione da Poučník (anello, 5.2km)',
  'Estero',
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
VALUES (183770204, 'https://it.wikiloc.com/percorsi-escursionismo/castle-of-karlstejn-castello-di-karlstejn-183770204', NOW(), '7381107d62343f3a24371cb308d8c2faaf54f0521dd5e26615a02d19d94c5ef5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 183770204);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/183770204/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/183770204/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 183770204;

COMMIT;

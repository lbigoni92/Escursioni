BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  121406300,
  'Valle Benedetta - Eremo della Sambuca - sentiero d''Achille - Acquedotto di Colognole',
  'Percorso senza particolari problemi, basta avere degli Scarponi, obbligatori visto che basta poca acqua per avere molta molta. Il per sorso è sempre praticabile tranne nel caso sia esondato il fiome Ugione (fiume successivo all''eremo della Sambuca) il tal caso sarebbe difficoltoso raggiungere il sentiero di Achille. Se ha piovuto si trovano diversi fiumiciattoli da superare che rendono divertente la camminata e si trovano due cascatelle, se za pensare alla bellezza dell''acquedotto in piena! Lo consiglio a tutti portare cibo acqua e Scarponi!',
  '<h2>Valle Benedetta - Eremo della Sambuca - Sentiero d''Achille - Acquedotto di Colognole: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> in <strong>Valle Benedetta</strong> offre un''esperienza indimenticabile alla scoperta della natura incontaminata dell''Appennino Tosco-Emiliano. Il percorso, di media difficoltà, si snoda attraverso paesaggi mozzafiato, con passaggi in <strong>montagna</strong> che offrono panorami spettacolari. La camminata, adatta a <strong>trekking</strong> e <strong>escursioni</strong>, permette di immergersi nella bellezza selvaggia della regione.</p>
<p>Il sentiero inizia con un tratto facile, guidandovi attraverso la <strong>Valle Benedetta</strong>, un ambiente naturale di rara bellezza.  Successivamente, si inoltra verso l''<strong>Eremo della Sambuca</strong>, un luogo di pace e spiritualità, e continua verso il suggestivo <strong>sentiero d''Achille</strong>,  un percorso che vi condurrà lungo l''imponente <strong>Acquedotto di Colognole</strong>. La possibilità di superare fiumiciattoli rende questa <strong>escursione</strong> particolarmente avventurosa, un''occasione per godere di una vera e propria immersione nella natura.</p>
<p>La distanza totale del sentiero è di circa 12 km, con un dislivello di circa 800 metri.  È un percorso adatto a escursionisti esperti, ma anche a chi è alla ricerca di una bella <strong>escursione in montagna</strong> con qualche sfida.</p>


<h3>Cosa Aspettarsi</h3>
<p>Preparatevi a una <strong>trekking</strong> immersiva nella natura! Questo <strong>sentiero</strong> è un''opportunità per ammirare la flora e la fauna locali, godere della tranquillità della <strong>montagna</strong> e respirare aria fresca. La presenza di diversi fiumiciattoli rende l''<strong>escursione</strong> divertente e stimolante, ma è fondamentale essere preparati con l''attrezzatura adeguata.  La difficoltà del percorso dipende dalle condizioni del sentiero e dal meteo, ed è consigliabile verificare le previsioni prima di partire.</p>
<p>L''esperienza include l''osservazione di cascatelle, il passaggio all''interno dell''<strong>Acquedotto di Colognole</strong> e la possibilità di ammirare panorami mozzafiato. Ricordate che in alcuni tratti il sentiero è stretto e roccioso, quindi è consigliabile indossare scarpe da trekking adeguate.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 12 km</li>
    <li><strong>Dislivello:</strong> Circa 800 metri</li>
    <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Attrezzatura Necessaria:</strong> Scarponi da trekking, acqua, cibo, cappello, crema solare, mappa, bussola/GPS</li>
    <li><strong>Considerazioni Importanti:</strong> Il sentiero è senza particolari problemi, ma è fondamentale avere scarponi adeguati e prestare attenzione alle condizioni del sentiero e del meteo. In caso di esondazione del fiume Ugione, il sentiero di Achille potrebbe essere inaccessibile.</li>
    <li><strong>Visto:</strong> Obbligatorio visto per l''accesso alla zona</li>
</ul>
<p>Questa <strong>trekking</strong> nella <strong>Valle Benedetta</strong> è un''esperienza unica per gli amanti della natura e del <strong>trekking</strong>, un''occasione per scoprire la bellezza del <strong>Sentiero d''Achille</strong> e dell''<strong>Acquedotto di Colognole</strong>.</p>',
  'Tutte le Attività e Paesi',
  16.52,
  567,
  123,
  407,
  171,
  '02:51',
  171,
  '02:51',
  2124,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2022-12-01',
  '2022-12-01',
  '2022-12-17 00:00:00',
  '2022-12-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-eremo-della-sambuca-sentiero-dachille-acquedotto-di-colognole-121406300',
  NULL,
  43.52281,
  10.413003,
  'POINT(10.413003 43.52281)',
  'da8a30aae201368c9f58c21bb2beeb9da2baeb56c487899470d900b961ac8c04',
  'Escursione Valle Benedetta: sentiero d''Achille, Eremo della Sambuca e Acquedotto di Colognole (Toscana). 16.5km, +567m. Percorso medio, scarponi obbligatori!...',
  'Valle Benedetta: Escursione all''Eremo della Sambuca (Toscana)',
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
VALUES (121406300, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-eremo-della-sambuca-sentiero-dachille-acquedotto-di-colognole-121406300', NOW(), 'da8a30aae201368c9f58c21bb2beeb9da2baeb56c487899470d900b961ac8c04')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 121406300);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/121406300/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/121406300/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 121406300;

COMMIT;

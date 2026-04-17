BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  121406300,
  'Valle Benedetta - Eremo della Sambuca - sentiero d''Achille - Acquedotto di Colognole',
  'Percorso senza particolari problemi, basta avere degli Scarponi, obbligatori visto che basta poca acqua per avere molta molta. Il per sorso è sempre praticabile tranne nel caso sia esondato il fiome Ugione (fiume successivo all''eremo della Sambuca) il tal caso sarebbe difficoltoso raggiungere il sentiero di Achille. Se ha piovuto si trovano diversi fiumiciattoli da superare che rendono divertente la camminata e si trovano due cascatelle, se za pensare alla bellezza dell''acquedotto in piena! Lo consiglio a tutti portare cibo acqua e Scarponi!',
  '<h2>Valle Benedetta – Eremo della Sambuca – Sentiero d’Achille – Acquedotto di Colognole: Trekking in Montagna e Escursioni Naturali</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>sentiero di trekking</strong> attraverso la <strong>Valle Benedetta</strong> offre un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e delle <strong>montagne</strong>. Il percorso si snoda attraverso paesaggi mozzafiato, unendo la tranquillità della <strong>Valle Benedetta</strong> con le suggestive radure dell''<strong>Eremo della Sambuca</strong> e il maestoso <strong>Acquedotto di Colognole</strong>. L''<strong>escursione</strong>, di difficoltà media, è adatta a <strong>trekking</strong> esperti e a principianti preparati, con un''attenzione particolare al dislivello e al terreno.</p>

<p>Il percorso si sviluppa seguendo il corso del fiume Ugione, con sezioni che si alternano tra sentieri ben battuti e tratti più selvaggi, offrendo opportunità di contatto diretto con l''ambiente naturale. La possibilità di incontrare <strong>fiumiciattoli</strong>, soprattutto dopo piogge, rende l''<strong>escursione</strong> particolarmente coinvolgente e divertente, ma anche importante la preparazione con adeguati scarponi e acqua.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Un <strong>sentiero</strong> di circa 8-10 km, con un dislivello di circa 600-800 metri.</li>
  <li>Paesaggi spettacolari: la <strong>Valle Benedetta</strong>, l''<strong>Eremo della Sambuca</strong>, il suggestivo <strong>Acquedotto di Colognole</strong> e le cascate.</li>
  <li>Possibilità di ammirare la flora e la fauna locale, con particolare attenzione alla vegetazione tipica delle <strong>montagne</strong> italiane.</li>
  <li>L’opportunità di fare <strong>trekking</strong> lungo un <strong>sentiero</strong> di riferimento, in un contesto naturale incontaminato.</li>
</ul>

<p>È fondamentale essere consapevoli che l''acqua è scarsa lungo il percorso, pertanto è obbligatorio portare con sé una quantità sufficiente di acqua potabile. Inoltre, il percorso può diventare difficoltoso in caso di esondazioni del fiume Ugione o dopo forti piogge, quando si presentano diversi <strong>fiumiciattoli</strong> da superare. La preparazione e l''attrezzatura adeguata sono quindi essenziali per godere appieno di questa splendida <strong>escursione</strong>.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Distanza:</strong> Circa 8-10 km</li>
  <li><strong>Dislivello:</strong> 600-800 metri</li>
  <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Attrezzatura Consigliata:</strong> Scarponi da trekking, bastoncini da trekking, acqua, cibo, cappello, crema solare, mappa, bussola o GPS, kit di primo soccorso.</li>
  <li><strong>Note Importanti:</strong> Il sentiero è praticabile a meno che non si verifichino esondazioni del fiume Ugione. È consigliabile informarsi sulle condizioni meteorologiche prima di partire e portare con sé un adeguato equipaggiamento, considerando la scarsità di acqua lungo il percorso. L’<strong>escursione</strong> è ideale per gli amanti del <strong>trekking</strong> e delle <strong>escursioni</strong> in <strong>montagna</strong>.</li>
</ul>',
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
  'Valle Benedetta: Escursione da non perdere! Sentiero Achille, Eremo della Sambuca e Acquedotto Colognole. Sfida e bellezza naturale! 🏞️',
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

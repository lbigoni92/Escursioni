BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  121406300,
  'Valle Benedetta - Eremo della Sambuca - sentiero d''Achille - Acquedotto di Colognole',
  'Percorso senza particolari problemi, basta avere degli Scarponi, obbligatori visto che basta poca acqua per avere molta molta. Il per sorso è sempre praticabile tranne nel caso sia esondato il fiome Ugione (fiume successivo all''eremo della Sambuca) il tal caso sarebbe difficoltoso raggiungere il sentiero di Achille. Se ha piovuto si trovano diversi fiumiciattoli da superare che rendono divertente la camminata e si trovano due cascatelle, se za pensare alla bellezza dell''acquedotto in piena! Lo consiglio a tutti portare cibo acqua e Scarponi!',
  '<h2 id="escursione-valle-benedetta-eremo-della-sambuca-sentiero-dachille">Escursione alla Valle Benedetta, Eremo della Sambuca e Sentiero d’Achille</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è facilmente raggiungibile in auto.  Si parcheggia nei pressi di <strong>Valle Benedetta</strong>, in Toscana. Da lì, seguendo le indicazioni per l''Eremo della Sambuca, si inizia il sentiero.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Partendo da <strong>Valle Benedetta</strong>, si sale lungo un sentiero ben tracciato, ammirando il panorama della <strong>Valle</strong>. Il sentiero si snoda attraverso la fitta vegetazione fino a raggiungere l''<strong>Eremo della Sambuca</strong>, un luogo suggestivo e solitario.  Dall''Eremo, il sentiero prosegue verso il <strong>Sentiero d’Achille</strong>, con tratti più impegnativi e alcuni fiumiciattoli da superare (soprattutto dopo la pioggia!).  Il percorso culmina con la visita all''affascinante <strong>Acquedotto di Colognole</strong>, un''antica opera di ingegneria che ancora oggi conserva la sua bellezza. Questo è un''escursione ad anello di circa 16.52 km.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di livello <strong>medio</strong>.  Richiede una buona preparazione fisica, soprattutto per i tratti più ripidi e per la presenza di fiumiciattoli. È fondamentale indossare scarponi da trekking e portare con sé acqua e cibo, data la scarsità di punti d''acqua lungo il percorso.  Il dislivello è di circa 708 metri.  È consigliabile verificare le condizioni del sentiero e del fiume <strong>Ugione</strong> prima di partire, soprattutto in caso di piogge recenti.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>La traccia GPS di questo percorso è disponibile [inserire link traccia GPS qui].  Ecco le informazioni pratiche:</p>
<ul>
    <li><strong>Distanza:</strong> Circa 16.52 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 708 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Valle Benedetta, Toscana</li>
    <li><strong>Comune:</strong> Valle Benedetta, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 16.52 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 708 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Valle Benedetta, accessibile in auto</li>
    <li><strong>Comune:</strong> Valle Benedetta, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  16.52,
  708,
  123,
  407,
  383,
  '6:23',
  333,
  '5:33',
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
  'Valle Benedetta: Escursione all''Eremo della Sambuca (Tosc...',
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

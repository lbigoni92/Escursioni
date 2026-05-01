BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  214180956,
  'Le non panie della croce e pizzo d''uccello',
  'Non siamo riusciti a raggiungere pania della croce per via della pioggia che c''ha pro dopo il Del Freo e arrivati quasi al Callare è peggiorato e abbiamo scelto di scendere... La cosa bella è stata la stufa del rifugio calda con persone cortese e gentili ci riproveremo!',
  '<h2 id="escursione-le-non-panie-della-croce-e-pizzo-duccello">Escursione alle Non Panie della Croce e Pizzo d''Uccello</h2>

<p>
  Ok, devo essere onesto: questa escursione è stata... complicata! Ho sempre l''abitudine di partire per un''escursione con entusiasmo, ma la natura a volte ha altri piani. Inizialmente, il sentiero era tutto sommato piacevole, con un bel panorama sulla <strong>montagna</strong>. 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
  Il punto di partenza è facilmente raggiungibile in auto. Da Levigliani, segui le indicazioni per il sentiero.  È un parcheggio a pagamento abbastanza vicino al punto di partenza.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
  Il sentiero inizia in salita, con alcuni tratti piuttosto impegnativi, soprattutto dopo la fase di maltempo.  Dopo il Del Freo, la pioggia ha iniziato a cadere e il sentiero è diventato scivoloso.  Il dislivello è significativo, e anche se siamo riusciti a scendere prima di raggiungere la <strong>pania della croce</strong>, l''escursione è stata comunque faticosa.  Abbiamo dovuto rinunciare a proseguire a causa delle condizioni meteorologiche avverse.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
  Questa escursione è considerata <strong>media</strong>, ma è importante essere in buona forma fisica e avere un minimo di esperienza nel trekking. Il dislivello è impegnativo e il sentiero presenta alcuni tratti esposti.  Non aspettarti di fare un''escursione facile e veloce. 
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
  Ecco le informazioni pratiche per la tua <strong>escursione</strong>:
</p>

<ul>
  <li><strong>Distanza:</strong> Circa 15.8 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 1164 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio a Levigliani</li>
  <li><strong>Comune:</strong> Levigliani, <strong>Toscana</strong>, <strong>Italia</strong></li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 15.8 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 1164 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio a Levigliani</li>
  <li><strong>Comune:</strong> Levigliani, Regione Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  15.8,
  1164,
  1137,
  1700,
  433,
  '7:13',
  377,
  '6:17',
  2615,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Levigliani',
  '2025-05-01',
  '2025-05-01',
  '2025-05-18 00:00:00',
  '2025-05-18 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/le-non-panie-della-croce-e-pizzo-duccello-214180956',
  NULL,
  44.034202,
  10.272197,
  'POINT(10.272197 44.034202)',
  '82ea18cd13f6bc96de450878f93339f0de20831de78edb099e994bc74a97ace8',
  'Escursione Levigliani - Pania della Croce: solo andata media, 15.8km. Rientrata causa maltempo. Rifugio caldo e cortesia! Toscana.',
  'Pizzo d''Uccello: escursione da Levigliani (Toscana)',
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
VALUES (214180956, 'https://it.wikiloc.com/percorsi-escursionismo/le-non-panie-della-croce-e-pizzo-duccello-214180956', NOW(), '82ea18cd13f6bc96de450878f93339f0de20831de78edb099e994bc74a97ace8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 214180956);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/214180956/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/214180956/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 214180956;

COMMIT;

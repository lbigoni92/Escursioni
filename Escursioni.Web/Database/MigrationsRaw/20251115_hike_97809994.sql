BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97809994,
  'Direttissima Moriglione di Penna - Monte Penna',
  'Direttissima verso il Moriglione di Penna. Il percorso è classificato come sentiero EE e presenta alcuni punti "leggermente esposti" non consigliabile a chi soffre di vertigini. Se dev''essere onesto non è stata faticoso per la salita ma lo è stato nella discesa considerando che si scivolava per il terreno secco. Il panorama merita sicuramente ve lo consiglio. Molto bella la salita, ci si deve aiutare obbligatoriamente con le mani, con degli scorci davvero carini, meglio se vi portate dei guanti con le dita non coperte. La discesa è stata impegnativa e si procedeva molto lentamente in quanto le rocce erano abbastanza appuntite, si cammina su roccia e no su terreno, percorso non adatto a chi è alle prime esperienze. Tempo in movimento 3.5 ore ma fattibile anche in meno.',
  '<h2>Direttissima Moriglione di Penna – Monte Penna: Escursione Trekking in Montagna</h2>

<h3>Il Percorso – Sentiero EE in Calabria</h3>
<p>Preparati per una fantastica <strong>escursione trekking</strong> lungo la <strong>Direttissima Moriglione di Penna – Monte Penna</strong>, un sentiero EE che ti condurrà alla cima del <strong>Monte Penna</strong>. Questo <strong>sentiero in Calabria</strong> offre una sfida gratificante per gli escursionisti esperti, con panorami mozzafiato sulla costa ionica e sull''entroterra. L''<strong>escursione di trekking</strong> è caratterizzata da un''altitudine considerevole, rendendola un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e delle <strong>montagne</strong>.</p>

<h3>Cosa Aspettarsi – Difficoltà e Sfide</h3>
<p>Questo <strong>sentiero di trekking</strong> presenta una difficoltà moderata, classificato come sentiero EE. Pur non essendo particolarmente faticoso in salita, la <strong>discesa</strong> può essere impegnativa, soprattutto a causa del terreno roccioso e secco che presenta alcune zone leggermente esposte, non adatte a chi soffre di vertigini.  Ti consigliamo di indossare scarpe da trekking adatte e di portare con te acqua e cibo sufficienti. <em>Porta con te dei guanti da lavoro con le dita non coperte per la salita, dove l''arrampicata con le mani è obbligatoria.</em></p>

<h3>Informazioni Utili – Dettagli dell’Escursione</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6 km</li>
    <li><strong>Dislivello:</strong> 650 metri</li>
    <li><strong>Tempo Totale:</strong> 3.5 ore (circa) – fattibile anche in meno</li>
    <li><strong>Difficoltà:</strong> Sentiero EE – Moderata</li>
    <li><strong>Tipo di Sentiero:</strong> <strong>Trekking</strong>, <strong>Escursione</strong> in <strong>Montagna</strong></li>
    <li><strong>Punti di Interesse:</strong> Moriglione di Penna, panorami sulla costa ionica, scorci panoramici sull’entroterra calabrese.</li>
    <li><strong>Consigli:</strong> Indossare scarpe da trekking adatte, guanti da lavoro con dita non coperte, bere molta acqua, stare attenti durante la discesa.</li>
</ul>

<p>Non perdere l''occasione di vivere un''indimenticabile <strong>escursione sentiero</strong> nella <strong>montagna calabrese</strong>. La <strong>Direttissima Moriglione di Penna – Monte Penna</strong> ti aspetta per una giornata di <strong>trekking</strong> all''insegna della <strong>natura</strong> e della scoperta!</p>',
  'Tutte le Attività e Paesi',
  6.68,
  600,
  80,
  615,
  138,
  '02:18',
  138,
  '02:18',
  1162,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'san cerbone',
  '2022-03-01',
  '2022-03-01',
  '2022-03-19 00:00:00',
  '2022-03-19 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/direttissima-moriglione-di-penna-monte-penna-97809994',
  NULL,
  43.782757,
  10.460793,
  'POINT(10.460793 43.782757)',
  '3b521d456b504101ef778e1df8cd1fd03f051d04f26f442a8c3787664fc7ea0b',
  'Escursione Moriglione di Penna: sentiero EE panoramico e suggestivo. Salita impegnativa, discesa rocciosa. Vista mozzafiato!',
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
VALUES (97809994, 'https://it.wikiloc.com/percorsi-escursionismo/direttissima-moriglione-di-penna-monte-penna-97809994', NOW(), '3b521d456b504101ef778e1df8cd1fd03f051d04f26f442a8c3787664fc7ea0b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97809994);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97809994/photo_06.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97809994/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97809994;

COMMIT;

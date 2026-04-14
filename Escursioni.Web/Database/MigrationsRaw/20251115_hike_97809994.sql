BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97809994,
  'Direttissima Moriglione di Penna - Monte Penna',
  'Direttissima verso il Moriglione di Penna. Il percorso è classificato come sentiero EE e presenta alcuni punti "leggermente esposti" non consigliabile a chi soffre di vertigini. Se dev''essere onesto non è stata faticoso per la salita ma lo è stato nella discesa considerando che si scivolava per il terreno secco. Il panorama merita sicuramente ve lo consiglio. Molto bella la salita, ci si deve aiutare obbligatoriamente con le mani, con degli scorci davvero carini, meglio se vi portate dei guanti con le dita non coperte. La discesa è stata impegnativa e si procedeva molto lentamente in quanto le rocce erano abbastanza appuntite, si cammina su roccia e no su terreno, percorso non adatto a chi è alle prime esperienze. Tempo in movimento 3.5 ore ma fattibile anche in meno.',
  '<h2 class="escursionismo-title">Direttissima Moriglione di Penna - Monte Penna</h2>
<figure>
  <figcaption>Un panorama mozzafiato sul Moriglione di Penna.</figcaption>
</figure>

<p>Questa direttissima vi condurrà direttamente al caratteristico Moriglione di Penna. Il percorso è classificato come sentiero EE, caratterizzato da alcuni tratti leggermente esposti che non dovrebbero essere affrontati da chi soffre di vertigini.</p>

<p>La salita, sebbene impegnativa, non ha rappresentato un faticoso sforzo. Tuttavia, la discesa è stata più difficoltosa a causa del terreno asciutto e scivoloso, che ha reso il passo più lento.</p>

<h3>Dettagli del Percorso</h3>

<ul>
  <li><strong>Tipo di Percorso:</strong> Sentiero EE</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Durata Stimata:</strong> 3.5 ore (ma fattibile anche in meno)</li>
  <li><strong>Lunghezza:</strong> Circa 6 km</li>
  <li><strong>Dislivello:</strong> Circa 400 metri</li>
</ul>

<p><strong>Consigli Importanti:</strong></p>
<ul>
  <li><strong>Panorama:</strong> Il panorama è assolutamente meritato, non perdetelo!</li>
  <li><strong>Salita:</strong> La salita è particolarmente bella, con scorci affascinanti che richiedono l''uso di guanti con dita non coperte.</li>
  <li><strong>Discesa:</strong> La discesa è impegnativa e richiede attenzione a causa del terreno roccioso e appuntito.  Non è consigliata a principianti.</li>
  <li><strong>Equipaggiamento:</strong> È consigliabile indossare scarpe da trekking adatte e, soprattutto per la discesa, dei guanti.</li>
</ul>

<p><em>Ricorda sempre di valutare attentamente le tue condizioni fisiche e la tua esperienza prima di intraprendere un''escursione.  Rispettare l''ambiente e il codice della strada!</em></p>',
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
  'Escursione Moriglione Penna: sentiero EE con panorami mozzafiato! Salita tecnica e discesa impegnativa. Ideale per esperti.',
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

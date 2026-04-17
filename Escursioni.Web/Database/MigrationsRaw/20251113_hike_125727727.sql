BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  125727727,
  'Castagneto Carducci - Geocache - Sassetta',
  'Escursione un po'' diversa dal solito, con dei bei panorami, adatta a tutti, non ci vuole particolare resistenza. Il primo tratto è in salita e il secondo in discesa, senza amai essere troppo faticoso. Stavolta ho organizzato questa passeggiata alla ricerca di alla ricerca di geocache. Il sentiero non è segnato benissimo e un tratto siamo andati fuori sentiero per poi tagliare leggermente tra i boschi. Questo Powertrail va da Castagneto Carducci a Sassetta e ritorno. Lunghezza: 12 km, 320 m di altezza. Durata: 8 h di cammino, 4 h in mountain bike. Il percorso passa attraverso la pineta verso Poggio Carpineta, da dove si ha un superbo panorama dalla vedetta antincendio. L''itinerario continua fino a Capo di Monte – punto culminante del tragitto – passando per la ricostruzione di una capanna di carbonai. Il cammino di ritorno passa per il „Sentiero dei Molini“. Si arriva poi all''acquedotto Bolla del Conte Piero e ai due ponti « Ponte Lungo di Sopra e di Sotto ». Poi passerai davanti ai mulini di Cima, Mezza e Rotone prima di ritornare a Castagneto. link alla prima cache È presente una bellissima e buonissima fonte d''acqua potabile. Se fate le geocache, segnatevi gli indizi, vi serviranno alla fine!',
  '<h2>Castagneto Carducci - Geocache - Sassetta: Escursione e Caccia al Tesoro nella Natura</h2>

<h3>Il Percorso</h3>
<p>Preparatevi a un’escursione unica nel cuore del territorio collinare della Maremma, un’esperienza che unisce la bellezza del trekking con la sfida della caccia al tesoro! Questo percorso di 12 km, con un dislivello di 320 metri, vi condurrà da **Castagneto Carducci** a **Sassetta**, un viaggio immerso nella natura selvaggia e ricca di panorami mozzafiato.  L’itinerario è progettato per essere accessibile a tutti, con tratti in salita e discesa non eccessivamente impegnativi, perfetto per una giornata di <em>trekking</em> all''aria aperta.</p>

<h3>Cosa Aspettarsi</h3>
<p>La passeggiata inizia con un tratto in salita attraverso la pineta, passando per **Poggio Carpineta**, un luogo ideale per ammirare un superbo panorama dalla vedetta antincendio. Il sentiero, pur non essendo completamente segnato, offre un’esperienza autentica di esplorazione, con brevi deviazioni tra i boschi per localizzare le geocache. Potrete scoprire la ricostruzione di una capanna di carbonai, testimonianza del passato artigianale di questa terra, e affrontare un percorso ricco di sorprese, un vero <em>Powertrail</em> per appassionati di avventura e natura. La sfida della geocaching renderà l''escursione ancora più coinvolgente e stimolante, un modo divertente per esplorare il territorio e mettere alla prova le proprie capacità di orientamento.</p>

<h3>Punti di Interesse</h3>
<ul>
  <li>**Vedetta Antincendio a Poggio Carpineta:** Panorami mozzafiato sulla Maremma.</li>
  <li>**Ricostruzione della Capanna di Carbonai:** Un tuffo nella storia e nelle tradizioni locali.</li>
  <li>**Capo di Monte:** Il punto culminante del percorso, con viste panoramiche.</li>
  <li>**Sentiero dei Molini:** Un tratto suggestivo attraverso la campagna.</li>
  <li>**Acquedotto Bolla del Conte Piero:** Un’antica opera di ingegneria.</li>
  <li>**Ponti Lungo di Sopra e di Sotto:** Ponti storici che attraversano il territorio.</li>
  <li>**Mulini di Cima, Mezza e Rotone:** Imponenti testimonianze del passato industriale.</li>
  <li>**Fonte dell''Acquedotto Bolla:** Un rifornimento di acqua potabile in un ambiente incontaminato.</li>
</ul>

<h3>Consigli Utili</h3>
<ul>
  <li>Durata: 8 ore di cammino, 4 ore in mountain bike (opzionale).</li>
  <li>Difficoltà: Facile/Media – Adatta a tutti i livelli di esperienza.</li>
  <li>Lunghezza: 12 km.</li>
  <li>Dislivello: 320 m.</li>
  <li>Caratteristiche: Sentiero non sempre segnato, tratti in bosco, presenza di geocache.</li>
  <li>Cosa portare: Scarpe da trekking, acqua, snack, cappello, crema solare, mappa (consigliata), bastoncini da trekking (opzionali), dispositivo GPS per le geocache.</li>
  <li>Sicurezza: Informatevi sulle condizioni meteorologiche prima di partire e indossate abbigliamento adeguato.</li>
</ul>',
  'Tutte le Attività e Paesi',
  15.05,
  504,
  67,
  526,
  201,
  '03:21',
  201,
  '03:21',
  2309,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castagneto Carducci',
  '2023-02-01',
  '2023-02-01',
  '2023-02-12 00:00:00',
  '2023-02-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/castagneto-carducci-geocache-sassetta-125727727',
  NULL,
  43.160183,
  10.612617,
  'POINT(10.612617 43.160183)',
  '620f99b638eab42735c10dc3577e21613e1ed8c7860c5ce87d29171fc220ce91',
  'Escursione geocaching a Castagneto Carducci! 12km tra pineta, panorami e borghi storici. Ideale per tutti, sentieri misti e bella fonte d''acqua!',
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
VALUES (125727727, 'https://it.wikiloc.com/percorsi-escursionismo/castagneto-carducci-geocache-sassetta-125727727', NOW(), '620f99b638eab42735c10dc3577e21613e1ed8c7860c5ce87d29171fc220ce91')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 125727727);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/125727727/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_32.jpg', 32,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_33.jpg', 33,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_34.jpg', 34,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_35.jpg', 35,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/125727727/photo_36.jpg', 36,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 125727727;

COMMIT;

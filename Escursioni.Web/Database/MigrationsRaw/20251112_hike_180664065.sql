BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  180664065,
  'Passo del Saltello, Monte Romecchio e Rifugio Burigone da San Pellegrino in Alpe',
  'Percorso ad anello da San Pellegrino in Alpe passando per: - Alpe del pellegrino (2.7 km) - Monte Spicchio (6.1 km) - Passo del Saltello (9.4 km) - Monte Romecchio (11.9 km) - Rifugio Burigone (17.9 km) - Fonte del Santo (20.2 km) Il percorso non attraversa punti esposti, ho fatto ad Agosto è prevalentemente sotto il sole e ho bevuto 3 litri dei 4 che mi ero portato. Come punto di sosta potete fermarvi al rifugio Burigone. Tutto il tratto di cresta appenninica c''ha regalato un bel fresco dovuto a un bel venticello. i tratti boschivi invece ci regalavano lamponi e acque fresche è un bellissimo e facile trek',
  '<h2>Passo del Saltello, Monte Romecchio e Rifugio Burigone da San Pellegrino in Alpe – Trekking in Montagna</h2>

<h3>Il Percorso: Escursione ad Anello nell''Appennino Tosco-Emiliano</h3>
<p>Questo fantastico trekking ad anello parte da <strong>San Pellegrino in Alpe</strong> e vi condurrà attraverso panorami mozzafiato della <strong>Montagna Romana</strong>. L''escursione, adatta anche a escursionisti meno esperti, offre un''esperienza unica di <strong>trekking</strong> e <strong>escursionismo</strong> in un ambiente naturale incontaminato. Il percorso, di circa 20,2 km, si snoda attraverso il <strong>Passo del Saltello</strong>, il <strong>Monte Romecchio</strong>, il <strong>Rifugio Burigone</strong> e la <strong>Fonte del Santo</strong>, offrendo diverse opportunità di ammirare la bellezza della natura toscana e emiliana.</p>

<h3>Cosa Aspettarsi: Un Trekking Facile e Rinfrescante</h3>
<p>Questo <strong>sentiero</strong> di trekking è un''ottima scelta per chi cerca un''<strong>escursione</strong> facile e piacevole. Il percorso presenta tratti prevalentemente pianeggianti e alcuni brevi saliscendi, il tutto su un terreno sicuro e ben tenuto.  In particolare, durante l''escursione, si noteranno ampi spazi esposti con una vista panoramica sulla catena montuosa.  Il tratto di cresta appenninica offre un piacevole fresco, soprattutto durante i mesi estivi, grazie al passaggio di un piacevole venticello.  Inoltre, la presenza di tratti boschivi permette di raccogliere lamponi freschi e di godere dell''acqua limpida di sorgenti naturali.  Ricorda di portare con te circa 3-4 litri d''acqua, soprattutto durante i mesi più caldi.  </p>

<h3>Informazioni Utili: Dettagli del Trekking</h3>
<ul>
    <li><b>Difficoltà:</b> Facile - Media</li>
    <li><b>Distanza:</b> Circa 20,2 km</li>
    <li><b>Dislivello:</b> Circa 800 metri</li>
    <li><b>Tempi Previsti:</b> 6-8 ore (a seconda del passo)</li>
    <li><b>Periodo Consigliato:</b> Da maggio a ottobre</li>
    <li><b>Punti di Interesse:</b> <strong>Rifugio Burigone</strong>, <strong>Fonte del Santo</strong>, panorami mozzafiato, flora e fauna appenninica</li>
    <li><b>Consigli:</b> Indossare scarpe da trekking adatte, portare con sé acqua, cibo, cappello e crema solare.</li>
</ul>

<p>Questo <strong>sentiero escursionistico</strong> rappresenta un''opportunità imperdibile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>, offrendo un''esperienza indimenticabile nella splendida <strong>Montagna Romana</strong>. Preparati per un''escursione ricca di natura, panorami e momenti di relax.</p>',
  'Tutte le Attività e Paesi',
  21.17,
  684,
  1,
  1,
  251,
  '04:11',
  251,
  '04:11',
  3100,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'San Pellegrino in Alpe',
  '2024-08-01',
  '2024-08-01',
  '2024-08-11 00:00:00',
  '2024-08-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passo-del-saltello-monte-romecchio-e-rifugio-burigone-da-san-pellegrino-in-alpe-180664065',
  NULL,
  44.191635,
  10.481067,
  'POINT(10.481067 44.191635)',
  '2b5d374309f8b4a7911ed2a0bbec01eeb964439eb7f9b7cc0f8d19b50acdd2fa',
  'Escursione San Pellegrino: Passo Saltello, Monte Romecchio & Rifugio Burigone! Anello facile e fresco tra boschi, panorami e lamponi ⛰️☀️🌲',
  'Trekking Monte Romecchio: Passo Saltello Rifugio Burigone',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (180664065, 'https://it.wikiloc.com/percorsi-escursionismo/passo-del-saltello-monte-romecchio-e-rifugio-burigone-da-san-pellegrino-in-alpe-180664065', NOW(), '2b5d374309f8b4a7911ed2a0bbec01eeb964439eb7f9b7cc0f8d19b50acdd2fa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 180664065);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/180664065/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/180664065/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 180664065;

COMMIT;

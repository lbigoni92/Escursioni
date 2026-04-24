BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  169560138,
  'Gevoli da Casoli con deviazione sul Gabberi',
  'Bel giro ma Difficile nel primo tratto segnato molto male, spesso si va fuori sentiero e si perde la dritta via sino il problema si ha sino ad arrivare la callare. da Casoli consiglio di prendere il sentiero c8 e poi il c3 sino a prendere il 107 che porta su entrambe le vette. Il Gabberi probabilmente è il monte da cui si gode il panorama migliore sul mare delle alpi meridionali, salita tosta ma fattibile . Il gevoli invece presenta delle difficoltà in quanto il sentiero non è segnato ma è semplice da raggiungere',
  '<h2>Gevoli da Casoli con deviazione sul Gabberi: Escursione Trekking in Montagna</h2>

<h3>Il percorso</h3>
<p>Preparati per un’escursione indimenticabile sul <strong>Gevoli</strong>, una meta ambita per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>montagna</strong>. Il sentiero parte da <strong>Casoli</strong> e offre un’esperienza di <strong>sentiero</strong> immersa nella bellezza della natura. Il percorso iniziale presenta delle difficoltà, con tratti non ben segnalati e spesso fuori dai <strong>sentieri</strong>, rendendo necessaria una buona orientamento. Per evitare questi imprevisti, consigliamo di seguire il sentiero C8 e il C3 fino al tracciato del 107, che conduce alle due vette.</p>

<h3>Cosa aspettarsi</h3>
<p>Quest''<strong>escursione</strong> sul <strong>Gevoli</strong> ti offrirà panorami mozzafiato sulle <strong>Alpi Meridionali</strong> e sul mare. La salita al <strong>Monte Gabberi</strong>, in particolare, è considerata tosta ma fattibile, rappresentando il punto con la migliore visuale. Aspettati un <strong>trekking</strong> impegnativo, soprattutto nel tratto iniziale non segnato, che richiede una buona preparazione fisica e un''attenta valutazione della propria esperienza.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Difficile</li>
    <li><strong>Distanza:</strong> Circa 12-15 km (a seconda dell''itinerario)</li>
    <li><strong>Dislivello:</strong> Circa 800-900 metri</li>
    <li><strong>Periodo consigliato:</strong> Estate/Autunno (verificare le condizioni meteo)</li>
    <li><strong>Equipaggiamento consigliato:</strong> Scarponi da trekking, bastoncini, acqua, cibo, abbigliamento a strati, mappa, bussola/GPS</li>
    <li><strong>Punti di interesse:</strong> <strong>Monte Gabberi</strong> (panorami), <strong>Gevoli</strong> (difficoltà del sentiero),<strong>Callare</strong> (punto di arrivo)</li>
</ul>

<p>Esplora i meravigliosi <strong>sentieri Italia</strong> e vivi un''avventura di <strong>trekking</strong> in un ambiente naturale incontaminato. L''<strong>escursione</strong> sul <strong>Gevoli</strong> da <strong>Casoli</strong> con deviazione sul <strong>Gabbari</strong> è un''opportunità unica per immergerti nella <strong>natura</strong> e ammirare la bellezza delle <strong>Alpi Meridionali</strong>.  Questa <strong>escursione</strong> è ideale per esperti di <strong>trekking</strong>, che apprezzano le sfide e la libertà di esplorare nuovi percorsi.</p>',
  'Tutte le Attività e Paesi',
  10.46,
  825,
  367,
  1113,
  294,
  '4:54',
  255,
  '4:15',
  1443,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casoli',
  '2024-05-01',
  '2024-05-01',
  '2024-05-04 00:00:00',
  '2024-05-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gevoli-da-casoli-con-deviazione-sul-gabberi-169560138',
  NULL,
  43.96303,
  10.328855,
  'POINT(10.328855 43.96303)',
  '1730d29118f884ad802032e5ff7603cf344ba3f52b491552592bd67093f33c2e',
  'Escursione Gevoli da Casoli: anello difficile (10.46km, +825m) in Toscana. Salita al Gabberi panoramico (Alpi Apuane). Sentiero C8/C3 e poi 107. Ottimo punto...',
  'Gevoli: escursione da Casoli con Gabberi (difficile)',
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
VALUES (169560138, 'https://it.wikiloc.com/percorsi-escursionismo/gevoli-da-casoli-con-deviazione-sul-gabberi-169560138', NOW(), '1730d29118f884ad802032e5ff7603cf344ba3f52b491552592bd67093f33c2e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 169560138);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/169560138/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/169560138/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 169560138;

COMMIT;

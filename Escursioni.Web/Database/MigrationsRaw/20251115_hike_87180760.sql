BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87180760,
  'Foce a giovo - Lago santo - Lago baccio - Monte Rondinaio - Lago turchino',
  'Ottimo per una giornata all''insegna dei laghi, durante questo percorso sarà possibile visitare 3 laghi e vederne un 4 da lontano: - Lago Santo - Lago Baccio - Lago Turchino IL PERCORSO NON HA PUNTI ESPOSTI ma comunque necessita di una determinata preparazione fisica per la salita e e la discesa dal Rondinaio e per la sua lunghezza complessiva. Adatto a chi ha un pò d''esperienza, sul rondinaio abbiamo trovato la nebbia ma il posto è stupendo lo consiglio chiunque.',
  '<h2>Foce a Giovo - Lago Santo - Lago Baccio - Lago Rondinaio - Lago Turchino: Trekking Epico tra i Laghi Alpini</h2>

<h3>Il Percorso: Un''Escursione di Trekking in Montagna</h3>

<p>Preparatevi per un''incredibile <strong>escursione di trekking</strong> nella splendida regione italiana! Questo percorso da <strong>trekking</strong> vi condurrà attraverso paesaggi mozzafiato, attraversando la foce del fiume Giovo e visitando una serie di laghi alpini.  La <strong>sentiero</strong>, ideale per amanti della <strong>natura</strong> e del <strong>trekking</strong>, offre una giornata completa di avventura e scoperta, un''occasione perfetta per esplorare le montagne e i laghi d''Italia.  Questo <strong>sentiero escursionistico</strong> è perfetto per chi cerca un''esperienza di <strong>trekking</strong> impegnativa ma ricompensata.</p>

<h3>Cosa Aspettarsi: Sfide e Meraviglie</h3>

<p>Questo <strong>sentiero</strong> di <strong>trekking</strong>, di media difficoltà, vi farà affrontare salite ripide e discese impegnative, soprattutto nella zona del <strong>Monte Rondinaio</strong>. Nonostante la mancanza di punti panoramici attrezzati, la ricompensa è immensa: panorami mozzafiato sui <strong>laghi</strong>, la possibilità di ammirare il <strong>Lago Santo</strong>, il <strong>Lago Baccio</strong> e il <strong>Lago Turchino</strong>, e la bellezza incontaminata della <strong>montagna</strong> italiana. La nebbia sul Rondinaio può creare un''atmosfera magica, rendendo l''esperienza ancora più suggestiva.</p>

<p>Si consiglia una buona preparazione fisica per affrontare la lunghezza del <strong>sentiero</strong> e le salite e discese del Rondinaio. È fondamentale indossare scarpe da <strong>trekking</strong> adeguate e portare con sé acqua, cibo e abbigliamento impermeabile.</p>

<h3>Informazioni Utili: Dettagli del Sentiero</h3>

<ul>
    <li><b>Nome Sentiero:</b> Foce a Giovo - Lago Santo - Lago Baccio - Lago Rondinaio - Lago Turchino</li>
    <li><b>Località:</b> Regione Trentino-Alto Adige, Italia</li>
    <li><b>Difficoltà:</b> Media – Richiede una buona preparazione fisica</li>
    <li><b>Distanza Totale:</b> Circa 18-20 km (Potrebbe variare in base al percorso specifico)</li>
    <li><b>Dislivello:</b> Circa 800-900 metri</li>
    <li><b>Tipo di Sentiero:</b> <strong>Sentiero di trekking</strong>, spesso con tratti rocciosi e scoscesi</li>
    <li><b>Periodo Consigliato:</b> Estate e Autunno (verificare le condizioni meteorologiche prima di partire)</li>
    <li><b>Adatto a:</b> Escursionisti esperti con un minimo di preparazione fisica</li>
</ul>

<p>Questo <strong>sentiero di trekking</strong> rappresenta un''opportunità unica per immergersi nella natura selvaggia delle montagne italiane.  Un''esperienza indimenticabile per un''<strong>escursione di un giorno</strong> o per un''avventura di <strong>trekking</strong> più lunga.  Esplorate il <strong>sentiero Italia</strong> e scoprite la bellezza dei laghi alpini!</p>',
  'Tutte le Attività e Paesi',
  14.76,
  1100,
  1,
  1963,
  246,
  '04:06',
  246,
  '04:06',
  2671,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pracchi',
  '2021-10-01',
  '2021-10-01',
  '2021-10-23 00:00:00',
  '2021-10-23 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/foce-a-giovo-lago-santo-lago-baccio-monte-rondinaio-lago-turchino-con-lupus-in-trekking-87180760',
  NULL,
  44.100865,
  10.613804,
  'POINT(10.613804 44.100865)',
  'e215667560147f451b7cbfbe09ff4e1e85651c8b06d87aa502f39e82379c116a',
  'Escursione Foce a Giovo: Lago Santo, Baccio e Turchino! Anello Toscano impegnativo (14.7km, +1m), Monte Rondinaio. Perfetto per amanti trekking esperti.',
  'Monte Rondinaio: escursione laghi Toscana (difficile)',
  'Lucchesia e colline toscane',
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
VALUES (87180760, 'https://it.wikiloc.com/percorsi-escursionismo/foce-a-giovo-lago-santo-lago-baccio-monte-rondinaio-lago-turchino-con-lupus-in-trekking-87180760', NOW(), 'e215667560147f451b7cbfbe09ff4e1e85651c8b06d87aa502f39e82379c116a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87180760);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87180760/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87180760/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87180760;

COMMIT;

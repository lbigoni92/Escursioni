BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87180760,
  'Foce a giovo - Lago santo - Lago baccio - Monte Rondinaio - Lago turchino',
  'Ottimo per una giornata all''insegna dei laghi, durante questo percorso sarà possibile visitare 3 laghi e vederne un 4 da lontano: - Lago Santo - Lago Baccio - Lago Turchino IL PERCORSO NON HA PUNTI ESPOSTI ma comunque necessita di una determinata preparazione fisica per la salita e e la discesa dal Rondinaio e per la sua lunghezza complessiva. Adatto a chi ha un pò d''esperienza, sul rondinaio abbiamo trovato la nebbia ma il posto è stupendo lo consiglio chiunque.',
  '<h2 id="foce-a-giovo-lago-santo-lago-baccio-lago-turchino">Escursione Foce a Giovo - Lago Santo - Lago Baccio - Lago Turchino</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bella escursione è raggiungibile in auto da Pracchi. Da qui, seguendo le indicazioni per il sentiero, si inizia a percorrere il tracciato che ci porterà alla scoperta dei laghi.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Il percorso inizia dalla foce del fiume Giovo e si snoda attraverso un sentiero che ci conduce a scoprire il Lago Santo, il Lago Baccio e il Lago Turchino, quest''ultimo visibile da lontano. Il tratto più impegnativo è la salita e discesa dal Monte Rondinaio, che richiede una buona preparazione fisica e una determinata esperienza. Durante il percorso, potrai ammirare panorami mozzafiato e la bellezza dei laghi. La lunghezza totale dell''escursione è di circa 14.76 km, con un dislivello positivo di 1100 metri. È un anello, quindi il percorso si conclude al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è classificata come Difficile. La salita e discesa dal Monte Rondinaio, unitamente alla lunghezza complessiva del percorso, richiedono una buona preparazione fisica e un''esperienza di trekking. È importante essere ben attrezzati e in forma per affrontare questo sentiero. La nebbia, come abbiamo avuto modo di constatare, può creare delle condizioni imprevedibili, ma il panorama dal Rondinaio merita assolutamente il disagio.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Disponibile traccia GPS in formato GPX.  Consigliamo di scaricare la traccia GPS prima della partenza per avere sempre a portata di mano il percorso. Data la difficoltà dell''escursione, è consigliabile informarsi sulle condizioni meteorologiche prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 14.76 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 1100 metri</li>
    <li><strong>Difficoltà:</strong> Difficile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Foce del fiume Giovo, Comune di Pracchi, Provincia di Toscana, Regione Italia</li>
    <li><strong>Comune:</strong> Pracchi, Provincia di Toscana, Regione Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  14.76,
  1100,
  1229,
  1963,
  402,
  '6:42',
  350,
  '5:50',
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
  'Appennino Tosco-Emiliano',
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

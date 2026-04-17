BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  97381391,
  'Sambuca - Chianti - Vigne',
  'Percorso lungo ma facile, le salite non sono mai troppo ripide, siamo passati numerose volte a canto a dei vigneti bellissimi (anche se si era nella stagione sbagliata) Lungo il sentiero abbiamo visto una volpe e un procione mentre si costeggia a o dei fiumi, sul posto vi sono numerosi B & B dove fermarsi per la notte o ristoranti per effettuare delle degustazioni. Noi ci siamo fermati a fare un pick Nick dopo un guado a pieni gnudi. Esperienza davvero carina! Lo consiglio a chiunque voglia passare una giornata tra le colline del Chianti, ma lo sconsiglio in piena estate.',
  '<h2>Sambuca - Chianti - Vigne: Escursione Trekking tra le Viti Toscane</h2>

<h3>Il Percorso</h3>
<p>Questo splendido <strong>sentiero di trekking</strong> nel cuore del <strong>Chianti</strong> vi conduce attraverso un paesaggio mozzafiato, caratterizzato da dolci colline ricoperte di <strong>vigne</strong> e <strong>oliveti</strong>. La difficoltà del percorso è considerata facile, con salite graduali che non risultano mai troppo impegnative, perfette per un''<strong>escursione</strong> a piedi nel <strong>montagna</strong>. Il <strong>sentiero</strong> segue il corso di fiumi, offrendo viste panoramiche spettacolari sulle <strong>colline toscane</strong> e sulle caratteristiche case coloniche. Ammirerete numerosi vigneti, un vero e proprio tripudio di colori e profumi, e potrete gustare, in estate, la tipica <strong>vino del Chianti</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparatevi a una giornata immersa nella <strong>natura</strong>, respirando l''aria fresca della <strong>montagna</strong> e ammirando la bellezza del <strong>Chianti</strong>. Durante l''<strong>escursione</strong>, avrete l''opportunità di avvistare la fauna locale, come <strong>volpi</strong> e <strong>procioni</strong>, e di immergervi nella tranquillità di questo angolo di <strong>Italia</strong>. Questo <strong>trekking</strong> è ideale per famiglie e appassionati di <strong>natura</strong> in cerca di una giornata all''aria aperta.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 12 km</li>
    <li><strong>Dislivello:</strong> 300 metri</li>
    <li><strong>Difficoltà:</strong> Facile - Media</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero di trekking</li>
    <li><strong>Periodo Consigliato:</strong> Primavera o Autunno (evitare l''estate per il caldo)</li>
    <li><strong>Punti di Interesse:</strong> Vigneti del <strong>Chianti</strong>, fiumi, case coloniche, possibilità di degustazioni di <strong>vino</strong> in <strong>B&B</strong> e ristoranti locali.</li>
    <li><strong>Consigli:</strong> Portate con voi acqua, snack e scarpe da trekking adatte.  Non dimenticate la macchina fotografica per immortalare la bellezza del paesaggio e gli animali.</li>
</ul>

<p>Questa <strong>escursione trekking</strong> a <strong>Sambuca</strong> nel <strong>Chianti</strong> è un''occasione unica per scoprire la vera anima della <strong>Toscana</strong>.  Un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>, in un territorio ricco di storia e tradizioni.  Organizza la tua prossima <strong>escursione</strong> in <strong>sentiero</strong> in <strong>Italia</strong>!</p>',
  'Tutte le Attività e Paesi',
  24.45,
  620,
  178,
  452,
  352,
  '05:52',
  352,
  '05:52',
  4264,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sambuca',
  '2022-03-01',
  '2022-03-01',
  '2022-03-12 00:00:00',
  '2022-03-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sambuca-chianti-vigne-97381391',
  NULL,
  43.56602,
  11.218438,
  'POINT(11.218438 43.56602)',
  '826b367e1d7be680e3efbe29d5fa099425bc7817811091b44d6f0f0e7653a9ac',
  'Escursione Chianti: Sambuca, vigne e borghi! Percorso facile tra i vigneti, fiumi e natura. Ideale per una giornata tra le colline!',
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
VALUES (97381391, 'https://it.wikiloc.com/percorsi-escursionismo/sambuca-chianti-vigne-97381391', NOW(), '826b367e1d7be680e3efbe29d5fa099425bc7817811091b44d6f0f0e7653a9ac')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 97381391);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/97381391/photo_07.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/97381391/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 97381391;

COMMIT;

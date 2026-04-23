BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  123535150,
  'Parco Caselli - Cascata Caselli',
  'Bellissimo percorso adatto a tutte l''età nel parco naturale Caselli, il percorso è stato molto semplice ed include dei guardi, ponti, una cascata meravigliosa (luogo principe della camminata), una chiesa dove sarà possibile suonare la campana ed uno splendido lago.',
  '<h2>Parco Caselli - Cascata Caselli: Trekking e Escursioni alla Cascata Principale</h2>

<h3>Il Percorso</h3>
<p>
Immergiti nella bellezza del <strong>Parco Naturale Caselli</strong> con questa splendida <strong>escursione a sentiero</strong>, ideale per tutte le età e livelli di esperienza. Il percorso, caratterizzato da una facile pendenza, ti condurrà attraverso paesaggi mozzafiato, ideale per una giornata di <strong>trekking</strong> in <strong>montagna</strong>. Ammira i punti panoramici, i ponti e la suggestiva <strong>cascata Caselli</strong>, il vero fulcro di questa emozionante avventura nella <strong>natura</strong>. 
</p>
<p>
La camminata è progettata per essere un''esperienza accessibile, con tratti pianeggianti e salite dolci che si alternano a sezioni più impegnative, rendendola perfetta per famiglie e <em>principianti</em>. Scopri la bellezza autentica dei <strong>sentieri italiani</strong> e lasciati conquistare dalla maestosità di questo angolo di paradiso.</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante questa <strong>escursione nel Parco Caselli</strong>, potrai aspettarti panorami mozzafiato, un''atmosfera rilassante immersa nella <strong>natura</strong>, e la possibilità di vivere un''esperienza di <strong>trekking</strong> indimenticabile.  Il percorso ti porterà a scoprire una <strong>chiesa</strong> storica dove potrai suonare la campana e ammirare le sue peculiarità.  Non dimenticare di fermarti al lago per una pausa rilassante e per godere di una vista impareggiabile. L''acqua cristallina della <strong>cascata Caselli</strong> ti inviterà ad un bagno rinfrescante dopo l''<em>escursione</em>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 3 km</li>
    <li><strong>Dislivello:</strong> 150 metri</li>
    <li><strong>Tempo di percorrenza:</strong> 1.5 - 2 ore</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero naturalistico</li>
    <li><strong>Adatto a:</strong> Famiglie, principianti, <strong>trekking</strong> e <strong>escursionismo</strong></li>
    <li><strong>Luogo:</strong> <strong>Parco Naturale Caselli</strong>, Piemonte</li>
    <li><strong>Punti di interesse:</strong> <strong>Cascata Caselli</strong>, Chiesa, Lago, Punti Panoramici</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, acqua, snack, cappello, crema solare, mappa.</li>
</ul>

<p>
Scopri di più sulle <em>escursioni nel Parco Caselli</em> e pianifica la tua prossima avventura nella <strong>montagna</strong>!
</p>',
  'Tutte le Attività e Paesi',
  11.62,
  402,
  127,
  304,
  135,
  '02:15',
  135,
  '02:15',
  1657,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Canneto',
  '2023-01-01',
  '2023-01-01',
  '2023-01-15 00:00:00',
  '2023-01-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parco-caselli-cascata-caselli-123535150',
  NULL,
  43.230595,
  10.717277,
  'POINT(10.717277 43.230595)',
  '695ef261f4dda7479975f340b344e3fbff734941034b463138b4bc5311895981',
  'Escursione Parco Caselli Cascata Caselli (Canneto, Toscana): Anello facile 11.6km +402m. Scopri la cascata, la chiesa e il lago in questo splendido percorso!',
  'Parco Caselli: Escursione Cascata Caselli (Toscana)',
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
VALUES (123535150, 'https://it.wikiloc.com/percorsi-escursionismo/parco-caselli-cascata-caselli-123535150', NOW(), '695ef261f4dda7479975f340b344e3fbff734941034b463138b4bc5311895981')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 123535150);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/123535150/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123535150/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123535150;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  123535150,
  'Parco Caselli - Cascata Caselli',
  'Bellissimo percorso adatto a tutte l''età nel parco naturale Caselli, il percorso è stato molto semplice ed include dei guardi, ponti, una cascata meravigliosa (luogo principe della camminata), una chiesa dove sarà possibile suonare la campana ed uno splendido lago.',
  '<h2>Parco Caselli - Cascata Caselli: Escursione Trekking nella Montagna Italiana</h2>

<h3>Il Percorso</h3>

<p>
Immergiti nella bellezza del <strong>Parco Naturale Caselli</strong> con questa fantastica <strong>escursione trekking</strong> dedicata alla visita della maestosa <strong>Cascata Caselli</strong>. Questo <strong>sentiero</strong> è stato progettato per essere accessibile a tutti, dai più esperti ai principianti, rendendolo una scelta ideale per famiglie e appassionati di <strong>trekking</strong> di ogni età. L''<strong>itinerario</strong> si snoda attraverso un paesaggio mozzafiato, ricco di flora e fauna, offrendo scorci panoramici unici nella splendida <strong>montagna italiana</strong>.
</p>

<h3>Cosa Aspettarsi</h3>

<p>
Preparati a vivere un''esperienza indimenticabile lungo questo <strong>sentiero</strong>. Potrai ammirare panorami spettacolari, attraversare suggestivi <strong>guardi</strong> e <strong>ponti</strong>, e, naturalmente, essere ipnotizzato dalla potenza e dalla bellezza della <strong>Cascata Caselli</strong>, il fulcro di questa <strong>escursione</strong>. La possibilità di suonare la <strong>campana</strong> in una suggestiva <strong>chiesa</strong> aggiunge un tocco di magia a questa avventura nella <strong>natura</strong>.  Non dimenticare di goderti la tranquillità del lago, un''oasi di pace nel cuore del parco.
</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Distanza:</b> Circa 6 km (andata e ritorno)</li>
    <li><b>Difficoltà:</b> Facile – Adatto a tutte le età</li>
    <li><b>Dislivello:</b> Circa 200 metri</li>
    <li><b>Durata:</b> Circa 3-4 ore (a seconda del ritmo)</li>
    <li><b>Punto di Partenza:</b> Parco Naturale Caselli</li>
    <li><b>Periodo Consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Attrezzatura Consigliata:</b> Scarpe da trekking, acqua, snack, cappello, crema solare, abbigliamento a strati</li>
</ul>

<p>
Scopri il meglio del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in Italia con questa splendida <strong>escursione nel Parco Caselli</strong>.  Perfetto per chi cerca una giornata di relax nella <strong>montagna</strong> e la possibilità di immergersi nella <strong>natura</strong> incontaminata.  Questo <strong>sentiero</strong> è un vero gioiello per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>.  Organizza la tua prossima <strong>escursione</strong> e crea ricordi indimenticabili!
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
  'Escursioni Parco Caselli: Cascata Caselli! Percorso facile tra guardie, ponti, lago e cascata. Natura e relax per tutta la famiglia!',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  123535150,
  'Parco Caselli - Cascata Caselli',
  'Bellissimo percorso adatto a tutte l''età nel parco naturale Caselli, il percorso è stato molto semplice ed include dei guardi, ponti, una cascata meravigliosa (luogo principe della camminata), una chiesa dove sarà possibile suonare la campana ed uno splendido lago.',
  '<h2 id="parco-caselli-cascata-caselli">Parco Caselli - Cascata Caselli</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza di questa fantastica escursione, dirigetevi verso il comune di Canneto, in provincia di Toscana.  Il parcheggio più comodo si trova vicino al centro del paese, facilmente raggiungibile in auto. Da lì, seguiamo indicazioni per il Parco Naturale Caselli, dove inizierà il nostro sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo anello di trekking nel Parco Caselli è un''esperienza indimenticabile per tutti. Partiremo dal punto di arrivo e ci inoltreremo nel cuore del parco, attraversando boschi di castagno e faggi.  Il sentiero è ben segnalato e presenta diversi punti panoramici mozzafiato.  A seguire, ammireremo la maestosa Cascata Caselli, il fulcro del percorso, con le sue pozze d''acqua cristallina e il suo paesaggio suggestivo. Proseguiremo oltre la cascata e raggiungendo la Chiesa, dove potremo provare a suonare la campana! Infine, il sentiero ci porterà al Lago, un luogo di pace e tranquillità dove potremo godere di una meritata pausa.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>L''escursione al Parco Caselli - Cascata Caselli è classificata come di difficoltà "Media". Il dislivello di 402 metri richiede una buona preparazione fisica, ma il sentiero è ben tenuto e adatto anche a escursionisti meno esperti.  La distanza totale del giro è di circa 11.62 km, quindi è consigliabile indossare scarpe da trekking comode e portare con sé acqua e snack.  Prevedete circa 4-5 ore per completare l''anello.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per seguirci durante l''escursione, trovate la traccia GPS qui: [Inserire traccia GPS qui]. Questo sentiero escursionistico è un''ottima opportunità per ammirare il panorama della Toscana. Ricordate di rispettare l''ambiente e di seguire le indicazioni del sentiero.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong>Distanza:</strong> Circa 11.62 km</li>
  <li><strong>Dislivello:</strong> Circa 402 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio vicino al centro di Canneto, Toscana</li>
  <li><strong>Comune:</strong> Canneto, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.62,
  402,
  127,
  304,
  266,
  '4:26',
  231,
  '3:51',
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
  'Grosseto e Maremma',
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

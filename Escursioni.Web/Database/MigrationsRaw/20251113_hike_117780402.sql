BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  117780402,
  'Monte Prado e Lago di Bargetana',
  'Il Monte Prado e il Lago Bargetana E''stata una magnifica escursione nell Appennino Tosco-Emiliano, con dei colori autunnali magnifici. La salita sul Monte Prado e facile anche se lunga e ci vuole un po'' di resistenza( con i suoi 2054m è la vetta ⛰️più alta della Toscana). Abbiamo fatto una tappa al Lago Bargetana e al Rifugio Cella. Il percorso parte in salita, non è mai troppo ripida ma comunque il dislivello è importante, prima di arrivare sul Prado abbiamo fatto tappa(opzionale) su un altro monte che era di passaggio. Il ritorno ha una leggera salita... Ma niente di preoccupante, i sentimenti sono sempre abbastanza larghi. Ci sono due rifugi lungo il percorso noi siamo passati dal rifugio Cella. La fontana che abbiamo passato era a corto di acqua, causa siccità',
  '<h2>Trekking Monte Prado e Lago di Bargetana: Escursione in Appennino Tosco-Emiliano</h2>

<h3>Il Percorso</h3>
<p>
La <strong>escursione</strong> al <strong>Monte Prado e Lago di Bargetana</strong> è un’esperienza indimenticabile nel cuore dell’<strong>Appennino Tosco-Emiliano</strong>. Questo <strong>sentiero di trekking</strong>, adatto anche a escursionisti esperti, si snoda attraverso paesaggi mozzafiato, offrendo panorami spettacolari sulle colline circostanti e le valli profonde. Il percorso, di lunghezza considerevole, si presenta inizialmente in forte salita, richiedendo una buona resistenza fisica. La <strong>difficoltà</strong> è media, ma il significativo <strong>dislivello</strong> (2054m) e la lunghezza del percorso lo rendono un''esperienza impegnativa ma gratificante, perfetta per chi ama l’<strong>escursionismo in montagna</strong> e la scoperta della <strong>natura selvaggia</strong>.
</p>
<p>
Dopo una tappa iniziale in salita, il sentiero prosegue lungo il pendio del <strong>Monte Prado</strong>, offrendo scorci sempre più ampi sulla zona circostante. È prevista una deviazione opzionale verso un altro monte di passaggio, che arricchisce ulteriormente l''esperienza. Il ritorno presenta una leggera pendenza, agevolando il rientro verso il punto di partenza. Questo <strong>trekking</strong> in Toscana permette di immergersi completamente nel silenzio e nella tranquillità della <strong>montagna</strong>, un vero e proprio rifugio dalla frenesia della vita quotidiana.
</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un''escursione di media difficoltà, adatta a escursionisti esperti.</li>
    <li>Un dislivello impegnativo, con un guadagno di quota di circa 2054 metri.</li>
    <li>Paesaggi spettacolari con panorami mozzafiato sull''Appennino Tosco-Emiliano.</li>
    <li>La possibilità di ammirare colori autunnali magnifici (in stagione).</li>
    <li>La presenza di due rifugi lungo il percorso, il Rifugio Cella, ideale per ricaricare le energie.</li>
    <li>Un''opportunità unica per praticare <strong>trekking</strong> e <strong>escursionismo</strong> in un ambiente naturale incontaminato.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>
Il <strong>sentiero</strong> per il <strong>Monte Prado e Lago di Bargetana</strong> è situato nell’Appennino Tosco-Emiliano, in Emilia-Romagna. La zona del <strong>Lago di Bargetana</strong> offre un ambiente naturale unico e affascinante. Si consiglia di partire con un''adeguata preparazione fisica e di indossare scarpe da trekking comode. È importante verificare le condizioni meteorologiche prima di partire e portare con sé acqua, cibo e abbigliamento adeguato. La fontana di passaggio era a corto di acqua, a causa della siccità.</p>
<p>
Non dimenticate di rispettare l’ambiente circostante, seguendo i principi del <strong>turismo responsabile</strong>. Questa <strong>escursione</strong> è un’ottima opportunità per vivere un’esperienza autentica in Italia, immergendosi nella <strong>natura</strong> e nella sua bellezza. Preparatevi per un’indimenticabile <strong>trekking</strong> in un angolo d''Italia da vivere con la giusta preparazione e attrezzatura.</p>',
  'Tutte le Attività e Paesi',
  18.08,
  1,
  1,
  2,
  269,
  '04:29',
  269,
  '04:29',
  2964,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casone',
  '2022-10-01',
  '2022-10-01',
  '2022-10-30 00:00:00',
  '2022-10-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-prado-e-lago-di-bargetana-117780402',
  NULL,
  44.211551,
  10.445669,
  'POINT(10.445669 44.211551)',
  'eed9b5374c817526050470a32611b5c3dad12cecc2757e2aed41717084a867c5',
  'Escursione Monte Prado Lago Bargetana: percorso anello Toscana Appennino! ⛰️ 18km, +800m dislivello, difficoltà media. Vetta più alta della Toscana! Rifugio Ce...',
  'Monte Prado: escursione al Lago Bargetana (Toscana)',
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
VALUES (117780402, 'https://it.wikiloc.com/percorsi-escursionismo/monte-prado-e-lago-di-bargetana-117780402', NOW(), 'eed9b5374c817526050470a32611b5c3dad12cecc2757e2aed41717084a867c5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 117780402);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/117780402/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/117780402/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 117780402;

COMMIT;

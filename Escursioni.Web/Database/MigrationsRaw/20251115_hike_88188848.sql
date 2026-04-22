BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88188848,
  'Puzzolente - Valle Benedetta (Per la direttissima)',
  'Percorso carino alla portata di tutti, le levassimo pause e chiacchierate varie è fattibile farlo in appena 2/2.30 ore. Partenza dal centro cittadino, li bisogna ovviamente fare attenzione alle auto, si procede presso il sottopassaggio della stazione, si supera un ponte della superstrada e finalmente s''arriva all''inizio del percorso. Il percorso ci permette di vedere immediatamente il rudere della puzzolente e in seguito procediamo lungo la strada fino ad imboccare il sentiero 100 da li si dovrà seguire procedendo sempre a dritto verso Valle Benedetta, il sentiero è ben segnato. Vi sarà una fontanella in valle benedetta. Fattibile in ogni periodo dell''anno',
  '<h2>Puzzolente - Valle Benedetta (Per la direttissima) Trekking in Italia</h2>

<h3>Il percorso</h3>

<p>
La <strong>Puzzolente - Valle Benedetta</strong> è un’escursione di trekking ideale per chi cerca un percorso carino e accessibile, situato nel cuore della **Val d’Aosta**. Questo sentiero, denominato "Per la direttissima", offre un’esperienza autentica nella natura selvaggia e incontaminata, perfetta per una <strong>passeggiata in montagna</strong> o un’<strong>escursione</strong> di un giorno. Il percorso inizia in città e si snoda attraverso un paesaggio mozzafiato, ideale per gli amanti del trekking e della **natura**. 
</p>

<h3>Cosa aspettarsi</h3>

<p>
Preparati per un’<strong>escursione in sentiero</strong> di circa 6-8 chilometri, con un dislivello di circa 400 metri, che ti condurrà attraverso boschi rigogliosi, prati alpini e panorami spettacolari sulla **Valle Benedetta**.  La difficoltà è media, adatta a escursionisti esperti e principianti, con le dovute precauzioni. Le levassimo pause e le chiacchierate varie sono più che incoraggiate! Un''ottima opportunità per praticare <strong>trekking</strong> e godere della bellezza della **montagna**.  L''ambiente naturale è protetto, quindi è importante rispettare l''ecosistema e non lasciare tracce del proprio passaggio.  
</p>

<p>
Il sentiero è ben segnalato, facilitando l''esplorazione della **Valle Benedetta**. Incontrerai un rudere storico, la “Puzzolente”, e potrai ammirare i panorami sulla valle.  In fondo al sentiero, troverai una fontanella, un''utile risorsa per idratarti durante l''<strong>escursione**.  
</p>

<h3>Informazioni utili</h3>

<ul>
  <li><strong>Distanza:</strong> Circa 6-8 chilometri</li>
  <li><strong>Dislivello:</strong> 400 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Tempo di percorrenza:</strong> 2/2.30 ore (a ritmo medio)</li>
  <li><strong>Periodo consigliato:</strong> Invernale ed Estivo</li>
  <li><strong>Partenza:</strong> Centro città (attenzione al traffico)</li>
  <li><strong>Punti di interesse:</strong> Rudere della Puzzolente, Fontanella in Valle Benedetta</li>
  <li><strong>Segnaletica:</strong> Sentiero 100 ben segnalato</li>
</ul>

<p>
Questa <strong>escursione sentiero</strong> a <strong>Puzzolente - Valle Benedetta</strong> è un''occasione unica per immergerti nella bellezza della **montagna italiana** e vivere un’indimenticabile <strong>trekking**!  
</p>',
  'Tutte le Attività e Paesi',
  27.58,
  454,
  4,
  377,
  141,
  '02:21',
  141,
  '02:21',
  3418,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fiume, Bagni',
  '2021-11-01',
  '2021-11-01',
  '2021-11-06 00:00:00',
  '2021-11-06 00:00:00',
  'https://it.wikiloc.com/percorsi-mountain-bike/puzzolente-valle-benedetta-per-la-direttissima-88188848',
  NULL,
  43.54942,
  10.305275,
  'POINT(10.305275 43.54942)',
  '4afabdc8ccc227e6388e3a235fe99166fdcadf7e4f94421d61b2efad4f0ad549',
  'Escursione facile Valle Benedetta a Puzzolente (Fiume, Toscana): 27.5km anello, +454m. Percorso adatto a tutti dal centro di Fiume, con sentiero ben segnato ...',
  'Valle Benedetta: escursione facile da Fiume (Toscana)',
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
VALUES (88188848, 'https://it.wikiloc.com/percorsi-mountain-bike/puzzolente-valle-benedetta-per-la-direttissima-88188848', NOW(), '4afabdc8ccc227e6388e3a235fe99166fdcadf7e4f94421d61b2efad4f0ad549')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88188848);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88188848/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/88188848/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88188848;

COMMIT;

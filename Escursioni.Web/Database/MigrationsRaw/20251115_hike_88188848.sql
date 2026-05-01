BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88188848,
  'Puzzolente - Valle Benedetta (Per la direttissima)',
  'Percorso carino alla portata di tutti, le levassimo pause e chiacchierate varie è fattibile farlo in appena 2/2.30 ore. Partenza dal centro cittadino, li bisogna ovviamente fare attenzione alle auto, si procede presso il sottopassaggio della stazione, si supera un ponte della superstrada e finalmente s''arriva all''inizio del percorso. Il percorso ci permette di vedere immediatamente il rudere della puzzolente e in seguito procediamo lungo la strada fino ad imboccare il sentiero 100 da li si dovrà seguire procedendo sempre a dritto verso Valle Benedetta, il sentiero è ben segnato. Vi sarà una fontanella in valle benedetta. Fattibile in ogni periodo dell''anno',
  '<h2 id="escursione-puzzolente-valle-benedetta-per-la-direttissima">Escursione a Puzzolente - Valle Benedetta (Per la direttissima)</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>La partenza per questa escursione è comoda e raggiungibile. Partendo dal centro di <strong>Fiume</strong>, bisogna fare attenzione al traffico urbano. Il percorso inizia passando per il sottopassaggio della stazione ferroviaria. Da lì, si supera un ponte sulla superstrada e si raggiunge l''inizio del sentiero. È un punto di partenza facile da trovare e ben segnalato.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione di circa 27,58 km con un dislivello di +837 metri, è un anello ben tracciato. Inizieremo dal centro di <strong>Fiume</strong>, attraversando la zona urbana con prudenza. Superato il sottopassaggio ferroviario e il ponte sulla superstrada, ci troveremo all''inizio del sentiero. Il percorso ci porta subito a vedere il rudere della <strong>Puzzolente</strong>, e proseguiamo lungo la strada fino all''imbocco del sentiero 100. Da qui, seguiamo il sentiero diretto verso la <strong>Valle Benedetta</strong>, ben segnalato durante tutto il percorso. Lungo il cammino, potrai trovare una fontanella nella valle.  Questo sentiero è perfetto per una bella giornata di escursione, con piacevoli soste e chiacchiere lungo il percorso.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è classificata come <strong>Facile</strong>, adatta a tutti i livelli di esperienza. Il dislivello di 837 metri è gestibile, e il sentiero è ben mantenuto. L''anello di circa 27,58 km richiede circa 2/2.30 ore per essere completato, ma il tempo può variare in base al tuo ritmo e alle soste che farai per ammirare il panorama.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per questo percorso, consigliamo di utilizzare una traccia GPS per facilitare l''escursione. Ricorda di portare con te l''attrezzatura adeguata, come scarpe da trekking, acqua, cibo e un cappello.  Il sentiero è facilmente percorribile durante tutto l''anno, ma si consiglia di verificare le condizioni meteo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 27,58 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 837 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Centro di <strong>Fiume</strong>, accessibile in auto</li>
  <li><strong>Comune:</strong> <strong>Fiume</strong>, <strong>Bagni</strong>, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  27.58,
  837,
  -4,
  377,
  591,
  '9:51',
  514,
  '8:34',
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
  'Livorno e costa toscana',
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

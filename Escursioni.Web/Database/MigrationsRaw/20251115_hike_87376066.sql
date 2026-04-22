BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87376066,
  'Pavone e Masso delle fanciulle',
  'Il sentiero è molto selvaggio anche se a tratti si passa in mezzo a vigneti. Si vedono paesaggi tipici toscani e molto belli ma lo sconsiglio in piena estate, meglio autunno o primavera. Il fiume è meraviglioso e l''acqua sempre fresca è un piacere fare il bagno, vi erano numerose trote, lungo il sentiero abbiamo vito anche delle volpi e fagiani, un percorso tutto naturalistico',
  '<h2>Trekking Pavone e Masso delle Fanciulle: Escursione nella Toscana Selvaggia</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un''escursione indimenticabile lungo il <strong>sentiero Pavone e Masso delle Fanciulle</strong>, un''esperienza di <strong>trekking</strong> che vi condurrà nel cuore della splendida Toscana. Questo <strong>sentiero escursionistico</strong> offre panorami mozzafiato e un''immersione completa nella <strong>natura incontaminata</strong>. Il percorso, di difficoltà media, si snoda attraverso paesaggi tipici toscani, con tratti selvaggi e affascinanti passaggi tra vigneti, offrendo un''esperienza autentica di <strong>trekking in montagna</strong>.</p>

<p>L''escursione inizia da [inserire punto di partenza] e segue il corso del fiume, godendo di viste spettacolari sulle colline circostanti. Attraverserete zone di bosco e si apriranno ampie radure, perfette per ammirare la flora e la fauna locale. Il <strong>sentiero di trekking</strong> è ben segnalato e offre panorami unici, rendendo questa escursione un vero e proprio viaggio alla scoperta della <strong>natura italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Potrete ammirare i paesaggi tipici toscani, caratterizzati da dolci colline, vigneti e oliveti. Il <strong>sentiero</strong> offre la possibilità di avvistare la fauna locale, tra cui <strong>volpi</strong> e <strong>fagiani</strong>. Il fiume è un elemento centrale del percorso, con la possibilità di godere dell''acqua fresca e, in alcuni punti, di fare il bagno. L''escursione è particolarmente consigliata in <strong>autunno</strong> o <strong>primavera</strong>, quando le temperature sono più miti e la natura è al culmine del suo splendore.  Godetevi un''autentica esperienza di <strong>trekking in Toscana</strong>.</p>

<p>In piena estate, il <strong>sentiero</strong> può diventare molto caldo e impegnativo, pertanto è consigliabile optare per periodi più freschi per un''escursione più piacevole.  Questo <strong>sentiero escursionistico</strong> è ideale per gli amanti del <strong>trekking</strong> e dell''escursionismo, offrendo un''esperienza immersiva nella <strong>natura selvaggia</strong> italiana.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Distanza:</strong> Circa [Inserire Distanza] Km</li>
    <li><strong>Dislivello:</strong> [Inserire Dislivello] metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo Consigliato:</strong> Autunno o Primavera</li>
    <li><strong>Punto di partenza:</strong> [Inserire Punto di partenza]</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero naturalistico</li>
    <li><strong>Paesaggi:</strong>  Vigneti, boschi, fiume, colline toscane</li>
    <li><strong>Fauna:</strong> Volpi, fagiani, trote</li>
</ul>

<p>Questo <strong>sentiero</strong> rappresenta una fantastica opportunità per un''escursione di <strong>trekking</strong> nella splendida Toscana. Non perdete l''occasione di esplorare questo angolo di <strong>natura italiana</strong>!</p>',
  'Tutte le Attività e Paesi',
  14.04,
  443,
  116,
  344,
  NULL,
  NULL,
  NULL,
  NULL,
  526,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casa Montacuto',
  '2021-07-01',
  '2021-07-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pavone-e-masso-delle-fanciulle-con-lupus-in-trekking-87376066',
  NULL,
  43.309901,
  10.922557,
  'POINT(10.922557 43.309901)',
  'e7ff6f2921e7bc86f1c99daec9a19ac727fdf133cbae7f34bb4034e2051a1b19',
  'Escursione Pavone Casa Montacuto, Toscana: Anello di 14km, +443m. Sentiero selvaggio tra vigneti e fiume. Ideale in primavera/autunno. Fauna selvatica!',
  'Pavone Toscana: escursione da Casa Montacuto (anello, medio)',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87376066, 'https://it.wikiloc.com/percorsi-escursionismo/pavone-e-masso-delle-fanciulle-con-lupus-in-trekking-87376066', NOW(), 'e7ff6f2921e7bc86f1c99daec9a19ac727fdf133cbae7f34bb4034e2051a1b19')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87376066);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87376066/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87376066;

COMMIT;

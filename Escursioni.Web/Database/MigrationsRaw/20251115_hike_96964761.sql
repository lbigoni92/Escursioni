BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  96964761,
  'Vicopisano - Rocca della Verruca',
  'Partenza da Vicopisano, abbiamo parcheggiato nella piazza principale del paese (il sabato non potete parcheggiare). I sentieri sono molto molto semplici adatti a tutti, l''unica parte più difficile è la salita, che in un breve tratto presenta delle pietre alle quali si dev''essere attenti. Non vi sono fontane lungo il percorso Dalla verruca potrete vedere un panorama unico nel suo genere, La Rocca stessa non è tenuta benissimo ma è comunque un luogo storico più ogni Toscano dovrebbe vedere almeno una volta nella propria vita, la salita alla verruca comporta aiutarsi con le mani nel salire, ma ne vale la pena. Il ritorno non comporta difficoltà abbiamo fatto la direttissima dalla verruca a Vicopisano il percorso era molto molto semplice, percorribile anche in auto, vicino alla verruca vi sono anche i tavolini da picnic',
  '<h2 id="vicopisano-rocca-della-verruca">Escursione a Rocca della Verruca da Vicopisano</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>La partenza per questa bella escursione si trova direttamente nel borgo medievale di <strong id="vicopisano">Vicopisano</strong>, in <strong id="toscana">Toscana</strong>.  Il punto di partenza è la piazza principale del paese. Parcheggiate dove possibile (il sabato non è consentito). Da qui, iniziate il vostro <strong id="trekking">trekking</strong>!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo <strong id="sentiero">sentiero</strong> è perfetto per tutti, anche per chi non ha molta esperienza. Iniziate dalla piazza di <strong id="vicopisano">Vicopisano</strong> e seguite il sentiero che si inoltra nel bosco. La prima parte è molto semplice, con una leggera salita. Dopo circa 3 km, la salita diventa più impegnativa, con alcuni tratti rocciosi dove dovete fare attenzione a dove mettete i piedi.  La salita alla <strong id="rocca-della-verruca">Rocca della Verruca</strong> richiede un po'' di aiuto con le mani per superare alcuni passaggi, ma la vista dalla cima è semplicemente spettacolare! Il ritorno è facile e veloce, con un percorso diretto verso il paese.  Avrete anche la possibilità di pranzare nei tavolini da picnic vicino alla rocca.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong id="escursione">escursione</strong> è classificata come <strong id="difficoltà">Media</strong>. La distanza totale è di 12.96 km con un dislivello positivo di 506 metri. È un <strong id="tipo-giri">anello</strong>, quindi potete tornare al punto di partenza. Portate con voi acqua, una snack e scarpe da trekking adatte.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare la <strong id="traccia-gps">traccia GPS</strong> di questa escursione per guidarvi durante il percorso. Ricordate di controllare sempre le previsioni del tempo prima di partire e di informare qualcuno del vostro itinerario.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
  <li><strong id="distanza">Distanza:</strong> Circa 12.96 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 506 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Media</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Vicopisano, Piazza Principale</li>
  <li><strong id="comune">Comune:</strong> Vicopisano, <strong id="provincia">Toscana</strong></li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  12.96,
  506,
  14,
  517,
  293,
  '4:53',
  255,
  '4:15',
  2274,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vicopisano',
  '2022-03-01',
  '2022-03-01',
  '2022-03-06 00:00:00',
  '2022-03-06 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-rocca-della-verruca-96964761',
  NULL,
  43.699385,
  10.582933,
  'POINT(10.582933 43.699385)',
  '85e4c3d73e154c7a5cc5096e3e19f0e9eb2b9cbb73b8bb2709ca79f1f3294c9d',
  'Escursione Vicopisano Rocca della Verruca: Anello facile in Toscana (13km, 506m dislivello). Partenza da Vicopisano, sentiero semplice ma salita impegnativa....',
  'Rocca della Verruca: Escursione a Vicopisano (Toscana)',
  'Monti Pisani',
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
VALUES (96964761, 'https://it.wikiloc.com/percorsi-escursionismo/vicopisano-rocca-della-verruca-96964761', NOW(), '85e4c3d73e154c7a5cc5096e3e19f0e9eb2b9cbb73b8bb2709ca79f1f3294c9d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 96964761);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/96964761/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/96964761/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 96964761;

COMMIT;

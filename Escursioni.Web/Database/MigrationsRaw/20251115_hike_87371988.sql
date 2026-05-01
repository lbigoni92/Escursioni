BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371988,
  'montemagno Calci',
  'Percorso alla portata di tutti. Non vi sono difficoltà d''alcun tipo, se non in forma può risultare impegnativo il tratto finale della salita. Sentieri: 141 -139 - 143 Il panorama che si vede dalla rocca è meraviglioso, si vede da Livorno a Massa',
  '<h2 id="escursione-montemagno-calci">Escursione al Monte Magno Calci</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bellissima escursione si trova a <strong>Paduletto</strong>, un piccolo comune della provincia di <strong>Toscana</strong>.  È facilmente raggiungibile in auto lungo le strade provinciali, e una volta in paese, è necessario parcheggiare l''auto e seguire il sentiero che sale verso il Monte Magno Calci. In alternativa, è possibile raggiungere il punto di partenza anche a piedi da Paduletto seguendo i sentieri locali.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione di tipo <strong>anello</strong> è pensata per tutti, ma preparatevi per un tratto finale più impegnativo. Il percorso inizia con una salita dolce attraverso sentieri ben tracciati, immersi nel verde della <strong>montagna</strong>.  Dopo circa 6 km, il sentiero si fa più ripido, con alcuni tratti in salita che richiedono un po'' di attenzione, ma la ricompensa è un <strong>panorama</strong> mozzafiato!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa <strong>escursione</strong> è classificata come <strong>media</strong>.  Nonostante la presenza di alcuni tratti ripidi, il sentiero è ben tenuto e adatto anche a escursionisti meno esperti.  Il tratto finale della salita può risultare impegnativo per chi non è abituato a camminare in montagna, ma con un po'' di impegno sarà una bella soddisfazione raggiungere la cima.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per accompagnare la tua escursione, ti forniamo una <strong>traccia GPS</strong> che puoi scaricare e importare nella tua app di navigazione.  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, cibo e un kit di primo soccorso.  L''escursione è consigliata in <strong>primavera, estate e autunno</strong>.  Ricorda di informare qualcuno del tuo itinerario e del tuo rientro.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 10.44 km</li>
  <li><strong>Dislivello:</strong> Circa 476 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Paduletto, Toscana</li>
  <li><strong>Comune:</strong> Paduletto, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.44,
  476,
  13,
  408,
  250,
  '4:10',
  217,
  '3:37',
  2805,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Paduletto',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988',
  NULL,
  43.71621,
  10.51131,
  'POINT(10.51131 43.71621)',
  '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181',
  'Escursione Monte Magno Paduletto (Calci, Toscana): Anello di 10.44km, +476m. Vista mozzafiato su Livorno e Massa! Sentiero facile/medio. Perfetta per famiglie.',
  'Montemagno Calci: Escursione facile da Paduletto (Toscana)',
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
VALUES (87371988, 'https://it.wikiloc.com/percorsi-escursionismo/montemagno-calci-con-lupus-in-trekking-87371988', NOW(), '66584e41b07ddcc236197c0cc5075aa8d95695c12a7de0a9c046d7eceb710181')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371988);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371988/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371988;

COMMIT;

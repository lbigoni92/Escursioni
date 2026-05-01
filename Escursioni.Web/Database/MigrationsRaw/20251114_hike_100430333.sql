BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  100430333,
  'Lucca - Parole d''oro - Acquedotto Romano',
  'Il viaggio sostanzialmente non è ovviamente niente d''impegnativo l''ho fatto perchè non avevo mai visto quella parte dell''acquedotto. La gente parte da Lucca a piedi per arrivare all''inizio dell'' Acquedotto nottolini per fare un pic nic. Il sentiero è su strada bianca e facile da seguire ottimo per una passeggiata, anche se si deve stare attenti quando si attraversa la strada. Vi sono numerose fontane lungo il percorso',
  '<h2 id="lucca-parole-doro-acquedotto-romano">Escursione a Lucca: Parole d''Oro e l''Acquedotto Romano</h2>

<p>
Volevo condividere con voi questa piccola escursione che ho fatto a Lucca, un''esperienza semplice ma affascinante.  Non è un trekking impegnativo, anzi, è perfetta per chi cerca una passeggiata rilassante e per scoprire un pezzo di storia e natura. L''ho fatta principalmente per aver avuto la fortuna di poter ammirare la parte dell''Acquedotto Romanolinuoli, una vera meraviglia ingegneristica,  e poi perché mi era sembrato il luogo ideale per un picnic. 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza per questa escursione è l''inizio del sentiero che costeggia l''Acquedotto Romanolinuoli, facilmente raggiungibile a piedi da Lucca. Da Lucca, si tratta di circa 20-25 minuti di cammino lungo una strada bianca. In alternativa, si può prendere un mezzo pubblico per raggiungere la zona e poi proseguire a piedi.  È un ottimo modo per iniziare il giro e apprezzare già il paesaggio!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il sentiero è un anello di circa 7.37 km che segue il tracciato dell''antico Acquedotto Romanolinuoli. Il percorso è prevalentemente su strada bianca, quindi relativamente facile da seguire.  L''escursione inizia con una leggera salita, poi il sentiero si snoda attraverso campi e vigneti, offrendo panorami piacevoli sulla campagna lucchese.  Ci sono diverse fontane lungo il percorso, perfette per una sosta rinfrescante. L''arrivo alla fine dell''Acquedotto è un momento suggestivo!  È un percorso adatto anche a famiglie con bambini e a chi cerca una camminata senza eccessivi dislivelli.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
Questa escursione è di <b>Facile</b> difficoltà. Il dislivello è di circa 227 metri, quindi non è un percorso particolarmente impegnativo. La distanza è di 7.37 km e si tratta di un giro ad anello, quindi si ritorna al punto di partenza.  È importante indossare scarpe da trekking comode e portare con sé acqua e snack, soprattutto se si fa l''escursione in estate. Fai attenzione quando attraversi la strada, il sentiero passa proprio sopra la strada ed è un punto in cui ci sono spesso pedoni.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Per facilitare l''escursione, ho incluso una traccia GPS che potrai scaricare e utilizzare sul tuo dispositivo.  Il percorso è ben segnalato, ma è sempre consigliabile avere con sé una mappa o un''app di navigazione.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><b>Distanza:</b> Circa 7.37 km (anello)</li>
  <li><b>Dislivello:</b> Circa 227 metri</li>
  <li><b>Difficoltà:</b> Facile</li>
  <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
  <li><b>Punto di partenza:</b> Inizio sentiero che costeggia l''Acquedotto Romanolinuoli, raggiungibile a piedi da Lucca</li>
  <li><b>Comune:</b> Lucca, Toscana</li>
  <li><b>Regione:</b> Italia</li>
  <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.37,
  227,
  -29,
  42,
  158,
  '2:38',
  138,
  '2:18',
  1145,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Roman Catholic Archidiocese of Lucca',
  '2022-04-01',
  '2022-04-01',
  '2022-04-18 00:00:00',
  '2022-04-18 00:00:00',
  'https://it.wikiloc.com/percorsi-cammino/lucca-parole-doro-acquedotto-romano-100430333',
  NULL,
  43.835995,
  10.50772,
  'POINT(10.50772 43.835995)',
  '979ff87926fae04de2596d3a33e881877d8342be180bc0e20cee4b3b7e4e2bbd',
  'Escursione Lucca Acquedotto Romano: percorso facile 7.37km! Ammira l''acquedotto Nottolini da Lucca, ideale per un picnic. Sentiero su strada bianca, +28m dis...',
  'Lucca - Parole d''Oro: Escursione all''Acquedotto Romano',
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
VALUES (100430333, 'https://it.wikiloc.com/percorsi-cammino/lucca-parole-doro-acquedotto-romano-100430333', NOW(), '979ff87926fae04de2596d3a33e881877d8342be180bc0e20cee4b3b7e4e2bbd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100430333);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100430333/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100430333/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100430333;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  133785834,
  'Il Monte del Legnaio - Notturna',
  'Il sentiero è facile anche se bisogna prestare attenzione, specialmente di notte come noi, parcheggio c''è lungo la strada. Il Monte del Legnaio, noto anche come Monte Legnaio, è una collina situata tra Pisa e Massaciuccoli, nella provincia di Pisa, in Toscana, Italia. Il Monte del Legnaio fa parte del complesso delle Colline Pisane ed è situato a nord-ovest di Pisa, non lontano dal Parco Naturale Migliarino-San Rossore-Massaciuccoli. Con i suoi 288 metri di altezza, è una delle colline più alte della zona. Vi consiglio la frontale se andate di notte, scarpe adeguate e portatevi da mangiare!',
  '<h2 id="escursione-monte-del-legnaio-notturna">Escursione al Monte del Legnaio Notturna</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il parcheggio è situato lungo la strada che conduce alla base del sentiero. È un buon punto di partenza per questa escursione, assicurati di arrivare in tempo per goderti la notte.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo anello di 4,47 km ci porta in cima al <strong id="monte-del-legnaio">Monte del Legnaio</strong>, una collina di 288 metri a nord-ovest di Pisa. L''escursione è di livello medio, quindi preparati a un buon cammino, ma è fattibile anche per chi ha un''esperienza di trekking di base. Il sentiero si snoda attraverso il paesaggio collinare toscano, offrendo panorami mozzafiato, soprattutto di notte. È consigliabile seguire attentamente il percorso, soprattutto quando si cammina al buio, e indossare scarpe adeguate.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>L''escursione al <strong id="monte-del-legnaio">Monte del Legnaio</strong> presenta una <strong id="difficoltà">difficoltà media</strong>. Il dislivello di 233 metri richiede un po'' di allenamento, ma il sentiero è ben tenuto e il percorso è fattibile per escursionisti di livello base. È importante portare con sé acqua, cibo e abbigliamento adeguato, soprattutto se si sceglie di affrontare l''escursione di notte.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Preparati per un''escursione di circa 4.47 km con un dislivello di 233 metri. Questo anello ti porterà alla cima del <strong id="monte-del-legnaio">Monte del Legnaio</strong>. </p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong id="distanza">Distanza:</strong> Circa 4.47 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 233 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Media</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Parcheggio lungo la strada</li>
  <li><strong id="comune">Comune:</strong> Colognole, <strong id="regione">Toscana, Italia</strong></li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.47,
  233,
  14,
  214,
  109,
  '1:49',
  95,
  '1:35',
  431,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Colognole',
  '2023-05-01',
  '2023-05-01',
  '2023-05-04 00:00:00',
  '2023-05-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/il-monte-del-legnaio-notturna-133785834',
  NULL,
  43.800883,
  10.395898,
  'POINT(10.395898 43.800883)',
  'b74c7c09fc5b1f999deeaf219b738a8eed1092378fd7298db51f7b434d7d07ee',
  'Escursione notturna Monte del Legnaio (Colognole, Toscana): Anello facile 4.47km, +169m. Perfetta per una passeggiata serale tra Pisa e Massaciuccoli!',
  'Monte Legnaio: escursione notturna da Colognole (Toscana)',
  'Versilia e Massarosa',
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
VALUES (133785834, 'https://it.wikiloc.com/percorsi-escursionismo/il-monte-del-legnaio-notturna-133785834', NOW(), 'b74c7c09fc5b1f999deeaf219b738a8eed1092378fd7298db51f7b434d7d07ee')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 133785834);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/133785834/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478884,
  'Forato da Stazzema',
  'Partenza da Stazzema - al parcheggio (costo 3 euro) Il sentiero è bello e si passa vicino a delle cappelle poste per il pellegrinaggio. Si segue il sentiero fino a foce di petrosciana; da li s''imbocca il sentiero 110 e s''arriva al monte forato, un paio di punti possono dare problemi a chi ha problemi con l''altezze, ma niente di complesso. Abbiamo pranzato sul Forato e vista la croce, in seguito siamo scesi sul 12 e tornati a Stazzema. Sentiero molto bello lo consiglio ma portatevi scarpe adeguate',
  '<h2 id="escursione-forato-da-stazzema">Escursione al Monte Forato da Stazzema</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è il comune di Stazzema. Troverete un parcheggio dove è previsto un costo di 3 euro. Da qui, iniziate a seguire il sentiero che si snoda verso il monte Forato.  È un ottimo punto di partenza per un''escursione in montagna!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>L''escursione inizia con una facile salita attraverso il sentiero che costeggia la foce della Petrosciana. Il sentiero è ben tenuto e offre un panorama sempre più ampio.  Proseguite fino al monte Forato, dove potrete ammirare la croce e, in giornate limpide, un panorama mozzafiato.  Ricordatevi che alcuni punti di elevazione potrebbero essere impegnativi per chi soffre di vertigini, ma il percorso in sé non presenta ostacoli complessi.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come <b>Facile</b>. La distanza totale è di circa 14.53 km con un dislivello di 554 metri.  Adatta a famiglie e a chi cerca una piacevole passeggiata in montagna, ma considerate di portare scarpe adeguate per affrontare il sentiero.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>La traccia GPS di questa escursione vi aiuterà a orientarvi lungo il sentiero. È un''ottima idea per pianificare l''escursione e per condividere l''esperienza con amici e parenti.  Consigliamo di controllare le previsioni meteo prima di partire e di indossare abbigliamento e calzature adatte.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 14.53 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 554 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio a Stazzema</li>
  <li><strong>Comune:</strong> Orzale, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  14.53,
  554,
  554,
  1230,
  381,
  '5:27',
  284,
  '4:44',
  4490,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Orzale',
  '2021-05-01',
  '2021-05-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884',
  NULL,
  44.001784,
  10.338317,
  'POINT(10.338317 44.001784)',
  '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8',
  'Escursione Monte Forato da Stazzema (Toscana): percorso facile di 14.5km, +700m dislivello. Partenza da Orzale, ideale per famiglie e amanti del trekking. Vist...',
  'Monte Forato: escursione da Stazzema (facile, panorama)',
  'Alpi Apuane',
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
VALUES (87478884, 'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884', NOW(), '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478884);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478884/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478884;

COMMIT;

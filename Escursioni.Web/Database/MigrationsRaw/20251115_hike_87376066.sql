BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87376066,
  'Pavone e Masso delle fanciulle',
  'Il sentiero è molto selvaggio anche se a tratti si passa in mezzo a vigneti. Si vedono paesaggi tipici toscani e molto belli ma lo sconsiglio in piena estate, meglio autunno o primavera. Il fiume è meraviglioso e l''acqua sempre fresca è un piacere fare il bagno, vi erano numerose trote, lungo il sentiero abbiamo vito anche delle volpi e fagiani, un percorso tutto naturalistico',
  '<h2 id="escursione-pavone-e-masso-delle-fanciulle">Escursione al Pavone e al Masso delle Fanciulle</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

Arrivati a Casa Montacuto, il punto di partenza dell''escursione al Pavone e al Masso delle Fanciulle è facilmente individuabile. Da qui, segui il sentiero che si inoltra nel bosco, tenendo conto che il percorso è piuttosto selvaggio e a tratti passa attraverso vigneti.  È consigliabile arrivare in auto, parcheggiando nei pressi del comune.

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

Questo trekking di circa 14 km, con un dislivello di 443 metri, è un anello che ti condurrà attraverso un paesaggio toscano autentico. Inizierai dall''inizio del sentiero a Casa Montacuto e seguirai il sentiero verso l''alto, passando per vigneti e zone boschive.  La salita è moderata, con alcuni tratti più impegnativi, ma la ricompensa sarà un panorama mozzafiato. Durante l''escursione potrai ammirare i paesaggi tipici della Toscana, il corso del fiume che offre la possibilità di fare il bagno nelle sue acque fresche, e la fauna locale, tra cui volpi e fagiani.  Il sentiero presenta alcuni tratti esposti con una lieve pendenza.

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

Questa escursione è classificata come di difficoltà Medio. Richiede una buona preparazione fisica, soprattutto per il dislivello di 443 metri. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, snack e abbigliamento adeguato.  Considera che il sentiero è selvaggio e non è dotato di infrastrutture.  Lo sconsiglio in piena estate a causa del forte sole.  L''autunno o la primavera sono i periodi ideali per godere appieno di questo percorso.

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Al momento non è disponibile una traccia GPS per questa escursione. Ti consiglio di scaricare una mappa dettagliata della zona e di utilizzare un''app di navigazione per smartphone durante il trekking.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul>
  <li><b>Distanza:</b> Circa 14.04 km (anello)</li>
  <li><b>Dislivello:</b> Circa 443 metri</li>
  <li><b>Difficoltà:</b> Medio</li>
  <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
  <li><b>Punto di partenza:</b> Casa Montacuto, accessibile in auto</li>
  <li><b>Comune:</b> Casa Montacuto, Toscana, Italia</li>
  <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  14.04,
  443,
  116,
  344,
  300,
  '5:00',
  261,
  '4:21',
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
  'Pavone e Masso delle Fanciulle: Escursione Toscana Casa M...',
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

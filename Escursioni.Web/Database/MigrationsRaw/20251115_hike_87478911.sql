BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478911,
  'Sentiero del Pellegrino - Castellaccio',
  'Il sentiero è di facile percorrenza, se si fa la salita al calasole i noterà un paesaggio bellissimo e potremo vedere d''estate il sole tramontare sulla città. Alla fine della salita vi è un tavolo da Pick nik dove poterci ristorare. Potete fare il sentiero con ogni tipologia di scarpe... ma per l''amor di dio, mettete scarpe chiuse. NON vi sono fontanelle Ambiamo trovato 2 fagiani :)',
  '<h2 id="sentiero-pellegrino-castellaccio">Escursione al Sentiero del Pellegrino - Castellaccio</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza del sentiero del Pellegrino a Castellaccio, puoi prendere l''autostrada A12 e uscire a Grosseto. Da lì, segui le indicazioni per Castellaccio. Il comune è facilmente raggiungibile in auto, e una volta arrivati, il punto di partenza è ben segnalato.  Ricorda che puoi anche arrivare a piedi se sei un amante del trekking!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo sentiero di anello è perfetto per una giornata all''aria aperta! Inizi da un punto facilmente accessibile e la salita è graduale, quindi adatta a tutti i livelli.  Superato un tratto più impegnativo, la ricompensa è un panorama mozzafiato sulla città.  Alla fine del percorso, potrete pranzare al tavolo da picnic predisposto, godendovi un meritato riposo e ammirando il panorama.  Il sentiero è ben segnalato, ma è sempre consigliabile avere una mappa e una buona bussola.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è classificata come <strong>Facile</strong>, il che significa che è adatta anche a chi non ha molta esperienza nel trekking. Il dislivello di <strong>+279 metri</strong> è gestibile per tutti, ma è importante indossare scarpe da trekking e, soprattutto, <strong>scarpe chiuse</strong>.  È un''escursione di circa <strong>13.2 km</strong> ad anello.  Durante l''escursione, potrete ammirare un bellissimo paesaggio, magari avvistando anche qualche fagiano!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per facilitare il vostro percorso, vi forniamo una <strong>traccia GPS</strong> (da scaricare e utilizzare con un''applicazione di navigazione). L''escursione è di tipo <strong>Anello</strong>.  Si consiglia di partire in primavera, estate o autunno per godere appieno delle bellezze naturali della zona.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong id="dista-1">Distanza:</strong> Circa 13.2 km (anello)</li>
    <li><strong id="disl-1">Dislivello:</strong> Circa 279 metri</li>
    <li><strong id="diff-1">Difficoltà:</strong> Facile</li>
    <li><strong id="perd-1">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="part-1">Punto di partenza:</strong> Punto di partenza sentiero del Pellegrino, Castellaccio, Toscana, Italia</li>
    <li><strong id="com-1">Comune:</strong> Castellaccio, Toscana</li>
    <li><strong id="tipo-1">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.2,
  279,
  74,
  320,
  309,
  '4:24',
  230,
  '3:50',
  3110,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-02-01',
  '2021-02-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sentiero-del-pellegrino-castellaccio-con-lupus-in-trekking-87478911',
  NULL,
  43.48646,
  10.363006,
  'POINT(10.363006 43.48646)',
  '658f88e6e6307488b2c9fadb4015e14afb760a7c076be5b025d5ff261e601c81',
  'Escursione Castellaccio: Sentiero del Pellegrino (Toscana) 13.2km, +279m Facile. Anello panoramico al calasole con vista su Massa. Ideale con scarpe chiuse!',
  'Castellaccio: escursione facile sul Sentiero del Pellegrino',
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
VALUES (87478911, 'https://it.wikiloc.com/percorsi-escursionismo/sentiero-del-pellegrino-castellaccio-con-lupus-in-trekking-87478911', NOW(), '658f88e6e6307488b2c9fadb4015e14afb760a7c076be5b025d5ff261e601c81')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478911);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478911/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478911;

COMMIT;

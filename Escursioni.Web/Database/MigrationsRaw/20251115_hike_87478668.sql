BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478668,
  'Valle Benedetta',
  'Percorso carino e tranquillo, adatto a tutti; volete fare una passeggiata in famiglia? bhè troverete numerose panchine. Non vi sono fontanelle. Il santuario della sambuca, luogo principe di questo trek è anche un ottimo posto dove mangiare ma ve lo sconsiglio in giornate troppo affollate come il 2 Giugno o simili. Alla sambuca troverete anche dei cestini. Al km 9.6 troverete un bellissimo spiazzo dove godere di un bellissimo panorama, se siete fortunati vedrete delle caprette. Consiglio scarpe da trekking',
  '<h2 id="escursione-valle-benedetta">Escursione nella Valle Benedetta: Un Percorso Tranquillo per Tutta la Famiglia</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa escursione si trova a <strong>Valle Benedetta</strong>, in Toscana. Raggiungere il comune è semplice: si può arrivare in auto seguendo le indicazioni stradali da San Miniato. Il parcheggio più comodo è situato vicino al primo tratto del sentiero, facilmente raggiungibile anche a piedi. Una volta parcheggiato, segui semplicemente le indicazioni per l''inizio del <strong>sentiero</strong>.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Questo <strong>trekking</strong> nella <strong>Valle Benedetta</strong> è un percorso carino e tranquillo, perfetto per una <strong>escursione</strong> in famiglia. Il sentiero è ben segnalato e si snoda dolcemente attraverso il paesaggio collinare toscano. Inizierete da un punto di partenza facilmente accessibile e seguirete il sentiero che vi condurrà attraverso boschi e ampie radure. Avrete numerose panchine lungo il percorso, ideali per una pausa.  Il percorso raggiunge il <strong>santuario della sambuca</strong>, un luogo suggestivo dove ammirare il panorama. Dopo il santuario, il sentiero prosegue per un bellissimo spiazzo dove potrete godere di un panorama mozzafiato, e se siete fortunati, potrete avvistare delle caprette. Il giro ad anello vi riporterà al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è di <strong>facilità</strong>, adatta a tutti, compresi bambini e anziani. La <strong>distanza totale</strong> è di circa 11.83 km e il <strong>dislivello</strong> è di 307 metri.  Si consigliano scarpe da trekking per affrontare il percorso con comodità, soprattutto se il sentiero è umido. Ricordate che non ci sono fontanelle lungo il percorso, quindi portate con voi acqua e snack. </p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare la <strong>traccia GPS</strong> di questa <strong>escursione</strong> qui: [Inserire link alla traccia GPS]</p>
<p>Consigliamo di controllare le previsioni del tempo prima di partire e di indossare abbigliamento e scarpe adatte.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 11.83 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 307 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parcheggio vicino al sentiero a Valle Benedetta, Toscana</li>
  <li><strong>Comune:</strong> Valle Benedetta, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.83,
  307,
  129,
  322,
  242,
  '4:03',
  211,
  '3:31',
  2659,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2021-07-01',
  '2021-07-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-87478668',
  NULL,
  43.526069,
  10.412709,
  'POINT(10.412709 43.526069)',
  'ada1a42fcbdc0a7d5b344c7a89ea090b38ba6cac7523489993367096eecb44aa',
  'Escursione Valle Benedetta Toscana: percorso facile di 11.8km con +307m dislivello. Anello adatto a famiglie, tra santuario sambuca e panorama! ⛰️',
  'Valle Benedetta: escursione facile in Toscana +307m',
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
VALUES (87478668, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-87478668', NOW(), 'ada1a42fcbdc0a7d5b344c7a89ea090b38ba6cac7523489993367096eecb44aa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478668);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478668/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478668;

COMMIT;

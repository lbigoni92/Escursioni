BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87478668,
  'Valle Benedetta',
  'Percorso carino e tranquillo, adatto a tutti; volete fare una passeggiata in famiglia? bhè troverete numerose panchine. Non vi sono fontanelle. Il santuario della sambuca, luogo principe di questo trek è anche un ottimo posto dove mangiare ma ve lo sconsiglio in giornate troppo affollate come il 2 Giugno o simili. Alla sambuca troverete anche dei cestini. Al km 9.6 troverete un bellissimo spiazzo dove godere di un bellissimo panorama, se siete fortunati vedrete delle caprette. Consiglio scarpe da trekking',
  '<h2>Valle Benedetta Trekking: Escursione Tranquilla in Montagna</h2>

<h3>Il Percorso</h3>
<p>La <strong>Valle Benedetta</strong> offre un''<strong>escursione</strong> <em>tranquilla</em> e accessibile, ideale per una <strong>trekking</strong> di famiglia. Questo <strong>sentiero</strong> si snoda attraverso un paesaggio montano mozzafiato, caratterizzato da boschi rigogliosi e panorami spettacolari. Il percorso è adatto a tutti, anche a chi non ha molta esperienza di <strong>trekking</strong>, grazie alla sua facilità e alla presenza di numerosi punti di sosta. La lunghezza del <strong>sentiero</strong> è di circa 9,6 chilometri, con un dislivello di circa 400 metri.  Preparatevi per una <strong>passeggiata in montagna</strong> immersa nella <strong>natura</strong>, un''esperienza unica per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<p>Durante questa <strong>escursione</strong> nella <strong>Valle Benedetta</strong>, potrete ammirare panorami mozzafiato, respirare aria pulita e godervi la tranquillità della <strong>montagna</strong>.  Questo <strong>sentiero</strong> è particolarmente adatto per una <strong>trekking</strong> familiare, grazie alla presenza di panchine lungo il percorso e alla possibilità di godere di un momento di relax nel magnifico <em>santuario della sambuca</em>.  Tuttavia, è importante notare che non sono presenti fontanelle, quindi è consigliabile portare con sé acqua a sufficienza, soprattutto nelle giornate più calde.  La  <strong>Valle Benedetta</strong> è un luogo ideale per un''<em>escursione</em> di un giorno, ma è anche possibile prolungare la <strong>trekking</strong> dedicando più tempo all''esplorazione dei dintorni.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile - Media</li>
    <li><strong>Distanza:</strong> 9,6 km</li>
    <li><strong>Dislivello:</strong> 400 m</li>
    <li><strong>Tipo di attività:</strong> Trekking, Escursione</li>
    <li><strong>Adatto a:</strong> Famiglie, Principianti, Amanti della natura</li>
    <li><strong>Punti di interesse:</strong> Santuario della Sambuca, Spiazzo panoramico, Possibilità di avvistare capre</li>
    <li><strong>Note importanti:</strong>  Non ci sono fontanelle lungo il percorso.  Il <em>santuario della sambuca</em> è un ottimo luogo per una pausa pranzo, ma è consigliabile evitarlo in giornate di alta affluenza, come il 2 Giugno, per godere appieno della <strong>trekking</strong>.</li>
</ul>

<p>Preparate le vostre <strong>scarpe da trekking</strong> e godetevi questa meravigliosa <strong>escursione</strong> nella <strong>Valle Benedetta</strong>, un vero gioiello della <strong>montagna italiana</strong>!  Vivi un''esperienza indimenticabile con un''<em>escursione</em> nella natura, perfetta per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>sentieri Italia</strong>.</p>',
  'Tutte le Attività e Paesi',
  11.83,
  307,
  129,
  322,
  242,
  '04:02',
  NULL,
  NULL,
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
  'Valle Benedetta: Escursione facile e tranquilla in Piemonte. Ideale per famiglie e amanti della natura. Scopri il Santuario della Sambuca e panorami mozzafiato!',
  'Trekking Valle Benedetta: Escursione Tranquilla in Piemonte',
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

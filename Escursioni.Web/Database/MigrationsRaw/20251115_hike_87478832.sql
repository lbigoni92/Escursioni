BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478832,
  'San rossore camminata',
  'La camminata è adatta a persone d''ogni età Possibile farla con qualsiasi tipo di scarpe (se piove mettete quelle chiuse per il fango) All''interno del parco è possibile vedere uccelli; daini e ungulati. Un panorama tutto toscano all''interno di una riserva nautale tra le più belle al mondo, è possibile farlo anche a cavallo o in carrozza. Lo consiglio per pick nik domenicali o braciate con gli amici. SIATE RISPETTOSI DELL''AMBIENTE !',
  '<h2 id="san-rossore-camminata">Escursione al San Rossore: Camminata Facile nel Cuore della Toscana</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bellissima escursione nel San Rossore si trova a <strong id="punto-di-partenza">Casseine Vecchie</strong>, in provincia di <strong id="provincia">Toscana</strong>, regione <strong id="regione">Italia</strong>. È facilmente raggiungibile in auto dalla Firenze, seguendo le indicazioni per il Parco Naturale del San Rossore. In alternativa, se preferite, potete arrivare a piedi, godendovi un piacevole tratto del sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione è un''ottima opportunità per esplorare la natura toscana in modo semplice e rilassante. Il sentiero è di <strong id="tipo-di-sentiero">solo andata</strong>, con una lunghezza di circa <strong id="distanza">6.78 km</strong>. Il dislivello è di <strong id="dislivello">0 metri</strong>, quindi è un percorso adatto a persone di <strong id="difficoltà">tutte le età</strong>. Potrete ammirare paesaggi mozzafiato, con una vista panoramica sulla campagna toscana e avvistare fauna selvatica come uccelli, daini e ungulati. Non dimenticate di indossare scarpe comode, adatte per camminare!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come <strong id="difficoltà">facile</strong>, il che significa che è accessibile a tutti, indipendentemente dal vostro livello di allenamento. Il percorso è pianeggiante e ben segnalato, rendendolo ideale anche per famiglie con bambini. Ricordatevi di portare con voi acqua e snack, soprattutto se fate un <strong id="tipo-di-sentiero">solo andata</strong>, e di rispettare l''ambiente circostante.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare la <strong id="traccia-gps">traccia GPS</strong> di questa escursione per seguirla comodamente durante il percorso. Per maggiori informazioni pratiche, ecco i dettagli:</p>
<ul>
    <li><strong id="distanza">Distanza:</strong> Circa 6.78 km (solo andata)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 0 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Cascine Vecchie, accessibile in auto o a piedi</li>
    <li><strong id="comune">Comune:</strong> Cascine Vecchie, Toscana</li>
    <li><strong id="regione">Regione:</strong> Italia</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong id="distanza">Distanza:</strong> Circa 6.78 km (andata e ritorno / solo andata)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 0 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Cascine Vecchie, accessibile in auto / a piedi</li>
    <li><strong id="comune">Comune:</strong> Cascine Vecchie, Toscana</li>
    <li><strong id="regione">Regione:</strong> Italia</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.78,
  0,
  22,
  28,
  145,
  '1:57',
  102,
  '1:42',
  1617,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Cascine Vecchie',
  '2021-06-01',
  '2021-06-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832',
  NULL,
  43.728834,
  10.320219,
  'POINT(10.320219 43.728834)',
  '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d',
  'Escursione facile San Rossore Cascine Vecchie, Toscana: 6.78km | +7m | Percorso naturale ideale per passeggiate domenicali, famiglie e amanti della natura. O...',
  'San Rossore: Escursione Facile nel Parco Toscano',
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
VALUES (87478832, 'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832', NOW(), '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478832);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478832/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478832;

COMMIT;

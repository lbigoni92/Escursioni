BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  268624800,
  'Mondsee',
  'Facile percorso ad anello sulle sponde del lago, ideale per una camminata rilassante senza dislivelli significativi, con partenza da un comodo parcheggio gratuito nei pressi del centro abitato. L’itinerario costeggia il suggestivo Mondsee, uno dei laghi più scenografici della regione del Salzkammergut, caratterizzato da acque limpide, scorci alpini e piccoli punti balneabili lungo la riva. Il sentiero segue prevalentemente la linea del lago, alternando tratti su passeggiata, banchine naturali e brevi passaggi su strade secondarie a basso traffico. Lungo il percorso si incontrano aree verdi, punti panoramici e zone tranquille ideali per soste o picnic. Il giro è adatto a tutti: famiglie, camminatori occasionali e chi cerca un’attività leggera immersa nella natura. L’assenza di dislivelli importanti e la facilità di orientamento lo rendono un percorso perfetto anche nelle giornate calde o come tappa di relax durante un viaggio in Austria. Un’esperienza semplice ma molto gratificante, con continui scorci sul lago e sulle montagne circostanti, facilmente accessibile grazie ai parcheggi gratuiti presenti nelle vicinanze.',
  '<h2 id="escursione-mondsee-anello-lago">Escursione al Lago Mondsee: Anello Panoramico</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione è facilmente raggiungibile. Si trova in prossimità del centro abitato di <strong>Mondsee</strong>, in un comodo parcheggio gratuito. Da qui, segui le indicazioni per i sentieri attorno al lago. L''accessibilità in auto è ottima, e il parcheggio è pratico anche per chi arriva in autobus.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo itinerario di <strong>2.5 km</strong> è un vero gioiello! Si tratta di un <strong>anello</strong> che segue il perimetro del meraviglioso <strong>lago Mondsee</strong>, uno dei laghi più belli della regione del <strong>Salzkammergut</strong> in <strong>Austria</strong>. Il sentiero è prevalentemente pianeggiante, con solo un leggero <strong>dislivello di +6 metri</strong>, il che lo rende ideale per tutti i livelli. Percorrerai principalmente la linea del lago, con tratti su passeggiate, banchine e strade secondarie. Lungo il percorso potrai ammirare scorci alpini, acque limpide, piccoli punti balneabili e aree verdi dove fermarti per un picnic.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> è classificata come <strong>facile</strong>, perfetta per famiglie, camminatori occasionali e chiunque cerchi una passeggiata rilassante. Il dislivello minimo e la facilità di orientamento rendono il percorso adatto anche alle giornate più calde. Non ti spaventano i panorami mozzafiato?</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Non ho ancora una traccia GPS a disposizione, ma puoi facilmente trovare indicazioni e mappe online per questa bellissima escursione.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 2.5 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 6 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parcheggio gratuito nei pressi del centro abitato di Mondsee</li>
    <li><strong>Comune:</strong> Mondsee, Austria</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  2.5,
  0,
  481,
  488,
  43,
  '0:43',
  38,
  '0:38',
  63,
  'Facile',
  'Anello',
  NULL,
  NULL,
  NULL,
  NULL,
  '2026-06-01',
  '2026-06-01',
  '2026-06-09 00:00:00',
  '2026-06-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/mondsee-268624800',
  NULL,
  47.852632,
  13.345899,
  'POINT(13.345899 47.852632)',
  'aa9862f82e549cc626ea2ec9763701106f2a81fff1b83dd515d7f6d3020b9095',
  'Escursione Mondsee: Anello facile sul lago del Salzkammergut (Austria) 2.5km, +6m. Ideale per famiglie e camminate rilassanti!',
  'Mondsee: Escursione in Anello sul Lago (Facile)',
  'Estero',
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
VALUES (268624800, 'https://it.wikiloc.com/percorsi-escursionismo/mondsee-268624800', NOW(), 'aa9862f82e549cc626ea2ec9763701106f2a81fff1b83dd515d7f6d3020b9095')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 268624800);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/268624800/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 268624800;

COMMIT;

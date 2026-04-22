BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87372464,
  'Annello: Castellaccio - Romito - Maroccone',
  'FACILE ALLA PORTATA DI TUTTI La discesa dal Castellaccio è semplice e ben segnata, il tratto finale se piove è pericoloso, altrimenti non vi sono problemi di nessun tipo. Prestare attenzione sulla strada Tratto in salita facile, ben segnalato ma occhio a i cinghiali ne abbiamo trovato uno.',
  '<h2>Annello: Castellaccio - Romito - Maroccone - Escursione Trekking in Montagna</h2>

<h3>Il percorso</h3>

<p>Questo splendido <em>annello di trekking</em> vi condurrà attraverso alcuni dei paesaggi più suggestivi della Garfagnana, in Toscana. L''<em>escursione</em> inizia con una facile discesa dal <strong>Castellaccio</strong>, un''imponente formazione rocciosa, e prosegue attraverso il <strong>Romito</strong> e poi fino al <strong>Maroccone</strong>, offrendo panorami mozzafiato sulla valle sottostante.  Adatto a tutti, questo <em>sentiero di trekking</em> è una perfetta introduzione all''esplorazione della <em>montagna</em> e della <em>natura</em> italiana.</p>

<p>Il percorso è prevalentemente in salita, ma ben segnalato e di difficoltà <em>facile</em>, ideale per una <em>escursione</em> di un giorno per famiglie e appassionati di <em>trekking</em>.  L''<em>annello</em> permette di ammirare diverse zone di interesse, dalla roccia scoscesa del Castellaccio alle praterie del Romito, culminando con la vista sul massiccio del Maroccone.</p>

<h3>Cosa aspettarsi</h3>

<ul>
    <li>Facile <em>sentiero di trekking</em> adatto a tutti i livelli.</li>
    <li>Panorami mozzafiato sulla Valca e sulla Garfagnana.</li>
    <li>Possibilità di avvistare la fauna locale, tra cui <em>cinghiali</em>.</li>
    <li>Percorso ben segnalato e di facile percorrenza.</li>
    <li>Adatto per una giornata di <em>trekking</em> in <em>montagna</em>.</li>
</ul>

<p>Ricordatevi di controllare le previsioni meteo prima di partire e di indossare scarpe da trekking adatte.  L''<em>escursione</em> sul <strong>Castellaccio - Romito - Maroccone</strong> è un''esperienza indimenticabile per gli amanti del <em>trekking</em> in <em>Italia</em>.</p>

<h3>Informazioni utili</h3>

<ul>
    <li><strong>Distanza:</strong> Circa 12-14 km</li>
    <li><strong>Dislivello:</strong> Circa 500-600 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Tempo di percorrenza:</strong> Circa 4-5 ore</li>
    <li><strong>Punto di partenza:</strong> Castellaccio (parcheggio)</li>
    <li><strong>Consigli:</strong> Portare acqua, snack, scarpe da trekking, cappello e crema solare. Fate attenzione alla strada durante la discesa, soprattutto in caso di pioggia.</li>
</ul>

<p>Scoprite la bellezza del <em>trekking</em> in Toscana con questo <em>sentiero</em>! Un''<em>escursione</em> perfetta per chi cerca un''<em>escursione</em> <em>facile</em> e ricca di emozioni nella <em>montagna</em> e nella <em>natura</em> italiana.  Organizzate la vostra <em>escursione</em> di un giorno al <strong>Castellaccio - Romito - Maroccone</strong>!</p>',
  'Tutte le Attività e Paesi',
  10.56,
  300,
  11,
  296,
  4,
  '00:04',
  NULL,
  NULL,
  278,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-02-01',
  '2021-02-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464',
  NULL,
  43.485888,
  10.362884,
  'POINT(10.362884 43.485888)',
  '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51',
  'Escursione Castellaccio Romito Maroccone Toscana: Anello facile 10.5km, 300m dislivello. Trekking in provincia di Massa, ideale per famiglie e principianti.',
  'Castellaccio - Romito - Maroccone: Escursione Toscana Facile',
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
VALUES (87372464, 'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464', NOW(), '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372464);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372464/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372464;

COMMIT;

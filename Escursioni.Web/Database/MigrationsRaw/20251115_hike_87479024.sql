BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87479024,
  'Vecchiano-Nodica',
  'Percorso molto carino sul monte legnaiolo fatto in diurna, tecnicamente per nulla impegnativo, lo consiglio anche a famiglie. Un tratto è ciottoloso ma niente di complicato, scarpe da trekking o scarpe chiuse vanno BENISSIMO, Usate scarpe adeguate. C''è QUALCHE CARTELLO sul percorso, ma non avrete la necessità d''usarli è a prova di persona senza senso d''orientamento. Fattibile anche in notturno.',
  '<h2>Escursione Vecchiano-Nodica: Trekking in Diurna sul Monte Legnaiolo</h2>

<h3>Il Percorso</h3>

<p>Preparatevi per un’<em>escursione</em> indimenticabile lungo il sentiero <strong>Vecchiano-Nodica</strong>, un percorso di <em>trekking</em> particolarmente apprezzato per la sua facilità e bellezza paesaggistica. Questo <em>sentiero</em> si snoda attraverso la diurna del monte Legnaiolo, offrendo un’esperienza di <em>natura</em> incontaminata adatta a tutti. Il percorso, tecnicamente semplice, è ideale per famiglie e per chi cerca un’<em>escursione</em> piacevole e senza particolari ostacoli.</p>

<p>La maggior parte del percorso è costituita da un terreno compatto, con alcune sezioni ciottolose che aggiungono un tocco di sfida. Tuttavia, la difficoltà è minima, rendendo questo <em>sentiero</em> accessibile anche a chi non ha molta esperienza.  È un’ottima opportunità per un’<em>escursione</em> in <em>montagna</em> e per godere dei panorami mozzafiato. Si consiglia vivamente l''utilizzo di <em>scarpe da trekking</em> o <em>scarpe chiuse</em> per affrontare il terreno, per una maggiore sicurezza e comfort durante l''<em>escursione</em>.</p>

<h3>Cosa Aspettarsi</h3>

<ul>
  <li>Un percorso di circa <strong>6 km</strong> di lunghezza.</li>
  <li>Un dislivello di <strong>350 metri</strong>, con salite e discese dolci.</li>
  <li>Un’<em>escursione</em> di circa <strong>3-4 ore</strong>, a seconda del ritmo.</li>
  <li>Un’esperienza di <em>trekking</em> immersa nella <em>natura</em> e nel silenzio della <em>montagna</em>.</li>
  <li>Possibilità di praticare <em>trekking</em> e <em>escursioni</em> in totale sicurezza.</li>
</ul>

<p>Nonostante l''assenza di cartelli ufficiali lungo il percorso, il <strong>sentiero Vecchiano-Nodica</strong> è facile da seguire grazie alla sua natura intuitiva.  L''<em>escursione</em> è adatta anche a chi non ha un grande senso dell''orientamento, il che la rende una scelta eccellente per un’<em>escursione</em> in famiglia.</p>

<h3>Informazioni Utili</h3>

<p>Questo <em>sentiero</em> è fattibile anche in notturno, offrendo un''esperienza unica e suggestiva.  Ricordatevi di informarsi sulle condizioni meteorologiche prima di partire e di indossare abbigliamento adeguato.  L''<em>escursione</em> è perfetta per chi cerca un’<em>escursione</em> semplice, ma con un bel panorama e la possibilità di immergersi nella <em>natura</em>. Per un''<em>escursione</em> a piedi in <em>montagna</em>, il <strong>Vecchiano-Nodica</strong> è una scelta valida per tutti.  Godetevi l’<em>escursione</em> lungo questo bellissimo <em>sentiero</em> in <em>montagna</em>!</p>',
  'Tutte le Attività e Paesi',
  10.89,
  309,
  2,
  183,
  317,
  '05:17',
  NULL,
  NULL,
  3483,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2020-10-01',
  '2020-10-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-nodica-con-lupus-in-trekking-87479024',
  NULL,
  43.78244,
  10.387717,
  'POINT(10.387717 43.78244)',
  'd98fe431b2f3b99111fce02dc815214da1bd3c2af5a28eab072f5a402babc545',
  'Escursione Vecchiano-Nodica: Anello facile in Toscana (10.9km, +309m). Trekking nel Monte Legnaiolo, adatto a famiglie e principianti. Sentiero ciottolato, f...',
  'Monte Legnaiolo: escursione Vecchiano-Nodica (facile, anello)',
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
VALUES (87479024, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-nodica-con-lupus-in-trekking-87479024', NOW(), 'd98fe431b2f3b99111fce02dc815214da1bd3c2af5a28eab072f5a402babc545')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479024);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479024/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479024;

COMMIT;

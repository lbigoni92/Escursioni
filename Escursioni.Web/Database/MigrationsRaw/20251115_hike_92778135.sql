BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92778135,
  'Passeggiata sul lungomare - Ardenza - Livorno',
  'Passeggiata lungomare di Livorno. Percorso molto semplice e alla portata di tutti sempre in piano tranne qualche discesa alle spiaggette, vi sono numerosi bar, fontanelle e ristoranti. Ci sono molti bei posti dove scattare foto, la passeggiata non presenta problemi e anche di sera è illuminata. Ottimo in Primavera o Autunno',
  '<h2 id="passeggiata-lungomare-ardenza-livorno">Passeggiata sul Lungomare - Ardenza - Livorno</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza per questa splendida passeggiata è direttamente sul lungomare di <strong>Ardenza</strong>, a <strong>Livorno</strong>. È facilmente raggiungibile in auto, con parcheggi disponibili lungo la strada costiera, oppure comodamente con i mezzi pubblici, raggiungibile anche a piedi dalla città.  Si tratta di un''escursione che non richiede particolari preparazioni, adatta a tutti!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Questa <strong>escursione</strong>, più che un trekking vero e proprio, è una piacevole <strong>passeggiata</strong> lungo il <strong>lungomare</strong>. Il sentiero è perfettamente pianeggiante, con qualche lieve discesa verso le spiaggette. Seguire il <strong>sentiero</strong> che costeggia il mare, ammirando il panorama, la vista del porto e i numerosi locali dove fermarsi per una pausa o un pranzo.  Non ci sono punti particolarmente impegnativi, quindi è perfetta per una giornata in famiglia o con amici.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>La <strong>difficoltà</strong> di questa <strong>passeggiata</strong> è definita <strong>facile</strong>.  È un percorso adatto a tutti, anche a chi non ha molta esperienza di <strong>escursionismo</strong>.  Il dislivello massimo è di circa 119 metri, dovuto alle discese alle spiaggette, ma si tratta di saliscendi molto graduali. La distanza totale è di 9,2 km ed è un <strong>anello</strong>, quindi potete scegliere di percorrere solo una parte del percorso.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per facilitare il vostro viaggio, vi alleghiamo una <strong >traccia GPS</strong>.  Ricordate di controllare le previsioni del tempo prima di partire e di indossare scarpe comode. Portate con voi acqua, protezione solare e un cappello, soprattutto nei mesi estivi. Questa <strong>escursione</strong> è particolarmente consigliata in <strong>Primavera</strong> e in <strong>Autunno</strong> per godere del clima mite e della bellezza del panorama.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li ><strong >Distanza:</strong> Circa 9.2 km</li>
  <li ><strong >Dislivello:</strong> Circa 119 metri</li>
  <li ><strong >Difficoltà:</strong> Facile</li>
  <li ><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li ><strong >Punto di partenza:</strong> Lungomare di Ardenza, Livorno</li>
  <li ><strong >Comune:</strong> Ardenza, Toscana</li>
  <li ><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.2,
  119,
  4,
  44,
  175,
  '2:55',
  138,
  '2:32',
  1637,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Ardenza',
  '2022-01-01',
  '2022-01-01',
  '2022-01-15 00:00:00',
  '2022-01-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passeggiata-sul-lungomare-ardenza-livorno-92778135',
  NULL,
  43.522547,
  10.3112,
  'POINT(10.3112 43.522547)',
  '5ff645ff31b80d0fca2208791b2765d26ac805bf4f329e86916cb98fee663fb6',
  'Escursione facile Ardenza - Livorno: 9.2km di passeggiata sul lungomare! Anello pianeggiante, +14m dislivello, perfetto per famiglie e amanti del mare in Tos...',
  'Ardenza: Escursione lungomare da Livorno (facile)',
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
VALUES (92778135, 'https://it.wikiloc.com/percorsi-escursionismo/passeggiata-sul-lungomare-ardenza-livorno-92778135', NOW(), '5ff645ff31b80d0fca2208791b2765d26ac805bf4f329e86916cb98fee663fb6')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92778135);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92778135/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

COMMIT;

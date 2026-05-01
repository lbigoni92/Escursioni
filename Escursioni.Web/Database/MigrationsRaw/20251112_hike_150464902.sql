BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  150464902,
  'Giro a caso',
  'Giro a caso',
  '<h2 id="giro-a-caso">Giro a Caso a Querce</h2>

<p>Ragazzi, vi racconto un''escursione che mi ha davvero sorpreso! Il <strong>Giro a Caso</strong> a <strong>Querce</strong>, in provincia di <strong>Toscana</strong>, è un anello che vi regala un sacco di emozioni, con un bel panorama e senza eccessivi impegnativi.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza è facilmente raggiungibile in auto. Cercate ''Cascina del Lupo'', a Querce. Dallo spiaziale antistante, iniziate il sentiero. In alternativa, potete raggiungere il punto di partenza a piedi da Querce, godendovi un piacevole tratto di campagna.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>

<p>Il sentiero si snoda inizialmente attraverso un bosco di faggi, poi si apre su prati e ciottoli. La salita è costante ma non particolarmente ripida. Il tratto più suggestivo è quello che offre un panorama aperto sulla vallata di Querce.  Il <strong>sentiero</strong> è ben segnalato e il dislivello di  <strong>+283 m</strong> vi ripagherà con una vista mozzafiato. Questa <strong>escursione</strong> di tipo <strong>anello</strong> vi restituirà al punto di partenza dopo circa 3,84 km.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>La difficoltà di questo giro è definita <strong>media</strong>. È un''escursione adatta a persone con un minimo di allenamento, ma anche a famiglie con bambini che amano l''aria aperta.  È importante indossare scarpe da trekking adatte e portare con sé acqua e uno spuntino. </p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per seguire il percorso, consiglio di utilizzare una traccia GPS.  Potrete trovare numerose tracce online.  La distanza dell''escursione è di circa 3,84 km con un dislivello positivo di 283 metri.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 3.84 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 283 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Cascina del Lupo, Querce, Toscana</li>
  <li><strong>Comune:</strong> Querce, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  3.84,
  283,
  258,
  493,
  105,
  '1:45',
  92,
  '1:32',
  368,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Querce',
  '2023-10-01',
  '2023-10-01',
  '2023-10-15 00:00:00',
  '2023-10-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/giro-a-caso-150464902',
  NULL,
  43.91097,
  10.46801,
  'POINT(10.46801 43.91097)',
  '531714924847775f550a5a57305ee2e2a07d35c19e81b1c5d4d20fc93baea9de',
  'Escursione Querce: Giro a caso in Toscana! Anello medio di 3.84km +232m sl. Perfetto per un''escursione a Querce, Comune di Querce, Provincia di Toscana.',
  'Querce: escursione a caso anello medio (Toscana)',
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
VALUES (150464902, 'https://it.wikiloc.com/percorsi-escursionismo/giro-a-caso-150464902', NOW(), '531714924847775f550a5a57305ee2e2a07d35c19e81b1c5d4d20fc93baea9de')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 150464902);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/150464902/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150464902/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150464902/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

COMMIT;

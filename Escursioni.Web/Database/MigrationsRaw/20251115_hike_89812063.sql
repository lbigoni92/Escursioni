BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  89812063,
  'Filettole con vista sul Lago di Massaciuccoli',
  'Siamo partiti dal parcheggio principale di Filettole e abbiamo proseguito in primo luogo per delle strade di campagna dalle quali abbiamo potuto ammirare la Roccca di Ripafratta e un pastore con un gregge di pecore, la vista sulla rocca al km 1.5 era veramente carina. In seguito abbiamo proseguito per arrivare all''attacco del sentiero vero e proprio km 2.5 abbiamo fatto il sentiero dopo forti piogge e c''era un pò di fango, ma niente di difficile basta avere scarpe adeguate. Abbiamo potuto ammirare la torre tagliata a metà a seguito della divisione territoriale tra Pisa e Lucca. Al km 6.6 abbiamo visto il tramonto sul lago di Massaciuccoli.',
  '<h2>Filettole con Vista sul Lago di Massaciuccoli: Escursione di Trekking in Montagna</h2>

<h3>Il Percorso - Trekking sul Lago di Massaciuccoli</h3>

<p>Immergiti in un''esperienza indimenticabile con questa <strong>escursione di trekking</strong> nel cuore della <strong>Montagna toscana</strong>. Il sentiero del <strong>Filettole con vista sul Lago di Massaciuccoli</strong> ti conduce attraverso paesaggi mozzafiato, con panorami sul <strong>Lago di Massaciuccoli</strong> e sulla suggestiva <strong>Rocca di Ripafratta</strong>. Questa <strong>trekking</strong> è perfetta per gli amanti della natura e dell''escursionismo, offrendo la possibilità di esplorare sentieri di montagna e godere di un''incredibile vista lago.</p>

<h3>Cosa Aspettarsi - Un Sentiero Ricco di Meraviglie</h3>

<p>Preparati a un''<strong>escursione</strong> che ti farà scoprire le bellezze della campagna toscana. Il percorso si snoda attraverso strade di campagna, offrendoti la possibilità di ammirare la <strong>Rocca di Ripafratta</strong>, un pastore con il suo gregge di pecore, e la torre tagliata a metà, testimonianza di un passato ricco di storia e divisioni territoriali. La <strong>trekking</strong> include un tratto con un po'' di fango dopo pioggia, ma con l''attrezzatura giusta, il sentiero è facilmente percorribile.</p>

<h3>Informazioni Utili - Dettagli per la Tua Escursione</h3>

<ul>
  <li><b>Nome Sentiero:</b> Filettole con Vista sul Lago di Massaciuccoli</li>
  <li><b>Luogo:</b> Filettole, Lago di Massaciuccoli, Toscana</li>
  <li><b>Difficoltà:</b> Facile/Media - Adatta a famiglie e principianti</li>
  <li><b>Distanza:</b> Circa 6.6 km</li>
  <li><b>Dislivello:</b> Variabile, con alcune pendenze</li>
  <li><b>Punti di Interesse:</b> Rocca di Ripafratta, Torre tagliata a metà, panorama sul Lago di Massaciuccoli, pascoli</li>
</ul>

<p>Goditi un''<strong>escursione di trekking</strong> unica, immergendoti nella natura incontaminata del <strong>sentiero in montagna</strong>.  Questa <strong>trekking</strong> ti regalerà momenti indimenticabili con una splendida vista sul <strong>Lago di Massaciuccoli</strong>.  Organizza la tua <strong>escursione in Italia</strong> e scopri la bellezza di questa <strong>trekking</strong>.</p>',
  'Tutte le Attività e Paesi',
  9.45,
  297,
  10,
  187,
  204,
  '3:24',
  177,
  '2:57',
  1632,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Filettole',
  '2021-11-01',
  '2021-11-01',
  '2021-11-28 00:00:00',
  '2021-11-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/filettole-con-vista-sul-lago-di-massaciuccoli-lupus-in-trekking-89812063',
  NULL,
  43.813655,
  10.403427,
  'POINT(10.403427 43.813655)',
  'b7921b378e4484c097892fcacfc35bdd6bcb8c2ae207435078a010938706ead7',
  'Escursione Filettole: Anello al Lago di Massaciuccoli in Toscana (9.45km, +171m) - Vista Roccca di Ripafratta, tramonto sul lago e torre divisa! Facile.',
  'Filettole: Escursione al Lago di Massaciuccoli (Toscana)',
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
VALUES (89812063, 'https://it.wikiloc.com/percorsi-escursionismo/filettole-con-vista-sul-lago-di-massaciuccoli-lupus-in-trekking-89812063', NOW(), 'b7921b378e4484c097892fcacfc35bdd6bcb8c2ae207435078a010938706ead7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 89812063);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/89812063/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/89812063/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 89812063;

COMMIT;

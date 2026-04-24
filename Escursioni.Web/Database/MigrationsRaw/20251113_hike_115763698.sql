BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  115763698,
  'Via Ferrata del Monte Forato e Via Ferrata del Monte Procinto - FriendsInTrekking',
  'Partendo dal Rifugio dell''Alto Matanna abbiamo fatto : Ferrata del monte Procinto: La Via Ferrata del Monte Forato e Via Ferrata del Monte Procinto, in uno splendido anello. Il percorso è durato circa 10 ore, faticoso ma fattibilissimo se si è ben allenati. La ferrata del Monte Procinto è la ferrata più antica d''Italia e risale al 1893, poi ristrutturata più volte in seguito (ultima revisione nel 2020). La via è intitolata ad Aristide Bruni che salì nel 1879 per primo assieme ad altri questo singolare monte. La salita fu la prima salita documentata sebbene si creda che il Procinto fosse già stato salito da boscaioli locali. La via di salita venne convertita in percorso attrezzato col supporto del CAI di Firenze di cui Bruni era membro. Ferrata del monte Forato: La Ferrata è intitolata alla memoria di Renato Salvatori, vice presidente del CAI di Forte dei Marmi. La via fu installata nell''autunno del 1977, inaugurata nel 1978 e rinnovata nel 1998. Per fare entrambi i sentieri vige l''obbligo di: Abbigliamento Adeguato, Attrezzatura da ferrata e non soffrire di vertigini',
  '<h2>Via Ferrata del Monte Forato e Via Ferrata del Monte Procinto - Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>
Immergetevi in un''esperienza di <strong>trekking</strong> indimenticabile con il circuito che combina la <strong>Via Ferrata del Monte Procinto</strong> e la <strong>Via Ferrata del Monte Forato</strong>. Partendo dal suggestivo <strong>Rifugio dell''Alto Matanna</strong>, questo anello di circa 10 ore vi condurrà attraverso paesaggi mozzafiato della <strong>montagna toscana</strong>. 
</p>

<p>
Questo <strong>sentiero escursionistico</strong> è un''avventura adatta a escursionisti esperti e ben allenati. La <strong>Via Ferrata del Monte Procinto</strong>, la più antica d''Italia (risalente al 1893), offre una sfida tecnica affascinante, mentre la <strong>Ferrata del Monte Forato</strong>, dedicata alla memoria di Renato Salvatori, rappresenta una sfida di <strong>trekking</strong> più impegnativa ma altrettanto gratificante.
</p>

<h3>Cosa Aspettarsi</h3>

<ul>
    <li>Percorso ad anello di circa 10 ore</li>
    <li>Difficoltà: Difficile - Richiede esperienza di <strong>trekking</strong> e <strong>ferrata</strong></li>
    <li>Distanza: Circa 12 km (linea base)</li>
    <li>Altitudine: Dal Rifugio dell''Alto Matanna (1.633m)</li>
    <li>Dislivello: Circa 800m di dislivello positivo</li>
    <li>La <strong>Via Ferrata del Monte Procinto</strong> è la ferrata più antica d''Italia, con una storia ricca e affascinante.</li>
    <li>La <strong>Ferrata del Monte Forato</strong> offre panorami spettacolari sulla valle sottostante.</li>
</ul>

<p>
Godetevi la bellezza della <strong>natura</strong>, l''aria fresca di montagna e la sensazione di superare nuove sfide in questo incredibile <strong>sentiero trekking</strong>. 
</p>

<h3>Informazioni Utili</h3>

<p>
Per completare con successo questa <strong>escursione</strong>, è fondamentale essere in ottima forma fisica e possedere esperienza di <strong>trekking</strong> e <strong>ferrata</strong>. Vige l''obbligo di indossare <strong>abbigliamento adeguato</strong> e di utilizzare <strong>attrezzatura da ferrata</strong>. È inoltre essenziale non soffrire di <strong>vertigini</strong>. 
</p>

<p>
Prima di intraprendere l''avventura, controllate sempre le condizioni meteorologiche e informatevi presso le autorità locali. Ricordate che la sicurezza è sempre la priorità.
</p>',
  'Tutte le Attività e Paesi',
  12.93,
  915,
  808,
  1243,
  349,
  '5:49',
  304,
  '5:04',
  1285,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Palagnana',
  '2022-10-01',
  '2022-10-01',
  '2022-10-09 00:00:00',
  '2022-10-09 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/via-ferrata-del-monte-forato-e-via-ferrata-del-monte-procinto-friendsintrekking-115763698',
  NULL,
  43.987495,
  10.345135,
  'POINT(10.345135 43.987495)',
  'e54ff7eae6d50a4849783c7347b203e4e07ed9e4d3cd7730c18a064b13697778',
  'Via Ferrata Monte Forato & Procinto: Anello Toscana | Palagnana, Diff. Media, 13km. Trekking ferrata facile-media, 200m dislivello. Info e consigli!',
  'Monte Forato & Procinto: Escursione Ferrata da Matanna',
  'Alpi Apuane',
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
VALUES (115763698, 'https://it.wikiloc.com/percorsi-escursionismo/via-ferrata-del-monte-forato-e-via-ferrata-del-monte-procinto-friendsintrekking-115763698', NOW(), 'e54ff7eae6d50a4849783c7347b203e4e07ed9e4d3cd7730c18a064b13697778')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 115763698);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/115763698/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115763698/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115763698;

COMMIT;

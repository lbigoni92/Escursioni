BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  178174919,
  'Monte Alto, Passo di Pietra Tagliata e Alpe di Succiso da Passo del Cerreto',
  'Percorso ad anello da Passo del Cerreto passando per: - Monte Alto (4.2 km) - Passo di Pietra Tagliata (4.7 km) - Alpe di Succiso (6.0 km) - Sella di Casarola (6.8 km) - Monte Casarola (7.2 km) - Passo dell''Ospedalaccio (11.2 km) Il percorso presenta difficoltà di varia natura, esposizioni, salite ripide e un tratto di via ferrata il tutto nei primi 5 km, percorso non per tutti. Il dislivello è impegnativo nei primi chilometri poi si presenta più dolce. La ferrata è divisa in 3 parti, tutte e tre sono semplici livello intermedio procinto /forato, e sono corti.',
  '<h2 id="escursione-monte-alto-passo-pietra-tagliata-alpe-succiso-passo-cerreto">Escursione al Monte Alto, Passo di Pietra Tagliata e Alpe di Succiso da Passo del Cerreto</h2>

<h3 id="come-arrivare-punto-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa fantastica escursione è il <strong>Passo del Cerreto</strong>, raggiungibile in auto da <strong>Cerreto Laghi</strong>. La strada è di campagna, quindi preparatevi a sbrecciare un po''. Da qui, iniziate a seguire il sentiero che sale gradualmente verso il Monte Alto.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione ad anello di <strong>13.27 km</strong> vi porterà attraverso panorami mozzafiato e tratti impegnativi. Iniziate dal <strong>Passo del Cerreto</strong> e raggiungete il <strong>Monte Alto</strong> (4.2 km), da qui proseguite fino al <strong>Passo di Pietra Tagliata</strong> (4.7 km) e poi all''<strong>Alpe di Succiso</strong> (6.0 km). Da qui, la salita diventa più ripida fino alla <strong>Sella di Casarola</strong> (6.8 km) e infine al <strong>Monte Casarola</strong> (7.2 km) e al <strong>Passo dell''Ospedalaccio</strong> (11.2 km).  Attenzione: i primi 5 km sono particolarmente impegnativi e includono un tratto di <strong>via ferrata</strong> di livello intermedio, attrezzati con casco e forato. Si consiglia vivamente di essere esperti e pronti a affrontare questo tratto.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è considerata <strong>Difficile</strong> per via del dislivello di <strong>+980 m</strong>, delle salite ripide, dell''esposizione e del tratto di via ferrata nei primi 5 km. È consigliata a escursionisti esperti e in buona forma fisica.  Non sottovalutate la via ferrata, anche se i tratti sono brevi, richiedono attenzione e attrezzatura adeguata.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per seguire il percorso, vi consiglio di utilizzare una traccia GPS.  Vi lascerò un link alla traccia GPS quando il sito sarà attivo.  Durante l''escursione, l''acqua potabile è scarsa, quindi portate con voi una quantità sufficiente.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li ><strong>Distanza:</strong> Circa 13.27 km (anello)</li>
  <li ><strong>Dislivello:</strong> Circa 980 m</li>
  <li ><strong>Difficoltà:</strong> Difficile</li>
  <li ><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li ><strong>Punto di partenza:</strong> Passo del Cerreto, accessibile in auto da Cerreto Laghi</li>
  <li ><strong>Comune:</strong> Cerreto Laghi, Emilia-Romagna</li>
  <li ><strong>Tipo di sentiero:</strong> Sentiero escursionistico, Via Ferrata (primi 5 km)</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.27,
  980,
  1251,
  2014,
  378,
  '6:18',
  329,
  '5:29',
  2135,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Cerreto Laghi',
  '2024-07-01',
  '2024-07-01',
  '2024-07-21 00:00:00',
  '2024-07-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-alto-passo-di-pietra-tagliata-e-alpe-di-succiso-da-passo-del-cerreto-178174919',
  NULL,
  44.30407,
  10.216782,
  'POINT(10.216782 44.30407)',
  'c045fe218856e0d56c7019ec258fc1ed208067d82b046e3d3d26e0b3a8ea5c37',
  'Escursione Monte Alto, Passo Pietra Tagliata e Alpe di Succiso: itinerario impegnativo in Emilia Romagna (Cerreto Laghi) +980m. Anello di difficoltà difficil...',
  'Monte Alto: escursione trekking Passo del Cerreto (diffic...',
  'Appennino Tosco-Emiliano',
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
VALUES (178174919, 'https://it.wikiloc.com/percorsi-escursionismo/monte-alto-passo-di-pietra-tagliata-e-alpe-di-succiso-da-passo-del-cerreto-178174919', NOW(), 'c045fe218856e0d56c7019ec258fc1ed208067d82b046e3d3d26e0b3a8ea5c37')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 178174919);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/178174919/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/178174919/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 178174919;

COMMIT;

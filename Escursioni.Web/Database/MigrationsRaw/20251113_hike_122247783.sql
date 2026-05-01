BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  122247783,
  'Populonia - La via del ferro - Sentiero dei Cavalleggeri',
  'Populonia Una bellissima giornata di Dicembre, abbiamo fatto una girata alla ricerca di Geo cache e siamo anche passati a vedere delle tombe etrusche. Consiglio molto la visita. In seguito abbiamo mangiato al castello di Populonia con una bellissima vita su tutto il promontorio... proseguito per la Buca delle Fate... Cala Buia e Faro di Baratti. La strada costiera presenta dei tratti esposti (causa frane) niente di difficile ma è bene avvisare. Venite con un abbigliamento adeguato specialmente le scarpe!',
  '<h2 id="populonia-via-ferro-sentiero-cavalleggeri">Escursione a Populonia: La Via del Ferro e il Sentiero dei Cavalleggeri</h2>

<h3 id="come-arrivare-punto-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa fantastica escursione è facilmente raggiungibile. Partendo da Populonia, segui le indicazioni per il “Sentiero dei Cavalleggeri”. Puoi parcheggiare l''auto nei pressi del punto di partenza indicato e da lì inizierà il tuo trekking.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Inizieremo da Populonia, attraversando le antiche tombe etrusche. Da qui, il sentiero ci guiderà attraverso paesaggi mozzafiato, ammirando la Via del Ferro, un''antica strada romana. Il sentiero si snoda verso la Buca delle Fate, Cala Buia e infine il Faro di Baratti, offrendo panorami spettacolari sulla costa toscana. La strada costiera presenta alcuni tratti esposti a causa di frane, quindi è importante prestare attenzione, ma la difficoltà è valutata come media.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione di tipo anello di circa 9.51 km presenta una difficoltà valutata come media, con un dislivello di 388 metri. È consigliabile indossare un abbigliamento adeguato e soprattutto scarpe da trekking robuste, dato il terreno e la presenza di tratti esposti.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per aiutarti durante l''escursione, ti forniamo la traccia GPS e le informazioni pratiche:</p>
<ul>
  <li><strong>Distanza:</strong> 9.51 km (anello)</li>
  <li><strong>Dislivello:</strong> 388 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Sentiero dei Cavalleggeri, Populonia</li>
  <li><strong>Comune:</strong> Populonia, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong >Distanza:</strong> Circa 9.51 km (anello)</li>
  <li><strong >Dislivello:</strong> Circa 388 metri</li>
  <li><strong >Difficoltà:</strong> Media</li>
  <li><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong >Punto di partenza:</strong> Sentiero dei Cavalleggeri, Populonia</li>
  <li><strong >Comune:</strong> Populonia, Toscana</li>
  <li><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.51,
  388,
  18,
  228,
  218,
  '3:38',
  190,
  '3:10',
  1419,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Populonia',
  '2022-12-01',
  '2022-12-01',
  '2022-12-30 00:00:00',
  '2022-12-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783',
  NULL,
  42.989398,
  10.503827,
  'POINT(10.503827 42.989398)',
  'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d',
  'Escursione Populonia: Via del Ferro & Sentiero dei Cavalleggeri | Toscana, 9.5km, +388m. Trekking anello tra tombe etrusche, costa frastagliata e vista Faro ...',
  'Populonia: La Via del Ferro - Escursione Anello (Toscana)',
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
VALUES (122247783, 'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783', NOW(), 'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 122247783);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/122247783/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

COMMIT;

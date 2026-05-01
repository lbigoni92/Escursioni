BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  144127213,
  'Renara',
  'Più che treking questo è stata una passeggiata con bagno in fiume, abbiamo preferito parcheggiare lungo la strada che porta al paesino perchè sulla strada che va dal paesino al parcheggio c''erano dei sassi appena caduti. Semplice parcheggiate... camminate 1/2km cercate una Polla e fate il bagno Il torrente Renara è un affluente, il maggiore, del fiume Frigido. Scorre sulle montagne del comune di Massa, in Toscana, a pochi chilometri dalla città. È il fiume più frequentato dai massesi poiché viene considerato la “spiaggia trasferita in montagna” dove trovare refrigerio alla calura estiva nelle acque fredde e cristalline. Ecco qualche itinerario per andare alla scoperta del suo corso e dei paesaggi che lo circondano.',
  '<h2 id="escursione-renara">Escursione al Renara a Redicesi</h2>

<p>Oggi vi racconto un’escursione davvero speciale, un’esperienza che ha unito relax, natura e un tuffo rinfrescante in un fiume fantastico. Non aspettatevi un trekking impegnativo, questa è più una passeggiata con tanto divertimento!</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>Il punto di partenza per questa bellissima escursione è lungo la strada che porta al paesino di Redicesi. Il parcheggio è facilmente raggiungibile, ma attenzione: sulla strada che va dal paesino al parcheggio ci sono alcuni sassi appena caduti, quindi meglio parcheggiare lungo la strada principale per evitare sorprese.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>Una volta parcheggiato, iniziate a camminare per circa mezz''ora lungo un sentiero semplice e ben tracciato. Seguite il percorso fino a raggiungere una piccola cascata dove potrete ammirare un polla. Da qui, proseguite in discesa lungo il torrente Renara fino ad arrivare a un punto perfetto per un tuffo rinfrescante. L''acqua del Renara, un affluente del fiume Frigido, è cristallina e fredda, ideale per combattere il caldo dell''estate. Questo itinerario è un anello di circa 4.33 km con un dislivello positivo di 319 metri.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>Questa escursione è di difficoltà media. Il sentiero è in gran parte facile, ma ci sono alcuni tratti in discesa e in salita, quindi è consigliabile indossare scarpe da trekking adatte. Preparatevi a circa 2-3 ore di cammino, ma soprattutto, preparatevi a godervi un''esperienza unica!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>Per aiutarvi durante l’escursione, vi lascio qui sotto la traccia GPS e alcune informazioni pratiche:</p>

<ul>
    <li><strong>Distanza:</strong> Circa 4.33 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 319 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parcheggio lungo la strada che porta al paesino di Redicesi</li>
    <li><strong>Comune:</strong> Redicesi, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li><strong id="distanza">Distanza:</strong> Circa 4.33 km (anello)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 319 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Medio</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Parcheggio lungo la strada che porta al paesino di Redicesi, accessibile in auto</li>
    <li><strong id="comune">Comune:</strong> Redicesi, Toscana</li>
    <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.33,
  319,
  217,
  318,
  119,
  '1:59',
  103,
  '1:43',
  686,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Redicesi',
  '2023-08-01',
  '2023-08-01',
  '2023-08-17 00:00:00',
  '2023-08-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/renara-144127213',
  NULL,
  44.072268,
  10.200593,
  'POINT(10.200593 44.072268)',
  '8714caa11274c2e58b11d77b9882cf0db337b0bb5a39e7bb546de0d963aff0f8',
  'Escursione Renara Redicesi: fai il bagno in un fiume cristallino! Anello di 4.3km, +207m, Toscana. Trekking facile per famiglie e amanti della natura. Perfet...',
  'Renara: Escursione con bagno nel fiume (Toscana)',
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
VALUES (144127213, 'https://it.wikiloc.com/percorsi-escursionismo/renara-144127213', NOW(), '8714caa11274c2e58b11d77b9882cf0db337b0bb5a39e7bb546de0d963aff0f8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 144127213);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/144127213/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144127213/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144127213;

COMMIT;

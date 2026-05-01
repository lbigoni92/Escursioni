BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  173718340,
  'Agnano - Foce Di Calci - Fiume, Bagni',
  'Percorso ad anello da Agnano passando per: - Foce Di Calci (5.2 km) Il percorso è interamente su sentieri semplici, e ben segnalati tane per il tratto che porta alla Cima stiparecca. Sul sentiero bel vedere sono presenti dei cartelli che parlano delle conformazioni roccioce. prestare attenzione al km 6.9 che il sentiero è un pò franabile ma niente di che',
  '<h2 id="agno-foce-di-calci-fiume-bagni">Escursione a Agnano - Foce Di Calci - Fiume, Bagni</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bella escursione si trova ad Agnano, facilmente raggiungibile in auto. Da qui, seguire le indicazioni per i sentieri escursionistici.  È consigliabile arrivare con un mezzo per poi proseguire a piedi, per godervi appieno il percorso.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo giro ad anello di 9.06 km vi porterà attraverso paesaggi mozzafiato, partendo da Agnano e arrivando fino alla foce di Calci, dove potrete ammirare il fiume e i bagni naturali. Il sentiero è prevalentemente semplice e ben segnalato, ma ci sono alcuni tratti, soprattutto nel tratto che porta alla Cima stiparecca, dove il sentiero è un po'' franabile.  Avrete la possibilità di ammirare cartelli che descrivono le conformazioni rocciose della zona. Preparatevi a un''escursione di circa 3-4 ore, con un bel dislivello di 501 metri. È un''ottima escursione per chi cerca un''esperienza di trekking in montagna con panorami unici.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>La difficoltà di questa escursione è classificata come Media.  Richiede una buona condizione fisica e una certa familiarità con il trekking in montagna.  Il dislivello di 501 metri e alcuni tratti franabili potrebbero rappresentare una sfida per i principianti.  Tuttavia, il sentiero è ben segnalato e il panorama è più che compensare lo sforzo.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare una traccia GPS per questa escursione per seguirla comodamente con il vostro smartphone o navigatore.  Ricordatevi di portare con voi acqua, snack, scarpe da trekking adeguate e un cappello.  Informatevi sulle condizioni meteo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><b>Distanza:</b> Circa 9.06 km (anello)</li>
    <li><b>Dislivello:</b> Circa 501 metri</li>
    <li><b>Difficoltà:</b> Medio</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Agnano</li>
    <li><b>Comune:</b> Agnano, Toscana</li>
    <li><b>Regione:</b> Italia</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.06,
  501,
  78,
  572,
  223,
  '3:43',
  194,
  '3:14',
  1192,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Agnano',
  '2024-06-01',
  '2024-06-01',
  '2024-06-10 00:00:00',
  '2024-06-10 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/agnano-foce-di-calci-fiume-bagni-173718340',
  NULL,
  43.737858,
  10.487405,
  'POINT(10.487405 43.737858)',
  '029416ec89913dfeb16b0db6f899988bd318bd97e119cabc62b7d4083eff4e6d',
  'Escursione Agnano Foce Di Calci: anello facile 9.1km, +501m in Toscana. Sentiero storico, roccia e fiume! Perfetto per trekking amatoriale.',
  'Agnano - Foce Di Calci: escursione anello Toscana',
  'Monti Pisani',
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
VALUES (173718340, 'https://it.wikiloc.com/percorsi-escursionismo/agnano-foce-di-calci-fiume-bagni-173718340', NOW(), '029416ec89913dfeb16b0db6f899988bd318bd97e119cabc62b7d4083eff4e6d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 173718340);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/173718340/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

COMMIT;

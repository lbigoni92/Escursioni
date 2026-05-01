BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  115177865,
  'Passo del Lucese - Rifugio La Casa del Maestro - Baita Verde - Baita Barsi',
  'Escursione in direzione del Monte Prana. Siamo partiti dal Ristorante della Lucese, e da li abbiamo preso il sentiero 101, già era iniziato a piovere, ma il meteo è peggiorato appena superata la Casa del Maestro, da li siamo tornati in dietro e abbiamo scelto di proseguire verso la Chiesa di Campo all''orzo. Abbiamo trovato i due rufugi Brasi e Verde chiusi. Abbiamo preso tanta acqua ma camminare nella nebbia è sempre un esperienza unica.',
  '<h2 id="passo-del-lucese-rifugio-la-casa-del-maestro-baita-verde-baita-barsi">Escursione al Passo del Lucese e ai Rifugi: Lucese, Rifugio La Casa del Maestro, Baita Verde e Baita Barsi</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

Partenza dal Ristorante della Lucese, un luogo facile da individuare all''ingresso del comune. Da qui, inizia il sentiero 101, ben segnalato per gli escursionisti. Il ristorante offre anche la possibilità di rifornirsi prima o dopo l''escursione.

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

L''escursione inizia con una salita graduale lungo il sentiero 101, che ci conduce al Rifugio La Casa del Maestro. Il meteo è stato variabile, con piogge improvvise che hanno reso il percorso più impegnativo.  Superata la Casa del Maestro, abbiamo deciso di proseguire verso la Chiesa di Campo all''Orzo, con una deviazione sul sentiero. Abbiamo attraversato la zona dei rifugi Brasi e Verde, ora chiusi, ma il paesaggio è rimasto affascinante.  Il sentiero ci ha portato poi alla Baita Barsi, un punto perfetto per ammirare il panorama.  Il ritorno è stato lungo lo stesso sentiero, godendoci ogni passo di questa bella escursione.

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

Questa escursione è di difficoltà media, adatta a escursionisti con una buona preparazione fisica. Il dislivello di 898 metri richiede un certo sforzo, ma il sentiero è ben tenuto e il paesaggio offre delle pause di respiro.  È consigliabile indossare scarpe da trekking adeguate e portare con sé acqua e cibo. La nebbia ha reso l''esperienza ancora più suggestiva, trasformando il paesaggio in un''atmosfera magica.

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

Per ritrovare il percorso, ti consiglio di utilizzare la seguente traccia GPS (da caricare nella tua app di navigazione): [Inserire qui la traccia GPS, se disponibile]

*   **Distanza:** 14.16 km (anello)
*   **Dislivello:** 898 metri
*   **Difficoltà:** Medio
*   **Periodo consigliato:** Primavera, Estate, Autunno
*   **Punto di partenza:** Ristorante della Lucese, Lucese, Toscana, Italia
*   **Comune:** Lucese, Toscana, Italia
*   **Tipo di sentiero:** Sentiero escursionistico 

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li >Distanza: Circa 14.16 km (anello)</li>
  <li >Dislivello: Circa 898 metri</li>
  <li >Difficoltà: Medio</li>
  <li >Periodo consigliato: Primavera, Estate, Autunno</li>
  <li >Punto di partenza: Ristorante della Lucese, accessibile in auto</li>
  <li >Comune: Lucese, Toscana</li>
  <li >Tipo di sentiero: Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  14.16,
  898,
  588,
  1016,
  368,
  '6:08',
  320,
  '5:20',
  1942,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Lucese',
  '2022-10-01',
  '2022-10-01',
  '2022-10-02 00:00:00',
  '2022-10-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passo-del-lucese-rifugio-la-casa-del-maestro-baita-verde-baita-barsi-115177865',
  NULL,
  43.936432,
  10.382227,
  'POINT(10.382227 43.936432)',
  '6a1109ef2b4a1ec033b39a322735cece5f0a55ca8a156eb95a6d9857871c81da',
  'Escursione Passo del Lucese (Toscana): Anello 14.16km, +746m. Trekking al Rifugio La Casa del Maestro e Baita Verde. Meteo variabile, sentiero 101. Perfetta ...',
  'Monte Prana: Escursione da Lucese (14.16km, 746m)',
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
VALUES (115177865, 'https://it.wikiloc.com/percorsi-escursionismo/passo-del-lucese-rifugio-la-casa-del-maestro-baita-verde-baita-barsi-115177865', NOW(), '6a1109ef2b4a1ec033b39a322735cece5f0a55ca8a156eb95a6d9857871c81da')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 115177865);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/115177865/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/115177865/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 115177865;

COMMIT;

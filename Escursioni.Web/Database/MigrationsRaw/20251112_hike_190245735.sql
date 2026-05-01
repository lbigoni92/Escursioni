BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  190245735,
  'Lucese - Prana - Baita Barsi - Baita Verde - Campo all''orzo',
  'Itinerario ottimo anche per le persone meno allenate e per i mesi invernali; la vetta regala un panorama che merita ... possiamo vedere dal gruppo delle Panie a Massaciuccoli fino a Livorno. Siamo partiti dal Passo del Lucese (558 m.), raggiungibile facilmente in auto, e c''è posto per le auto visto l''enorme parcheggio, da qui si raggiunge il bar, a fianco del quale inizia il percorso (i primi metri sono in salita su asfalto) su percorso tortuoso partenza del segnavia 101. Proseguendo arriviamo ad un bivio, dove possiamo troviamo le indicazioni, sulla sinistra si sale per la Casa del Maestro (847 m.) e per il Prana;noi abbiamo scelto di proseguire prima per la Baita barsi per poi raggiungere la Baita Vedi da qua abbiamo proseguito a Chiesa di Campo all''Orzo, situata nel punto più alto di Campo all''Orzo, a dominare le vallate, qua abbiamo pranzato. In seguito siamo saliti sulla per è la via normale. Il sentiero non è mai esposto Non sottovalutate mai la montagna per quanto facile venite sempre con attrezzatura adeguata e almeno 2 lt di acqua',
  '<h2 id="escursione-lucese-prana-baita-barsi-baita-verde-campo-allorzo">Escursione a Lucese, Prana, Baita Barsi, Baita Verde e Campo all''Orzo</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>L''escursione parte dal Passo del Lucese (558 m.), facilmente raggiungibile in auto.  È disponibile un ampio parcheggio per le auto, quindi non dovete preoccuparvi di trovare spazio. Dalla strada, segui le indicazioni per il bar situato in prossimità del parcheggio, da cui inizia il sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Partenza dal Passo del Lucese (558 m.) con una iniziale salita su asfalto.  Proseguendo, il sentiero si snoda in modo tortuoso fino al bivio dove prendete il segnavia 101. Da qui, proseguite verso la Baita Barsi e poi verso la Baita Verde, infine raggiungete il Campo all''Orzo, situato nel punto più alto. Dopo aver pranzato, potete proseguire sulla via normale fino alla vetta.  Il sentiero non presenta esposizioni significative, ma è fondamentale ricordare che la montagna richiede sempre rispetto e attenzione.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questo è un trekking di difficoltà media, adatto anche a persone meno allenate. La distanza totale dell''anello è di circa 13,69 km con un dislivello positivo di 791 metri. Preparatevi a un''escursione panoramica mozzafiato che vi permetterà di ammirare un panorama che spazia dalle Panie a Massaciuccoli fino a Livorno. Assicuratevi di avere con voi almeno 2 litri d''acqua e l''attrezzatura adeguata per affrontare la montagna in sicurezza.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per poter seguire il percorso, vi consiglio di scaricare una traccia GPS. Le informazioni pratiche sono le seguenti:</p>
<ul>
    <li><b>Distanza:</b> Circa 13,69 km (anello)</li>
    <li><b>Dislivello:</b> Circa 791 metri</li>
    <li><b>Difficoltà:</b> Medio</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Passo del Lucese (accessibile in auto)</li>
    <li><b>Comune:</b> Lucese, Provincia di Toscana, Italia</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><b>Distanza:</b> Circa 13.69 km (anello)</li>
    <li><b>Dislivello:</b> Circa 791 metri</li>
    <li><b>Difficoltà:</b> Medio</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Passo del Lucese (accessibile in auto)</li>
    <li><b>Comune:</b> Lucese, Provincia di Toscana, Italia</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.69,
  791,
  542,
  1234,
  349,
  '5:49',
  303,
  '5:03',
  2125,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Lucese',
  '2024-11-01',
  '2024-11-01',
  '2024-11-01 00:00:00',
  '2024-11-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/lucese-prana-baita-barsi-baita-verde-campo-allorzo-190245735',
  NULL,
  43.937278,
  10.382407,
  'POINT(10.382407 43.937278)',
  'baf4b03a0cd554d652722593621e0b3cbd887252c95f96624c83d3d3a85894e2',
  'Escursione Lucese Prana: Anello facile in Toscana +791m | Vetta con panorama Panie e Livorno! Percorso 13.7km. Ideale anche fuori stagione.',
  'Lucese: Escursione al Prana con Baita Barsi (Toscana)',
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
VALUES (190245735, 'https://it.wikiloc.com/percorsi-escursionismo/lucese-prana-baita-barsi-baita-verde-campo-allorzo-190245735', NOW(), 'baf4b03a0cd554d652722593621e0b3cbd887252c95f96624c83d3d3a85894e2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 190245735);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/190245735/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/190245735/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 190245735;

COMMIT;

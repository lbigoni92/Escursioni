BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  112720981,
  'Orechiella Sulcina',
  'Orechiella Sulcina',
  '<h2 id="escursione-orechiella-sulcina">Escursione alle Orechiella Sulcina</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per l''escursione alle Orechiella Sulcina è facilmente raggiungibile. Parcheggiate in una delle piazzole lungo la strada che sale verso **Sulcina**, oppure trovate un posto disponibile nei pressi del civico 12 della strada provinciale. Da qui, seguite il sentiero che sale dolcemente, ben segnalato, e vi porterà direttamente al punto di partenza del giro.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo fantastico giro ad anello vi condurrà attraverso un paesaggio incredibile! Iniziate da vicino al punto di partenza e, seguendo il sentiero, salite gradualmente attraverso boschi di faggio e rovero. Il sentiero si fa più ripido in alcuni tratti, ma niente di particolarmente impegnativo. Proseguite oltre il punto più alto, dove si apre un panorama mozzafiato sulle **Orechiella**, delle spettacolari formazioni rocciose che danno il nome all''escursione.  Raggiungete l''altro lato delle Orechiella, ammirate da vicino queste formazioni uniche, e poi iniziate la discesa, che è più agevole e panoramica. Rientrate al punto di partenza, completando così l''anello.  È un''escursione perfetta per godersi la natura e ammirare un panorama indimenticabile.  Un''ottima <strong id="parola-chiave-escursione">escursione</strong> per appassionati di montagna!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa è un''escursione di <strong id="difficoltà-escursione">Difficoltà Media</strong>. La distanza totale è di circa 5.81 km per un anello. Il dislivello è di +282 metri, quindi preparatevi a qualche tratto in salita, ma niente di eccessivamente faticoso. L''anello è adatto a persone con un minimo di allenamento e un buon paio di scarpe da trekking.  L''escursione richiede circa 3-4 ore, a seconda del ritmo e delle soste. Non dimenticate l''acqua e uno snack per ricaricare le energie!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per seguire il percorso, vi consiglio di utilizzare una traccia GPS. Potete scaricarla e visualizzarla su un dispositivo GPS o su una app di escursionismo sul vostro smartphone.  Ricordatevi di controllare le previsioni del tempo prima di partire e di informare qualcuno del vostro itinerario.  È sempre meglio essere preparati!</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong id="distanza-escursione">Distanza:</strong> Circa 5.81 km (anello)</li>
    <li><strong id="dislivello-escursione">Dislivello:</strong> Circa 282 metri</li>
    <li><strong id="difficoltà-escursione">Difficoltà:</strong> Media</li>
    <li><strong id="periodo-escursione">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Vicino al civico 12 della strada provinciale di Sulcina, accessibile in auto</li>
    <li><strong id="comune-escursione">Comune:</strong> Sulcina, Regione Toscana, Italia</li>
    <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  5.81,
  282,
  1206,
  1297,
  139,
  '2:19',
  121,
  '2:01',
  1006,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sulcina',
  '2022-09-01',
  '2022-09-01',
  '2022-09-04 00:00:00',
  '2022-09-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/orechiella-sulcina-112720981',
  NULL,
  44.204102,
  10.35809,
  'POINT(10.35809 44.204102)',
  '1b3a3b3660867f0d61e48fdda93ed8e879b5894112c0dbea5b9a4d0bb04dfeee',
  'Escursione Orechiella Sulcina: Anello nel Parco Naturale delle Alpi Apuane (Toscana). Facile, 5.81km, +193m di dislivello. Scopri questo sentiero panoramico!',
  'Orechiella Sulcina: Escursione da Sulcina (Toscana, Medio)',
  'Lucchesia e colline toscane',
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
VALUES (112720981, 'https://it.wikiloc.com/percorsi-escursionismo/orechiella-sulcina-112720981', NOW(), '1b3a3b3660867f0d61e48fdda93ed8e879b5894112c0dbea5b9a4d0bb04dfeee')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 112720981);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/112720981/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/112720981/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 112720981;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  100360380,
  'Parco Naturalistico di San Rossore.',
  'Abbiamo fatto questo sentiero in parte improvvisato, ma ben riuscito per Pasqua. Siamo andati alla ricerca d''animali da vedere e abbiamo trovato daini, cinghiali e e tracce d''altri piccoli carnivori quali volpi, inoltre non è mancata la presenza di bellissime tartarughe anche se si tratta di una specie infestante che non dovrebbe trovarsi nel parco. Non vi sono problemi nel seguire il sentiero che ho tracciato ed è per la maggior parte del temo all''ombra (tranne la parte lungo il fiume). Lo consiglio come girata tranquilla, nel parco vi sono due bar noi siamo passati da uno dei due e fa anche da ristorante, anche se consiglio di mangiare dei panini lungo il percorso.',
  '<h2>Parco Naturalistico di San Rossore: Escursione Trekking nella Montagna Toscana</h2>

<h3>Il Percorso – Trekking nel Parco Naturalistico di San Rossore</h3>

<p>Se volete immergervi nella natura incontaminata della **montagna toscana**, questo sentiero di trekking nel <b>Parco Naturalistico di San Rossore</b> è la scelta ideale. Abbiamo intrapreso questa <b>escursione</b> di una giornata, con un tocco improvvisato ma incredibilmente gratificante, e siamo stati ricompensati da una ricca avifauna e la possibilità di avvistare animali selvatici. Perfetto per un''<b>escursione</b> indimenticabile e una vera immersione nella natura.</p>

<h3>Cosa Aspettarsi – Un Trekking Autentico nel Cuore del Parco</h3>

<p>Questo <b>sentiero</b> vi condurrà attraverso un paesaggio mozzafiato, ricco di biodiversità e di sorprese. Avrete l''opportunità di osservare da vicino animali come daini, cinghiali e <i>tracce</i> di volpi, testimonianza della ricchezza della fauna locale.  Il percorso, in gran parte ombreggiato, offre riparo dal sole, mentre il tratto lungo il fiume vi regalerà uno spettacolo di rara bellezza.  È un''<b>escursione</b> a piedi ideale per chi ama la <b>natura</b> e l''<b>trekking</b> nella <b>montagna</b>.</p>

<p>Tuttavia, è importante ricordare che il <b>Parco Naturalistico di San Rossore</b> ospita anche la tartaruga testuggione, una specie non autoctona e infestante. La sua presenza è un segnale di attenzione per la conservazione della flora e fauna locale.  Abbiamo apprezzato la possibilità di ammirare queste creature, pur consapevole della necessità di proteggere l''ambiente.</p>

<h3>Informazioni Utili – Dettagli per una Trekking di Successo</h3>

<ul>
    <li><b>Difficoltà:</b> Facile/Moderata</li>
    <li><b>Distanza:</b> Circa 10-12 km (il percorso è stato tracciato con alcune deviazioni)</li>
    <li><b>Altitudine:</b> Varia tra i 300 e gli 800 metri</li>
    <li><b>Tempo di percorrenza:</b> Circa 4-6 ore</li>
    <li><b>Tipo di sentiero:</b> Sentiero naturalistico e di trekking</li>
    <li><b>Punti di interesse:</b> Osservazione della fauna selvatica (daini, cinghiali, volpi), presenza di tartarughe testuggini, panorami mozzafiato sulla **montagna** del **Parco Naturalistico di San Rossore**.</li>
    <li><b>Consigli:</b> Portare acqua, panini, scarpe da trekking adatte e un binocolo per l''osservazione della fauna.</li>
</ul>

<p>Ristorante: Durante il <b>trekking</b>, è possibile pranzare al bar all''interno del parco, oppure consumare i vostri <i>panini</i> lungo il percorso, godendovi la vista e la tranquillità del <b>Parco Naturalistico di San Rossore</b>. Questa <b>escursione</b> di <b>trekking</b> è un''occasione unica per vivere un''esperienza autentica nel cuore della natura italiana, perfetta per gli amanti del <b>sentiero</b> e del <b>trekking</b>.</p>',
  'Tutte le Attività e Paesi',
  17.14,
  50,
  27,
  92,
  139,
  '02:19',
  139,
  '02:19',
  1895,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cascine Vecchie',
  '2022-04-01',
  '2022-04-01',
  '2022-04-17 00:00:00',
  '2022-04-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parco-naturalistico-di-san-rossore-100360380',
  NULL,
  43.723937,
  10.334222,
  'POINT(10.334222 43.723937)',
  '0077831a03a785f4cf2234d452d3f160ff217ab75cff85573cd1935a5de327bb',
  'Esplora il Parco San Rossore: daini, cinghiali, tartarughe & natura selvaggia! Sentiero suggestivo e ombreggiato, ideale per una gita tranquilla.',
  'Trekking San Rossore: Sentiero Daini e Cinghiali in Toscana',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (100360380, 'https://it.wikiloc.com/percorsi-escursionismo/parco-naturalistico-di-san-rossore-100360380', NOW(), '0077831a03a785f4cf2234d452d3f160ff217ab75cff85573cd1935a5de327bb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 100360380);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/100360380/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/100360380/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 100360380;

COMMIT;

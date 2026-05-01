BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  167204875,
  'Monte Pelato - Cascata del Mua - Poggio tedesco',
  'Percorso ad anello molto semplice, adatto un pò a tutti. Il giro si divide in due parti: La prima un anello lungo il sentiero cai 188 che alla fine porta sul Monte Pelato il sentiero è esposto al sole(non è consigliabile d''esatte). in seguito sulla via del ritorno abbiamo visitato una vecchia miniera abbandonata molto carina, noi abbiamo d0eciso d''entrarci a nostro rischio con le torce, se entrate ovviamente è a vostro rischio, state attenti. La seconda una volta arrivati alle auto abbiamo percorso un appendice di circa 2 km andata e ritorno che c''ha portato alle cascate del Mua, Bellissime! Escursione che si va anche in sole 3 ore ottima per un pomeriggio adatta a bambini e cani. NON ci sono fontanelle',
  '<h2 id="escursione-monte-pelato-cascata-del-mua-poggio-tedesco">Escursione al Monte Pelato, Cascata del Mua e Poggio Tedesco</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bellissima escursione si trova a <strong>Castiglioncello</strong>, in provincia di <strong>Toscana</strong>. È facilmente raggiungibile in auto, trovando parcheggio nei pressi del paese. Da qui, segui le indicazioni per il sentiero CAI 188, che ti guiderà fino al Monte Pelato.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione al Monte Pelato e alle cascate del Mua è un anello di circa <strong>10.71 km</strong>, con un dislivello di <strong>+395 metri</strong>. Il percorso si snoda inizialmente lungo il sentiero CAI 188, un sentiero ben tracciato e relativamente facile, che conduce al cime del Monte Pelato. In seguito, dopo aver ammirato il panorama, si prosegue verso una vecchia miniera abbandonata dove una visita a torce è un''esperienza (a vostro rischio!). Infine, si raggiunge l''appendice di circa 2 km che conduce alle spettacolari <strong>cascate del Mua</strong>. Un anello perfetto per una giornata in montagna!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà <strong>media</strong> ed è adatta a persone con un minimo di esperienza in trekking. Il sentiero è ben segnalato, ma è consigliabile indossare scarpe da trekking adatte e portare con sé acqua e snack.  Attenzione, la parte in vetta al Monte Pelato è esposta al sole. Il percorso è fattibile anche con bambini e cani, ma è importante tenere conto delle loro capacità e del loro stato di forma.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Perseguire questa escursione è un''ottima idea, soprattutto per un pomeriggio. L''escursione dura in media 3 ore ed è adatta per una giornata di relax e per ammirare i panorami.  Inoltre, è una bella occasione per fare attività fisica e all''aria aperta.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 10.71 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 395 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Castiglioncello, raggiungibile in auto</li>
    <li><strong>Comune:</strong> Castiglioncello, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.71,
  395,
  131,
  388,
  239,
  '3:59',
  208,
  '3:28',
  1832,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castiglioncello',
  '2024-04-01',
  '2024-04-01',
  '2024-04-13 00:00:00',
  '2024-04-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-cascata-del-mua-poggio-tedesco-167204875',
  NULL,
  43.422953,
  10.420917,
  'POINT(10.420917 43.422953)',
  'd8cbc5d2440e59e1a11f9fd76c941d13db0193a846253acd67eed4b1d4dbbbfc',
  'Escursione Monte Pelato Toscana: Anello facile 10.7km, +308m. Cascata del Mua, miniera abbandonata e vista panoramica! Perfetta per famiglie e cani.',
  'Monte Pelato: Escursione Cascata del Mua da Castiglioncello',
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
VALUES (167204875, 'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-cascata-del-mua-poggio-tedesco-167204875', NOW(), 'd8cbc5d2440e59e1a11f9fd76c941d13db0193a846253acd67eed4b1d4dbbbfc')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 167204875);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/167204875/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

COMMIT;

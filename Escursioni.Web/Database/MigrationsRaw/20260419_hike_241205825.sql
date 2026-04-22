BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  241205825,
  'Madonna delle Serre e Pieve di San verano da Peccioli',
  'Abbiamo parcheggiato l’auto presso il cimitero di Peccioli e iniziato una camminata turistica molto piacevole. Il percorso è ampio e ben mantenuto, transitabile anche da auto, quindi adatto anche per una passeggiata rilassata senza difficoltà tecniche. La prima tappa è stata verso l’anfiteatro di Fonte Mazzola; da lì abbiamo proseguito lungo la via delle Serre, con soste e foto all’ombra dei boschetti e nelle aree attrezzate che il territorio offre. Il tempo di cammino fino alla Chiesa della Madonna delle Serre e all’omonima fattoria è stato di circa un’ora e mezza, in un’ambiente davvero piacevole. Da lì siamo proseguiti ancora, verso gli stadi archeologici del Bosco di Ortaglia e poi alla chiesina delle Serre. Dopo la visita abbiamo fatto ritorno al centro di Peccioli: il borgo merita una sosta, con un bel balcone panoramico e un ponte panoramico dove godersi la vista, una merenda all’aperto e poi il rientro all’auto. In sintesi: un’escursione facile, perfetta per trascorrere qualche ora all’aria aperta immersi nella natura toscana, senza stress e con ottime opportunità fotografiche. Scarpe comode: non serve l’abbigliamento da trekking impegnato, ma comunque abiti adatti a strada sterrata. Consigli utili: - Prendere acqua e magari uno snack per le soste lungo il cammino. - Soste fotografiche: tante belle visuali verso la campagna Toscana e il bosco. - Se volete, potete estendere la passeggiata fino ai resti archeologici del Bosco di Ortaglia per dare un tocco storico all’escursione. Tempo stimato: circa 2-3 ore, a passo tranquillo includendo soste.',
  '<h2>Madonna delle Serre e Pieve di San verano da Peccioli: Trekking in Toscana</h2>

<h3>Il percorso</h3>
<p>Partirete dal cimitero di <strong>Peccioli</strong> per intraprendere un''entusiasmante <strong>escursione in montagna</strong> e <strong>trekking</strong> attraverso il cuore della <strong>Toscana</strong>. Questo sentiero, ideale per famiglie e appassionati di <strong>natura</strong>, offre un''esperienza unica di <strong>sentiero</strong> e scoperta. Il percorso è ampio e ben mantenuto, facile da transitare, adatto anche per una piacevole <strong>passeggiata in natura</strong> senza particolari difficoltà tecniche. La camminata conduce fino alla <strong>Chiesa della Madonna delle Serre</strong>, passando per l''<strong>anfiteatro di Fonte Mazzola</strong> e lungo la suggestiva <strong>via delle Serre</strong>, ammirando i boschetti e le aree attrezzate del territorio.</p>

<h3>Cosa aspettarsi</h3>
<p>Preparatevi a un''<strong>escursione</strong> rilassante e panoramica, perfetta per chi cerca una giornata all''aria aperta in mezzo alla <strong>natura toscana</strong>. Il sentiero vi condurrà attraverso paesaggi mozzafiato, con viste spettacolari sulla campagna circostante e sul <strong>bosco</strong>. Potrete godere di numerose soste fotografiche per immortalare la bellezza del paesaggio e delle zone archeologiche. Questa <strong>escursione</strong> è ideale per un''uscita di un giorno con amici e famiglia, offrendo un''esperienza autentica e indimenticabile.</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6 km</li>
    <li><strong>Dislivello:</strong> Circa 250 metri</li>
    <li><strong>Difficoltà:</strong> Facile - Adatta a tutti</li>
    <li><strong>Tempo stimato:</strong> 2-3 ore (a passo tranquillo)</li>
    <li><strong>Punti di interesse:</strong> Anfiteatro di Fonte Mazzola, Via delle Serre, Chiesa della Madonna delle Serre, Omonima Fattoria, Stadi Archeologici del Bosco di Ortaglia, Chiesina delle Serre, Borgo di Peccioli (con balcone panoramico e ponte panoramico)</li>
</ul>

<p>Ricordatevi di portare con voi acqua, uno snack e scarpe comode, adatte a strade sterrate. Un abbigliamento leggero e traspirante è consigliabile per affrontare l''<strong>trekking</strong> in modo confortevole.  L''<strong>escursione</strong> alla <strong>Madonna delle Serre</strong> è un''ottima opportunità per ammirare la <strong>Toscana</strong> da una prospettiva diversa e respirare l''aria fresca della <strong>montagna</strong>.  Questa <strong>escursione in sentiero</strong> è perfetta per chi cerca un''attività all''aria aperta, facile e divertente, per tutta la famiglia.</p>',
  'Tutte le Attività e Paesi',
  10.74,
  236,
  51,
  188,
  137,
  '02:17',
  137,
  '02:17',
  1742,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Peccioli',
  '2025-11-01',
  '2025-11-01',
  '2025-11-22 00:00:00',
  '2025-11-22 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/madonna-delle-serre-e-pieve-di-san-verano-da-peccioli-241205825',
  NULL,
  43.541451,
  10.721299,
  'POINT(10.721299 43.541451)',
  'dfe6baa94712277fa9fa8d7a69f6b255fd97c432c3d6833e1dd11721f2a03fe5',
  'Escursione Madonna delle Serre Peccioli: Anello facile 10.7km, +236m in Toscana. Trekking piacevole tra borgo, anfiteatro e fattoria. Perfetto per famiglie!',
  'Madonna delle Serre: escursione da Peccioli (Toscana)',
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
VALUES (241205825, 'https://it.wikiloc.com/percorsi-escursionismo/madonna-delle-serre-e-pieve-di-san-verano-da-peccioli-241205825', NOW(), 'dfe6baa94712277fa9fa8d7a69f6b255fd97c432c3d6833e1dd11721f2a03fe5')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 241205825);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/241205825/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/241205825/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 241205825;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  186447624,
  'Monte Prato fiorito ~ Monte coronato ~ Alta Via dei Pastori',
  'Questo è definibile come molto, molto facile e senza particolari rischi, ottimo per chi ama i prati Donna, lasciatevi influenzare dal fatto che a una prima impressione può essere molto duro perché la salita che abbiamo fatto è molto delicata e non presenta pettate. Arrivati a Lezza Forata inizia la salita, si abbandona le rocce e inizia l’erba e rovi (mai troppo fastidiosi), sia arriva facilmente alal foce del trebbio dove noi abbiamo deciso di fare un visita al Monte Coronato (anda e rianda) per poi salire in vetta dove abbiamo pranzato. Il panorama è molto bello e se è si ha una buona visuale si può vedere il mare e tutte le Apuane. La discesa si fa percorrendo la cresta del Prato fiorito sempre ella larga e senza esposizioni, ma comunque potrebbe dar noia se si soffre di vertigini, la discesa, ripida a tratti non è mai troppo difficile, terminata si torna per un sentiero tranquillo. Segni cai ovunque e paletti in vetta/cresta seguite il sentiero chiamato Alta Via dei Pastori',
  '<h2>Monte Prato fiorito ~ Monte coronato ~ Alta Via dei Pastori Trekking in Italia</h2>

<h3>Il percorso: Un''escursione facile tra prati e panorami mozzafiato</h3>
<p>Questo sentiero, <b>Monte Prato fiorito</b>, offre un''esperienza di <b>trekking</b> e <b>escursione</b> indimenticabile lungo la <b>montagna</b> delle Apuane.  È un percorso definito come molto facile, ideale per famiglie e per chi cerca una <b>passeggiata</b> in natura senza particolari difficoltà. L''<b>escursione</b> si snoda attraverso i prati del <b>Monte coronato</b>, un luogo magico perfetto per un <b>sentiero</b> di <b>trekking</b> in <b>Italia</b>.  La possibilità di percorrere l''<b>Alta Via dei Pastori</b> aggiunge un tocco di autenticità a questa magnifica <b>escursione</b>.</p>
<p>Il percorso inizia da Lezza Forata, dove si apre una salita dolce e graduale, passando da rovi e erba, ma mai troppo impegnativi.  Il punto culminante è la visita al <b>Monte Coronato</b>, un''occasione per un breve <b>dati</b> e <b>ripida</b> salita alla vetta, perfetta per un <b>pranzo</b> all''aria aperta.  Goditi un panorama spettacolare, con la possibilità di ammirare l''orizzonte e il mare (se le condizioni meteorologiche lo permettono).</p>

<h3>Cosa aspettarsi: Un''esperienza immersa nella natura</h3>
<ul>
    <li><b>Facilità</b>: Sentiero classificato come facile, adatto a tutti i livelli.</li>
    <li><b>Paesaggi</b>: Prati fioriti, panorami mozzafiato sulle Apuane e sul mare.</li>
    <li><b>Distanza</b>: Circa 8-10 km (discorsione), adattabile in base al livello di preparazione e interesse.</li>
    <li><b>Dislivello</b>: Circa 400-500 metri (discorsione), con tratti ripidi alla salita e alla discesa del <b>Monte coronato</b>.</li>
    <li><b>Vegetazione</b>: Prati, erba, rovi (presenti ma non eccessivamente fastidiosi) e <b>natura</b> incontaminata.</li>
</ul>

<h3>Informazioni utili: Preparazione e consigli per il sentiero</h3>
<p>Il sentiero è ben segnalato con i segnali del <b>Cai</b> e paletti in vetta/cresta.  È consigliabile indossare scarpe da trekking adatte, portare con sé acqua, snack e protezioni solari.  Considera la possibilità di percorrere il sentiero in giornate di sole per godere appieno del <b>panorama</b>.  La discesa lungo la cresta del <b>Prato fiorito</b>, pur larga e priva di esposizioni, potrebbe essere impegnativa per chi soffre di <b>vertigini</b>. Segui attentamente i sentieri segnalati per un''<b>escursione</b> sicura e piacevole. Questo <b>sentiero</b> è perfetto per un''<b>escursione</b> in <b>montagna</b>.</p>',
  'Tutte le Attività e Paesi',
  10.15,
  820,
  549,
  1310,
  293,
  '4:53',
  255,
  '4:15',
  1060,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'San Cassiano',
  '2024-09-01',
  '2024-09-01',
  '2024-09-28 00:00:00',
  '2024-09-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-prato-fiorito-monte-coronato-alta-via-dei-pastori-186447624',
  NULL,
  44.040777,
  10.630393,
  'POINT(10.630393 44.040777)',
  'e8b4d083247a298fa91406de3386fac8fd35359308651fc7c4e96da65e9ee0b2',
  'Escursione Monte Prato fiorito, Toscana: Anello facile 10km, +820m. Alta Via dei Pastori, vista mare e Apuane. Partenza da Lezza Forata. Ideale per principia...',
  'Monte Prato Fiorito: Escursione Facile da Lezza Forata',
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
VALUES (186447624, 'https://it.wikiloc.com/percorsi-escursionismo/monte-prato-fiorito-monte-coronato-alta-via-dei-pastori-186447624', NOW(), 'e8b4d083247a298fa91406de3386fac8fd35359308651fc7c4e96da65e9ee0b2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 186447624);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/186447624/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/186447624/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 186447624;

COMMIT;

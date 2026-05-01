BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  186447624,
  'Monte Prato fiorito ~ Monte coronato ~ Alta Via dei Pastori',
  'Questo è definibile come molto, molto facile e senza particolari rischi, ottimo per chi ama i prati Donna, lasciatevi influenzare dal fatto che a una prima impressione può essere molto duro perché la salita che abbiamo fatto è molto delicata e non presenta pettate. Arrivati a Lezza Forata inizia la salita, si abbandona le rocce e inizia l’erba e rovi (mai troppo fastidiosi), sia arriva facilmente alal foce del trebbio dove noi abbiamo deciso di fare un visita al Monte Coronato (anda e rianda) per poi salire in vetta dove abbiamo pranzato. Il panorama è molto bello e se è si ha una buona visuale si può vedere il mare e tutte le Apuane. La discesa si fa percorrendo la cresta del Prato fiorito sempre ella larga e senza esposizioni, ma comunque potrebbe dar noia se si soffre di vertigini, la discesa, ripida a tratti non è mai troppo difficile, terminata si torna per un sentiero tranquillo. Segni cai ovunque e paletti in vetta/cresta seguite il sentiero chiamato Alta Via dei Pastori',
  '<h2 id="escursione-monte-prato-fiorito-monte-coronato-alta-via-dei-pastori">Escursione al Monte Prato Fiorito, Monte Coronato e Alta Via dei Pastori</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa fantastica escursione è a Lezza Forata, facilmente raggiungibile in auto. Da qui, seguiamo il sentiero che ci porterà verso le cime.  L''accesso è pratico e non richiede particolari preparativi.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Partiamo da Lezza Forata e subito inizieremo una salita ben definita, prima su roccia, poi in mezzo al prato e alla vegetazione.  Il sentiero è ben segnalato dai cartelli CAI e dai paletti, seguendo l''Alta Via dei Pastori.  Raggiungeremo la foce del Trebbio, da dove inizieremo a salire verso il Monte Coronato, per poi proseguire fino alla vetta del Monte Prato Fiorito per un pranzo all''aperto. Il panorama è spettacolare, soprattutto se la visibilità è buona, con la possibilità di ammirare il mare e le Apuane. La discesa riprevede la stessa cresta, sempre ampia e sicura, ma con alcuni tratti più ripidi. È una bellissima escursione adatta anche a chi non ha molta esperienza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di difficoltà <strong>Media</strong>. Il dislivello di <strong>+820 metri</strong> e la distanza di <strong>10.15 km</strong> richiedono una buona preparazione fisica. Il sentiero è in gran parte in erba, quindi è consigliabile indossare scarpe da trekking adatte. Nonostante la salita possa sembrare impegnativa, il sentiero è ben tenuto e i passaggi più difficili sono ben segnalati.  Non ci sono esposizioni significative, ma la discesa, in alcuni tratti, può risultare un po'' monotona per chi soffre di vertigini.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>La distanza totale dell''escursione è di <strong>10.15 km</strong> con un dislivello di <strong>+820 metri</strong>. Si tratta di un <strong>anello</strong>, quindi il percorso completo riporterà al punto di partenza.  Per facilitare l''escursione, vi consiglio di scaricare una <strong >traccia GPS</strong>. Il percorso è segnalato con cartelli CAI e paletti, quindi è facile seguirlo. È consigliabile indossare abbigliamento e scarpe da trekking adeguati e portare con sé acqua, cibo e una mappa.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong>Distanza:</strong> Circa 10.15 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 820 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Lezza Forata (accessibile in auto)</li>
  <li><strong>Comune:</strong> San Cassiano, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico / Alta Via dei Pastori</li>
  <li><strong>Parco Nazionale:</strong> Non applicabile</li>
</ul>',
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

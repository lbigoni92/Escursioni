BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104515816,
  'Scarlino - Cala Violina',
  'Abbiamo parcheggiato a Scarlino dove il parcheggio era Gratuito e abbiamo proseguito a piedi fino ad arrivare a Cala violina la camminata è stata molto tranquilla e rilassante 10km tra andata e ritorno tutti in piano. Il percorso è ben segnalato, facile da seguire e non presenta alcuna criticità. La spiaggia di Cala violina è un Paradiso unico nel suo genere, spiaggia fine , mare cristallino e popolato da numerose specie d''animali acquatici. Abbiamo pagato 2 euro d''ingrasso.. anche se vi sono altri accessi gratuiti.... l''abbiamo scoperto dopo, abbiamo considerato la spesa di 2 euro un contributo al comune, ma ecco non è difficile aggirare i controlli.',
  '<h2>Sentiero di Trekking Scarlino – Cala Violina: Escursione Panoramica sulla Costa Toscana</h2>

<h3>Il Percorso: Un’Escursione di Trekking Facile verso Cala Violina</h3>
<p>
Immaginatevi di iniziare la vostra giornata con una fantastica <strong>escursione di trekking</strong> lungo il <strong>sentiero Scarlino – Cala Violina</strong>, un''esperienza indimenticabile che vi condurrà alla scoperta di un angolo di paradiso sulla costa toscana. Questo percorso di <strong>trekking</strong> di andata e ritorno, di circa 10 km, è perfettamente pianeggiante, rendendolo ideale per <strong>escursionisti</strong> di tutti i livelli. Il <strong>sentiero</strong> è ben segnalato, garantendo una camminata tranquilla e rilassante immersi nella natura incontaminata della <strong>montagna</strong> toscana e del suo paesaggio costiero. 
</p>

<h3>Cosa Aspettarsi: Natura, Paesaggi e Relax</h3>
<p>
Preparatevi a vivere un''esperienza unica in questo <strong>sentiero di trekking</strong>.  La camminata è estremamente tranquilla e rilassante, offrendovi la possibilità di immergervi completamente nella bellezza della natura. Ammirerete panorami mozzafiato sulla costa toscana, le sue scogliere a picco sul mare e le acque cristalline di Cala Violina. L''ambiente è ricco di flora e fauna, con la possibilità di avvistare numerose specie di animali acquatici. Questo <strong>sentiero escursionistico</strong> è perfetto per chi cerca una giornata di relax e contatto con la natura in <strong>Italia</strong>.
</p>

<h3>Informazioni Utili per il Vostro Trekking</h3>
<ul>
    <li><b>Distanza:</b> Circa 10 km (andata e ritorno)</li>
    <li><b>Difficoltà:</b> Facile – Adatto a tutti i livelli di esperienza</li>
    <li><b>Tempo di percorrenza:</b> Circa 3-4 ore (a seconda del ritmo)</li>
    <li><b>Punto di partenza:</b> Scarlino (parcheggio gratuito)</li>
    <li><b>Punto di arrivo:</b> Cala Violina – Spiaggia fine con mare cristallino</li>
    <li><b>Segnaletica:</b> Il <strong>sentiero</strong> è ben segnalato con pannelli informativi</li>
    <li><b>Attrezzatura consigliata:</b> Scarpe da trekking, acqua, snack, crema solare, cappello</li>
</ul>

<p>
La spiaggia di Cala Violina, un vero e proprio paradiso, vi aspetta per un meritato riposo. La sabbia è finissima, l''acqua cristallina e la spiaggia è popolata da numerose specie di animali acquatici.  Anche se l''accesso alla spiaggia è a pagamento (circa 2 euro), consideriamo questo piccolo contributo al comune come un piccolo gesto di apprezzamento per la bellezza di questo luogo unico. Ricordatevi, però, che esistono anche altri accessi gratuiti alla spiaggia, facilmente aggirabili. Godetevi questa splendida <strong>escursione di trekking</strong> lungo il <strong>sentiero</strong> Scarlino – Cala Violina, un''esperienza che vi lascerà a cuore il ricordo di un giorno perfetto in <strong>montagna</strong> e in <strong>natura</strong>!</p>',
  'Tutte le Attività e Paesi',
  10.68,
  249,
  3,
  62,
  219,
  '3:39',
  190,
  '3:10',
  1773,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Dogana',
  '2022-06-01',
  '2022-06-01',
  '2022-06-03 00:00:00',
  '2022-06-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cala-violina-104515816',
  NULL,
  42.884175,
  10.787528,
  'POINT(10.787528 42.884175)',
  'd855dbd4af07fb9679b0b34cfe6ebf84acfee361dd7fd108c24a542072635e12',
  'Escursione Scarlino Cala Violina: Trekking 10.68km facile in Toscana, +161m dislivello. Spiaggia paradisiaca e mare cristallino! Percorso segnalato, Dogana.',
  'Cala Violina: Escursione da Scarlino (10km, facile)',
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
VALUES (104515816, 'https://it.wikiloc.com/percorsi-escursionismo/cala-violina-104515816', NOW(), 'd855dbd4af07fb9679b0b34cfe6ebf84acfee361dd7fd108c24a542072635e12')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104515816);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104515816/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

COMMIT;

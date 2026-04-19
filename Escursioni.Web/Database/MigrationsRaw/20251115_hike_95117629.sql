BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  95117629,
  'Florence',
  'Pomeriggio nella storica città di Firenze, in questa giornata abbiamo visitato numerosi punti d''interesse della città quali: chiesa di Santa Maria Maggiore, Piazza San Lorenzo, piazza del duomo , il campanile di Giotto, Piazza della signori, Piazza di Santa Croce, Piazzale Michelangelo, Il giardino Delle Rose, Palazzo Pitti, Sagrestia di Santo Spirito, Basilica di santa Trinità, Piazza delle repubblica. la giornata è stata molto bella e abbiamo visitato numerose chiese (anche se molti posti erano a pagamento) Fontanelle pubbliche: ne abbiamo trovate solo una in piazza della Repubblica Lo consiglio per chi Vuole passare una giornata a Firenze.',
  '<h2>Trekking Firenze: Escursione nel Cuore della Culla del Rinascimento</h2>

<h3>Il Percorso</h3>
<p>
Immergiti nella storia e nella bellezza di <strong>Firenze</strong> con questa emozionante <strong>escursione a piedi</strong>. Questo itinerario ti condurrà attraverso i luoghi più iconici della città, offrendoti una prospettiva unica sulla sua architettura e sulla sua vibrante cultura. L''<strong>trekking</strong> è pensato per una giornata intensa di scoperta, combinando l''attività fisica con l''esplorazione dei monumenti più importanti di <strong>Firenze</strong>. Preparati a camminare ammirando la <strong>natura</strong>, i palazzi storici e le maestose chiese di <strong>Firenze</strong>.
</p>

<h3>Cosa Aspettarsi</h3>
<ul>
  <li>Un''immersione nella storia e nell''arte di <strong>Firenze</strong>.</li>
  <li>La possibilità di visitare numerosi punti di interesse, tra cui la **Basilica di Santa Maria Maggiore**, la **Piazza del Duomo** e il **Campanile di Giotto**.</li>
  <li>Un''<strong>escursione</strong> in un ambiente urbano ricco di storia e cultura, ideale per gli amanti del <strong>trekking</strong> e del patrimonio artistico italiano.</li>
  <li>Un''opportunità per esplorare la città a piedi, scoprendo angoli nascosti e ammirando panorami mozzafiato.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>
Questo <strong>sentiero</strong> di <strong>trekking</strong> a <strong>Firenze</strong> è adatto a tutti coloro che amano le <strong>escursioni</strong> a piedi e la scoperta di nuove città. La distanza totale del percorso è di circa 8 km, con un dislivello di 150 metri, rendendolo una <strong>escursione</strong> di media difficoltà. L''itinerario si snoda attraverso il centro storico di <strong>Firenze</strong>, consentendoti di ammirare le principali attrazioni della città.  Ricorda di indossare scarpe comode e di portare con te acqua e snack. 
</p>
<p>
Non mancherà l''occasione di visitare luoghi suggestivi come la **Piazzale Michelangelo**, il **Giardino delle Rose** e la **Sagrestia di Santo Spirito**.  Puoi includere la visita delle principali chiese come la **Basilica di Santa Trinità** e **Piazza della Signoria** nel tuo percorso di <strong>trekking</strong>.  </p>
<p>
<em>Consigliamo di pianificare la tua visita tenendo conto degli orari di apertura dei monumenti e delle chiese, soprattutto durante l''alta stagione.</em></p>',
  'Tutte le Attività e Paesi',
  13.63,
  187,
  7,
  148,
  122,
  '02:02',
  122,
  '02:02',
  1715,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Florence',
  '2022-02-01',
  '2022-02-01',
  '2022-02-12 00:00:00',
  '2022-02-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/florence-95117629',
  NULL,
  43.77577,
  11.247443,
  'POINT(11.247443 43.77577)',
  'd7294c78180a57e626fc7cd9a082f5c8422f12cc711465031912d1aa61714810',
  'Escursione a Firenze: Piazza del Duomo, Ponte Vecchio, Palazzo Pitti e vista Piazzale Michelangelo! Scopri il cuore di Firenze!',
  'Trekking Firenze: Escursione tra Arte e Storia!',
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
VALUES (95117629, 'https://it.wikiloc.com/percorsi-escursionismo/florence-95117629', NOW(), 'd7294c78180a57e626fc7cd9a082f5c8422f12cc711465031912d1aa61714810')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 95117629);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/95117629/photo_04.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95117629/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95117629;

COMMIT;

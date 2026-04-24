BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181130960,
  'Cascate del Piscio e ponte della Colombara',
  'Cascate del Piscio e ponte della Colombara Il percorso si divide in due parti. La prima parte nella parte che arriva al ponte della Colombaia, questa parte è molto corta ed è molto carina il ponte è stato restaurato di recente e accanto adesso vi è una fontana, noi abbiamo deciso di scendere e vedere anche la cascata da sotto il ponte state attenti se lo fate il percorso non è dei meglio tenuti. La seconda parte è quella principale che ci ha spinto ad arrivare fin qua, partendo dal paesino di pannocchia abbiamo deciso di intraprendere il sentiero che portava alle Cascate del piscio, Il sentiero è molto semplice e lineare difficile da perdersi l''unico bivio che si presenta è ben segnato e si deve girare a sinistra,in un paio di punti il sentiero presenta delle piccole frane ma niente che non si possa superare. Durante il percorso per la cascata si passa anche al vicino a un''altra cascata che mi sarebbe piaciuto visitare ma in meso non era messo benissimo e per questa volta ho deciso di passare oltre visto che la discesa sarebbe stata non proprio ortodossa arrivati alle cascate, vi sono numerosi posti dove sederci e fare un bagno è d''obbligo in quanto l''acqua è cristallina e le cascate meravigliose, torneremo sicuramente in questo posto.',
  '<h2>Cascate del Piscio e Ponte della Colombara: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>

<p>
Questo sentiero di <strong>trekking</strong> e <strong>escursione</strong> vi porterà alla scoperta delle spettacolari <strong>cascate del Piscio</strong> e del suggestivo <strong>ponte della Colombara</strong>. Il percorso è diviso in due parti: la prima, breve e affascinante, conduce al <strong>ponte restaurato</strong> con la sua <strong>fontana</strong>, mentre la seconda parte è la vera e propria <strong>escursione</strong> che vi condurrà alle <strong>cascate</strong>. 
</p>

<p>
L''intero <strong>sentiero</strong> si snoda in modo semplice e lineare, facile da seguire, con un <em>unico bivio</em> ben segnalato che richiede una svolta a sinistra. Pur presentando alcune piccole <strong>frane</strong> in alcuni punti, il percorso è superabile senza difficoltà, rendendolo adatto anche a <strong>trekking</strong> di livello base e medio.</p>

<h3>Cosa Aspettarsi</h3>

<p>
Preparatevi ad un''esperienza immersa nella natura incontaminata, dove potrete ammirare la bellezza delle <strong>cascate</strong>, l''acqua cristallina e la fauna locale. L''<strong>escursione</strong> vi regalerà panorami mozzafiato e la possibilità di fare un bagno rinfrescante nelle pozze naturali. 
</p>

<p>
Questo <strong>sentiero in montagna</strong> è perfetto per chi cerca un''<strong>escursione</strong> di un giorno, un''occasione per connettersi con la natura e vivere un''esperienza di <strong>trekking</strong> indimenticabile nel cuore dell''Italia. Ricordate di indossare scarpe da <strong>trekking</strong> adatte e di portare con voi acqua e snack per affrontare al meglio l''<strong>escursione</strong>.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Località:</strong> Pannocchia</li>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Circa 5 km (andata e ritorno)</li>
    <li><strong>Dislivello:</strong> Circa 200 metri</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero di <strong>trekking</strong></li>
    <li><strong>Punti di Interesse:</strong> Ponte della Colombara, Cascate del Piscio, Fontana, Cascate secondarie.</li>
    <li><strong>Consigli:</strong>  Indossare scarpe da <strong>trekking</strong>, portare acqua e snack, fare attenzione alle frane, rispettare l''ambiente.</li>
</ul>

<p>
Questo <strong>sentiero per escursioni</strong> è un''ottima opportunità per scoprire le bellezze naturali della regione e vivere un''esperienza di <strong>trekking</strong> emozionante e rigenerante. Non perdete l''occasione di visitare le <strong>cascate del Piscio</strong> e il <strong>ponte della Colombara</strong>! </p>',
  'Tutte le Attività e Paesi',
  5.89,
  341,
  596,
  744,
  149,
  '2:29',
  129,
  '2:09',
  933,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pracchiola',
  '2024-08-01',
  '2024-08-01',
  '2024-08-15 00:00:00',
  '2024-08-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascate-del-piscio-e-ponte-della-colombara-181130960',
  NULL,
  44.427482,
  9.959625,
  'POINT(9.959625 44.427482)',
  '052bbc48678b91280830de99e7c61dff2c059c4a548dac6528b5e571f7019b26',
  'Escursione Cascate del Piscio Pracchiola: Anello facile 5.89km +242m. Ponte Colombara restaurato. Cascate & bagno! Toscana, Italia.',
  'Cascate del Piscio: Escursione Facile da Pannocchia',
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
VALUES (181130960, 'https://it.wikiloc.com/percorsi-escursionismo/cascate-del-piscio-e-ponte-della-colombara-181130960', NOW(), '052bbc48678b91280830de99e7c61dff2c059c4a548dac6528b5e571f7019b26')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 181130960);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/181130960/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181130960/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181130960;

COMMIT;

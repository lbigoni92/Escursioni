BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181130960,
  'Cascate del Piscio e ponte della Colombara',
  'Cascate del Piscio e ponte della Colombara Il percorso si divide in due parti. La prima parte nella parte che arriva al ponte della Colombaia, questa parte è molto corta ed è molto carina il ponte è stato restaurato di recente e accanto adesso vi è una fontana, noi abbiamo deciso di scendere e vedere anche la cascata da sotto il ponte state attenti se lo fate il percorso non è dei meglio tenuti. La seconda parte è quella principale che ci ha spinto ad arrivare fin qua, partendo dal paesino di pannocchia abbiamo deciso di intraprendere il sentiero che portava alle Cascate del piscio, Il sentiero è molto semplice e lineare difficile da perdersi l''unico bivio che si presenta è ben segnato e si deve girare a sinistra,in un paio di punti il sentiero presenta delle piccole frane ma niente che non si possa superare. Durante il percorso per la cascata si passa anche al vicino a un''altra cascata che mi sarebbe piaciuto visitare ma in meso non era messo benissimo e per questa volta ho deciso di passare oltre visto che la discesa sarebbe stata non proprio ortodossa arrivati alle cascate, vi sono numerosi posti dove sederci e fare un bagno è d''obbligo in quanto l''acqua è cristallina e le cascate meravigliose, torneremo sicuramente in questo posto.',
  '<h2 id="escursione-cascate-del-piscio-e-ponte-della-colombara">Escursione alle Cascate del Piscio e al Ponte della Colombara</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa bella escursione è nel paesino di <strong>Pannocchia</strong>, raggiungibile in auto. Da lì, intraprendi il sentiero che conduce alle Cascate del Piscio e al Ponte della Colombara. Il percorso è facilmente raggiungibile a piedi dal paese.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione si divide in due parti. La prima è breve e piacevole, fino al <strong>ponte della Colombara</strong>, recentemente restaurato e con una fontana. Da qui, prosegui per la seconda parte del percorso, che ti porterà alle <strong>Cascate del Piscio</strong>. Il sentiero è semplice e lineare, con un unico bivio ben segnalato a cui devi girare a sinistra. In alcuni punti, il sentiero presenta piccole frane, ma sono facilmente superabili.  Il giro è di tipo <strong>anello</strong> e si conclude al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong>escursione</strong> è di <strong>facile</strong> difficoltà, adatta anche ai principianti. Il dislivello è di circa <strong>341 metri</strong> e la distanza totale del giro è di <strong>5.89 km</strong>.  Preparati a camminare su un sentiero leggermente irregolare in alcuni punti, ma niente di particolarmente impegnativo.  Goditi il panorama e il suono delle cascate!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Sarà disponibile una <strong id="traccia-gps">traccia GPS</strong> per accompagnarti durante l''escursione.  Ti consigliamo di indossare scarpe da trekking adatte e di portare con te acqua e snack.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong id="distanza">Distanza:</strong> Circa 5.89 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 341 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Pannocchia, accessibile in auto o a piedi</li>
  <li><strong id="comune">Comune:</strong> Pracchiola, Toscana, Italia</li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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
  'Lunigiana',
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

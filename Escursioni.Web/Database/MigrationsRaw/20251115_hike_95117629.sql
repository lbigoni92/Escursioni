BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  95117629,
  'Florence',
  'Pomeriggio nella storica città di Firenze, in questa giornata abbiamo visitato numerosi punti d''interesse della città quali: chiesa di Santa Maria Maggiore, Piazza San Lorenzo, piazza del duomo , il campanile di Giotto, Piazza della signori, Piazza di Santa Croce, Piazzale Michelangelo, Il giardino Delle Rose, Palazzo Pitti, Sagrestia di Santo Spirito, Basilica di santa Trinità, Piazza delle repubblica. la giornata è stata molto bella e abbiamo visitato numerose chiese (anche se molti posti erano a pagamento) Fontanelle pubbliche: ne abbiamo trovate solo una in piazza della Repubblica Lo consiglio per chi Vuole passare una giornata a Firenze.',
  '<h2 id="escursione-firenze-giornata-citta">Escursione a Firenze: Una Giornata tra Arte e Storia</h2>

<p>
Oggi mi sono lasciato alle spalle il sentiero per immergermi nel cuore di <strong>Firenze</strong>, un''esperienza incredibile per chiunque ami la storia, l''arte e il buon panorama. È stata una giornata intensa, ricca di scoperte e momenti indimenticabili. Ho esplorato alcuni dei luoghi più iconici della città, godendomi ogni angolo e ammirando la bellezza di questo capolavoro italiano.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza ideale per questa escursione è il centro storico di <strong>Firenze</strong>, facilmente raggiungibile in auto o con i mezzi pubblici. Da lì, ho potuto iniziare la mia passeggiata e immergermi subito nell''atmosfera vibrante della città.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il mio percorso è stato un vero e proprio viaggio attraverso i secoli, partendo da Piazza del Duomo e proseguendo attraverso Piazza San Lorenzo, Piazza della Signoria, Piazza di Santa Croce, fino a raggiungere il suggestivo <strong>Piazzale Michelangelo</strong>. Ho visitato la magnifica <strong>Basilica di Santa Maria Maggiore</strong>, la maestosa <strong>Sagrestia di Santo Spirito</strong> e la splendida <strong>Basilica di santa Trinità</strong>. Non sono mancate le visite a Palazzo Pitti e al Giardino delle Rose. Ho concluso la giornata ammirando la <strong>Piazza delle repubblica</strong>. Un anello di circa <strong>13.63 km</strong>, con un dislivello positivo di circa <strong>789 metri</strong>.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
Questa escursione è considerata di difficoltà <strong>Facile</strong>, adatta a tutti, sia a chi è alle prime armi che a chi cerca una passeggiata piacevole e senza particolari impegnativi. Il percorso è in gran parte pianeggiante, con qualche lieve salita.  Preparatevi a camminare per diverse ore e a godervi lo spettacolo che la città ha da offrire.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Per facilitare la vostra escursione, vi consiglio di scaricare una traccia GPS per il vostro dispositivo preferito.  Ecco alcune informazioni pratiche utili per pianificare la vostra visita:
</p>
<ul>
    <li><strong>Distanza:</strong> Circa 13.63 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 789 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Centro storico di Firenze, Italia</li>
    <li><strong>Comune:</strong> Firenze, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero urbano/Passeggiata</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong id="distanza">Distanza:</strong> Circa 13.63 km (anello)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 789 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Centro storico di Firenze, Italia</li>
  <li><strong id="comune">Comune:</strong> Firenze, Toscana</li>
  <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero urbano/Passeggiata</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.63,
  789,
  7,
  148,
  344,
  '5:44',
  299,
  '4:59',
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
  'Escursione Firenze: Anello facile 13.6km | Toscana | Visita città e monumenti! Perfetto per una giornata a Firenze, con punti di interesse come Duomo, Ponte ...',
  'Firenze: Escursione Facile tra i Tesori Rinascimentali',
  'Firenze e provincia',
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

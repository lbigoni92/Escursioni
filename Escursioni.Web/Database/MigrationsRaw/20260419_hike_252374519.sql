BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita,
  distanza_km, dislivello_m, quota_min_m, quota_max_m,
  tempo_min, tempo_hhmm,
  tempo_mov_min, tempo_mov_hhmm, coordinate_count,
  difficolta, tipo_giro, superficie,
  regione, provincia, comune,
  data_escursione, data_registrato, data_caricato, data_pubblicazione,
  url, bbox, centroid_lat, centroid_lon, geom,
  sha256_payload, created_at, updated_at
)
VALUES (
  252374519,
  'Moriglione di Penna, Monte Penna e Passo di Dante da san cerbone',
  '🥾 Anello da San Cerbone – Moriglione di Penna, Monte Penna e Passo di Dante Percorso ad anello panoramico che parte da San Cerbone e attraversa alcune delle cime più caratteristiche del Monte Pisano, alternando boschi, crinali aperti e tratti tecnici mai estremi ma sempre interessanti. Dopo aver parcheggiato senza particolari difficoltà nei pressi del paese, l’escursione inizia con un breve tratto tra le stradine della piccola cittadina, utile per scaldare le gambe prima di entrare nel sentiero vero e proprio. Da qui in avanti il percorso rimane sempre su traccia segnata, senza mai abbandonare il sentiero principale. Salita al Moriglione di Penna Dopo circa 1,9 km si incontra una deviazione opzionale: la direttissima del Monte Penna, variante ripida e impegnativa, consigliata solo a escursionisti esperti. È probabilmente uno dei tratti più tecnici della zona, con salita diretta su terreno ripido e continuo. In questa occasione abbiamo scelto di restare sul percorso escursionistico classico. La salita conduce progressivamente al Moriglione di Penna (2,9 km), con pendenza sostenuta ma regolare, uno dei pochi punti realmente faticosi dell’anello. Monte Penna e ritorno al crinale Dal Moriglione abbiamo proseguito fino al Monte Penna (3,6 km), la cima più orientale del versante, raggiungendo un bellissimo punto panoramico. Il tratto richiede attenzione per la presenza di pietre mobili che rallentano la progressione. Rientrati al Moriglione, abbiamo imboccato il sentiero verso il bivacco del Monte Penna, struttura di recente costruzione (assente nelle escursioni precedenti in zona), ottimo punto di riferimento lungo il percorso. Creste tecniche: Cimette e Monte Cupola Da qui inizia una parte molto interessante dell’itinerario: un tratto più tecnico e vario che percorre il crinale passando per: Le Cimette (7,6 km) Monte Cupola (8,3 km) Il sentiero diventa più roccioso e movimentato, regalando scorci continui tra il versante lucchese e quello pisano. Eremo della Spelonca e Monte San Giuliano Proseguendo si raggiunge l’isolato e suggestivo Eremo della Spelonca (9,6 km), luogo sempre affascinante immerso nel silenzio del bosco. Da qui abbiamo deciso di salire anche sulla vetta del Monte San Giuliano (10,6 km), deviazione breve ma consigliata per ampliare ulteriormente i panorami. Passo di Dante e rientro La discesa porta infine al Passo di Dante (11 km), storico punto di passaggio del Monte Pisano, prima di rientrare sul tracciato che chiude l’anello verso San Cerbone. ⚠️ Difficoltà e caratteristiche Percorso mai realmente difficile, ma con alcuni tratti da affrontare con attenzione: salita ripida al Moriglione di Penna; eventuale direttissima (solo esperti); tratto Moriglione → Monte Penna con pietrisco instabile. Sentiero sempre evidente e continuo. Escursione molto varia e panoramica.',
  '🥾 Anello da San Cerbone – Moriglione di Penna, Monte Penna e Passo di Dante <br> <br>Percorso ad anello panoramico che parte da San Cerbone e attraversa alcune delle cime più caratteristiche del Monte Pisano, alternando boschi, crinali aperti e tratti tecnici mai estremi ma sempre interessanti. <br> <br>Dopo aver parcheggiato senza particolari difficoltà nei pressi del paese, l’escursione inizia con un breve tratto tra le stradine della piccola cittadina, utile per scaldare le gambe prima di entrare nel sentiero vero e proprio. Da qui in avanti il percorso rimane sempre su traccia segnata, senza mai abbandonare il sentiero principale. <br> <br>Salita al Moriglione di Penna <br> <br>Dopo circa 1,9 km si incontra una deviazione opzionale: la direttissima del Monte Penna, variante ripida e impegnativa, consigliata solo a escursionisti esperti. È probabilmente uno dei tratti più tecnici della zona, con salita diretta su terreno ripido e continuo. In questa occasione abbiamo scelto di restare sul percorso escursionistico classico. <br> <br>La salita conduce progressivamente al Moriglione di Penna (2,9 km), con pendenza sostenuta ma regolare, uno dei pochi punti realmente faticosi dell’anello. <br> <br>Monte Penna e ritorno al crinale <br> <br>Dal Moriglione abbiamo proseguito fino al Monte Penna (3,6 km), la cima più orientale del versante, raggiungendo un bellissimo punto panoramico. Il tratto richiede attenzione per la presenza di pietre mobili che rallentano la progressione. <br> <br>Rientrati al Moriglione, abbiamo imboccato il sentiero verso il bivacco del Monte Penna, struttura di recente costruzione (assente nelle escursioni precedenti in zona), ottimo punto di riferimento lungo il percorso. <br> <br>Creste tecniche: Cimette e Monte Cupola <br> <br>Da qui inizia una parte molto interessante dell’itinerario: un tratto più tecnico e vario che percorre il crinale passando per: <br> <br>Le Cimette (7,6 km) <br> <br>Monte Cupola (8,3 km) <br> <br>Il sentiero diventa più roccioso e movimentato, regalando scorci continui tra il versante lucchese e quello pisano. <br> <br>Eremo della Spelonca e Monte San Giuliano <br> <br>Proseguendo si raggiunge l’isolato e suggestivo Eremo della Spelonca (9,6 km), luogo sempre affascinante immerso nel silenzio del bosco. <br> <br>Da qui abbiamo deciso di salire anche sulla vetta del Monte San Giuliano (10,6 km), deviazione breve ma consigliata per ampliare ulteriormente i panorami. <br> <br>Passo di Dante e rientro <br> <br>La discesa porta infine al Passo di Dante (11 km), storico punto di passaggio del Monte Pisano, prima di rientrare sul tracciato che chiude l’anello verso San Cerbone. <br> <br>⚠️ Difficoltà e caratteristiche <br> <br>Percorso mai realmente difficile, ma con alcuni tratti da affrontare con attenzione: <br> <br>salita ripida al Moriglione di Penna; <br> <br>eventuale direttissima (solo esperti); <br> <br>tratto Moriglione → Monte Penna con pietrisco instabile. <br> <br>Sentiero sempre evidente e continuo. <br> <br>Escursione molto varia e panoramica.',
  'Tutte le Attività e Paesi',
  12.52,
  744,
  82,
  529,
  186,
  '03:06',
  186,
  '03:06',
  2164,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'san cerbone',
  '2026-02-01',
  '2026-02-01',
  '2026-02-28 00:00:00',
  '2026-02-28 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/moriglione-di-penna-monte-penna-e-passo-di-dante-da-san-cerbone-252374519',
  NULL,
  43.779576,
  10.455166,
  'POINT(10.455166 43.779576)',
  '509428bdf93aa373de8146762faf143fb0b201634e20ce7b1be631821a205ffd',
  NOW(), NOW()
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (252374519, 'https://it.wikiloc.com/percorsi-escursionismo/moriglione-di-penna-monte-penna-e-passo-di-dante-da-san-cerbone-252374519', NOW(), '509428bdf93aa373de8146762faf143fb0b201634e20ce7b1be631821a205ffd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 252374519);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/252374519/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/252374519/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 252374519;

COMMIT;

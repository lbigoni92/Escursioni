BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87371098,
  'Due giorni - Pania della croce',
  'partenza dalla Cappella votiva del C.A.I. 55020 Molazzana LU parcheggio a pagamento 3 euro tutto il giorno. Abbiamo preso il sentiero dove siamo arrivati al rifugio rossi e piantato le tende, in seguito abbiamo proseguito fino alla vetta dove abbiamo visto il tramonto, in seguito siamo scesi con le ultime luci. Consiglio di portare una torcia frontale bello il punto sulla salita dov''è possibile vedere della neve perenne. La mattina seguente abbiamo visto sorgere il sole in ima all'' Uomo Morto, spettacolo stupendo',
  'partenza dalla Cappella votiva del C.A.I. 55020 Molazzana LU parcheggio a pagamento 3 euro tutto il giorno. <br> <br>Abbiamo preso il sentiero dove siamo arrivati al rifugio rossi e piantato le tende, in seguito abbiamo proseguito fino alla vetta dove abbiamo visto il tramonto, in seguito siamo scesi con le ultime luci. <br> <br>Consiglio di portare una torcia frontale bello il punto sulla salita dov''è possibile vedere della neve perenne. <br> <br>La mattina seguente abbiamo visto sorgere il sole in ima all'' Uomo Morto, spettacolo stupendo',
  'Tutte le Attività e Paesi',
  9.73,
  1,
  1,
  1,
  316,
  '05:16',
  NULL,
  NULL,
  476,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cornola',
  '2021-10-01',
  '2021-10-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/due-giorni-pania-della-croce-con-lupus-in-trekking-87371098',
  NULL,
  44.05273,
  10.34422,
  'POINT(10.34422 44.05273)',
  '69801e84c6e3baa56f94d97aea14f951f8d7ac637f10f0e8417b2768a4fde866',
  'Escursione 2 giorni Pania della Croce Lucca: tramonto mozzafiato e alba sull''Uomo Morto. Sentieri impervi, vista spettacolare e neve perenne!',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87371098, 'https://it.wikiloc.com/percorsi-escursionismo/due-giorni-pania-della-croce-con-lupus-in-trekking-87371098', NOW(), '69801e84c6e3baa56f94d97aea14f951f8d7ac637f10f0e8417b2768a4fde866')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371098);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371098/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371098;

COMMIT;

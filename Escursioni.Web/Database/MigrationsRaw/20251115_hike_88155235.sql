BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  88155235,
  'Pratorsi - Corno alle Scale - Lago Scaffaiolo - Pratorsi',
  'Il sentiero è stato fatto come preventivato in 2 giorni ed è stato uno dei percorsi più belli mai fatti. Siamo partiti di Sabato alle 15.00 va via Pratorsi, e siamo arrivati fino al Passo del Cancellino dove ci siamo fermati per un bivacco, anche se il nostro piano iniziale consisteva nell''arrivare al Corno Alle scale. Nel primo giorno siamo passati davanti 2 fontanelle e al bivacco Mandromini(pareva abbandonato) sarà la parte più faticosa e si farà la maggior parte della salita. Il secondo giorno abbiamo smontato le tende all''alba e abbiamo proseguito prima sul Corno alle Scale e poi al Lago Scaffaiolo, dove ci siamo fermati al rifugio duca degli Abruzzi, al ritorno abbiamo pranzato al km 24.4 e abbiamo terminato il sentiero . Nel complesso è stata un''esperienza indimenticabile che consiglio vivamente. Per il resto lasciate un commento e buon trek!',
  'Il sentiero è stato fatto come preventivato in 2 giorni ed è stato uno dei percorsi più belli mai fatti. <br> <br>Siamo partiti di Sabato alle 15.00 va via Pratorsi, e siamo arrivati fino al Passo del Cancellino dove ci siamo fermati per un bivacco, anche se il nostro piano iniziale consisteva nell''arrivare al Corno Alle scale. <br> <br>Nel primo giorno siamo passati davanti 2 fontanelle e al bivacco Mandromini(pareva abbandonato) sarà la parte più faticosa e si farà la maggior parte della salita. <br> <br>Il secondo giorno abbiamo smontato le tende all''alba e abbiamo proseguito prima sul Corno alle Scale e poi al Lago Scaffaiolo, dove ci siamo fermati al rifugio duca degli Abruzzi, al ritorno abbiamo pranzato al km 24.4 e abbiamo terminato il sentiero . <br> <br>Nel complesso è stata un''esperienza indimenticabile che consiglio vivamente. <br> <br>Per il resto lasciate un commento e buon trek!',
  'Tutte le Attività e Paesi',
  24.69,
  1,
  1,
  1,
  900,
  '15:00',
  NULL,
  NULL,
  15174,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Spignana',
  '2021-11-01',
  '2021-11-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pratorsi-corno-alle-scale-lago-scaffaiolo-pratorsi-lupus-in-trekking-88155235',
  NULL,
  44.080182,
  10.820785,
  'POINT(10.820785 44.080182)',
  '5792a564f5639c13c211d054eb0be5310c86e10916b2b431110a3aa5dffe0566',
  'Escursione Pratorsi Corno alle Scale Lago Scaffaiolo: Trekking in Abruzzo, sentiero spettacolare e panorami mozzafiato! ⛰️',
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
VALUES (88155235, 'https://it.wikiloc.com/percorsi-escursionismo/pratorsi-corno-alle-scale-lago-scaffaiolo-pratorsi-lupus-in-trekking-88155235', NOW(), '5792a564f5639c13c211d054eb0be5310c86e10916b2b431110a3aa5dffe0566')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88155235);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88155235/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88155235;

COMMIT;

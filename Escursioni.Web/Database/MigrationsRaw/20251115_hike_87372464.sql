BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87372464,
  'Annello: Castellaccio - Romito - Maroccone',
  'FACILE ALLA PORTATA DI TUTTI La discesa dal Castellaccio è semplice e ben segnata, il tratto finale se piove è pericoloso, altrimenti non vi sono problemi di nessun tipo. Prestare attenzione sulla strada Tratto in salita facile, ben segnalato ma occhio a i cinghiali ne abbiamo trovato uno.',
  'FACILE ALLA PORTATA DI TUTTI <br>La discesa dal Castellaccio è semplice e ben segnata, il tratto finale se piove è pericoloso, altrimenti non vi sono problemi di nessun tipo. <br> <br>Prestare attenzione sulla strada <br> <br>Tratto in salita facile, ben segnalato ma occhio a i cinghiali ne abbiamo trovato uno.',
  'Tutte le Attività e Paesi',
  10.56,
  300,
  11,
  296,
  4,
  '00:04',
  NULL,
  NULL,
  278,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-02-01',
  '2021-02-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464',
  NULL,
  43.485888,
  10.362884,
  'POINT(10.362884 43.485888)',
  '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51',
  'Escursione Castellaccio, Romito e Maroccone: facile anello in montagna! Sentieri facili, cinghiali e panorami mozzafiato. Scopri l''Italia!',
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
VALUES (87372464, 'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464', NOW(), '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372464);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372464/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372464;

COMMIT;

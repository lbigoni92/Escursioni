BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87478884,
  'Forato da Stazzema',
  'Partenza da Stazzema - al parcheggio (costo 3 euro) Il sentiero è bello e si passa vicino a delle cappelle poste per il pellegrinaggio. Si segue il sentiero fino a foce di petrosciana; da li s''imbocca il sentiero 110 e s''arriva al monte forato, un paio di punti possono dare problemi a chi ha problemi con l''altezze, ma niente di complesso. Abbiamo pranzato sul Forato e vista la croce, in seguito siamo scesi sul 12 e tornati a Stazzema. Sentiero molto bello lo consiglio ma portatevi scarpe adeguate',
  'Partenza da Stazzema - al parcheggio (costo 3 euro) <br>Il sentiero è bello e si passa vicino a delle cappelle poste per il pellegrinaggio. <br>Si segue il sentiero fino a foce di petrosciana; da li s''imbocca il sentiero 110 e s''arriva al monte forato, un paio di punti possono dare problemi a chi ha problemi con l''altezze, ma niente di complesso. <br> <br>Abbiamo pranzato sul Forato e vista la croce, in seguito siamo scesi sul 12 e tornati a Stazzema. <br> <br>Sentiero molto bello lo consiglio ma portatevi scarpe adeguate',
  'Tutte le Attività e Paesi',
  14.53,
  1,
  554,
  1,
  381,
  '06:21',
  NULL,
  NULL,
  4490,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Orzale',
  '2021-05-01',
  '2021-05-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884',
  NULL,
  44.001784,
  10.338317,
  'POINT(10.338317 44.001784)',
  '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8',
  'Escursione al Monte Forato da Stazzema: vista mozzafiato, sentiero facile e pellegrinaggio tra cappelle. Ideale per trekking in Toscana!',
  NULL,
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
VALUES (87478884, 'https://it.wikiloc.com/percorsi-escursionismo/forato-da-stazzema-87478884', NOW(), '4fe490347dc8126b2b6084a76882bf09befdc9c05f951c9d5abc83b352876ba8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478884);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478884/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478884;

COMMIT;

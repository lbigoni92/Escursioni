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
  87372356,
  'Monte Forato da Fornovolasco',
  'Percorso facile se si è un pò abituati alle apuane; Sentieristica : 130-110-6 Il sentiero 110 è classificato EE ma non vi sono difficoltà tecniche particolari, solo un paio di punti che potrebbero dare noia a chi soffre di vertigini Lo spettacolo del monte forato è davvero stupendo in cima alla croce, non è uno dei più belli dell''Apuane ma sicuramente merita. I panorami più belli si anno tra il 130 e il 110',
  'Percorso facile se si è un pò abituati alle apuane; <br> <br>Sentieristica : 130-110-6 <br> <br>Il sentiero 110 è classificato EE ma non vi sono difficoltà tecniche particolari, solo un paio di punti che potrebbero dare noia a chi soffre di vertigini <br> <br>Lo spettacolo del monte forato è davvero stupendo in cima alla croce, non è uno dei più belli dell''Apuane ma sicuramente merita. <br> <br>I panorami più belli si anno tra il 130 e il 110',
  'Tutte le Attività e Paesi',
  9.07,
  878,
  540,
  1,
  42,
  '00:42',
  NULL,
  NULL,
  460,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356',
  NULL,
  44.026425,
  10.354714,
  'POINT(10.354714 44.026425)',
  '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515',
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
VALUES (87372356, 'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356', NOW(), '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372356);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372356/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372356;

COMMIT;

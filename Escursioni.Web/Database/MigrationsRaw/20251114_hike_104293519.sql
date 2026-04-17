BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  104293519,
  'Bosco della patanella',
  'Bosco della patanella Questo sentiero, è stato un ripiego dell''ultimo minuto, siamo venuti qua a fare due passi, è una pineta qualsiasi ,niente d''eccezionale; le parti più carine sono degli scorci sull''argentario e sulla laguna, dove è possibile vedere numerosi uccelli. Nel percorso (lago e facilmente seguibile) è possibile trovare animali e vari tipi di vegetazione.',
  'Bosco della patanella <br> <br>Questo sentiero, è stato un ripiego dell''ultimo minuto, siamo venuti qua a fare due passi, è una pineta qualsiasi ,niente d''eccezionale; le parti più carine sono degli scorci sull''argentario e sulla laguna, dove è possibile vedere numerosi uccelli. <br> <br> <br>Nel percorso (lago e facilmente seguibile) è possibile trovare animali e vari tipi di vegetazione.',
  'Tutte le Attività e Paesi',
  1.85,
  15,
  20,
  1,
  28,
  '00:28',
  28,
  '00:28',
  332,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quattro Strade',
  '2022-05-01',
  '2022-05-01',
  '2022-05-31 00:00:00',
  '2022-05-31 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/bosco-della-patanella-104293519',
  NULL,
  42.467715,
  11.216562,
  'POINT(11.216562 42.467715)',
  'a521f1ef19ab963968ac8b07fb9e036d591633f1015d01d011ae97a0355561f2',
  'Escursioni Bosco della Patanella: sentiero facile tra pineta, lago Argentario e laguna. Osserva uccelli e natura selvaggia!',
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
VALUES (104293519, 'https://it.wikiloc.com/percorsi-escursionismo/bosco-della-patanella-104293519', NOW(), 'a521f1ef19ab963968ac8b07fb9e036d591633f1015d01d011ae97a0355561f2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104293519);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104293519/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104293519/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104293519;

COMMIT;

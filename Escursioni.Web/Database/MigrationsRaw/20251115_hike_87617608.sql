BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87617608,
  'Eremo di san Viviano',
  'Eremo di San Viviano o San Viano (Eremo del Beato Viviano) m. 900 s.l.m. Il percorso è semplice e ben segnato noi l''abbiamo fatto in pomeridiana in 3 ore, carino da fare. Quest''estate era chiuso per restauro ma adesso ri è aperto, se passate in zona lo consiglio. Li parte anche un breve tratto EE esposto che consiglio di fare, porta a un punto panoramico bellissimo con vista su tutta la valle con Lago di Vagli. L''eremo di San Viviano o Viano è un suggestivo edificio scavato nella roccia viva a strapiombo della valle di Arnetola luogo di vita e di preghiera dell''eremita Viviano. Il piccolo santuario di San Viviano o Viano rappresenta una singolare cappella d''abri (sotto roccia) in area apuana. Situato a breve distanza da Campocatino, domina il Fosso della Tambura e la Valle di Arnetola.',
  'Eremo di San Viviano o San Viano (Eremo del Beato Viviano) m. 900 s.l.m. <br>Il percorso è semplice e ben segnato noi l''abbiamo fatto in pomeridiana in 3 ore, carino da fare. <br>Quest''estate era chiuso per restauro ma adesso ri è aperto, se passate in zona lo consiglio. <br> <br>Li parte anche un breve tratto EE esposto che consiglio di fare, porta a un punto panoramico bellissimo con vista su tutta la valle con Lago di Vagli. <br> <br>L''eremo di San Viviano o Viano è un suggestivo edificio scavato nella roccia viva a strapiombo della valle di Arnetola luogo di vita e di preghiera dell''eremita Viviano. <br>Il piccolo santuario di San Viviano o Viano rappresenta una singolare cappella d''abri (sotto roccia) in area apuana. Situato a breve distanza da Campocatino, domina il Fosso della Tambura e la Valle di Arnetola.',
  'Tutte le Attività e Paesi',
  5.49,
  702,
  677,
  1,
  13,
  '00:13',
  NULL,
  NULL,
  237,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vagli Sopra',
  '2021-06-01',
  '2021-06-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608',
  NULL,
  44.117711,
  10.268383,
  'POINT(10.268383 44.117711)',
  '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f',
  'Esplora l''Eremo di San Viviano: sentiero facile, vista mozzafiato sul Lago di Vagli e sulla Valle d''Arnetola! Un''esperienza unica in Toscana.',
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
VALUES (87617608, 'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608', NOW(), '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617608);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617608/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617608;

COMMIT;

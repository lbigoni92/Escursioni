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
  87617094,
  'Grosseto Riserva Naturale',
  'Uno spettacolo tutto toscano, fu una dell''esperienze che mi porto più nel cuore, non per i paesaggi spettacolari, no per i bellissimi posti ma per la compagnia, fu una delle camminate che mi hanno lasciato di più il segno nel cuore. Il tragitto è semplice, siamo sempre stati sul sentiero che era ben segnato nn potete perdervi, il dislivello è infimo appena 100 mt, e non sono richieste scarpe particolari. Portatevi l''acqua non ci sono fontane ma c''è un bar vicino al parcheggio, lo sconsiglio d''estate, faceva veramente caldo nei punti esposti al sole, meglio farlo in primavera o autunno. Contattate il parco prima d''avventurarvi, magari i percorsi sono chiusi in quel periodo, è una riserva naturale.',
  'Uno spettacolo tutto toscano, fu una dell''esperienze che mi porto più nel cuore, non per i paesaggi spettacolari, no per i bellissimi posti ma per la compagnia, fu una delle camminate che mi hanno lasciato di più il segno nel cuore. <br> <br>Il tragitto è semplice, siamo sempre stati sul sentiero che era ben segnato nn potete perdervi, il dislivello è infimo appena 100 mt, e non sono richieste scarpe particolari. <br> <br>Portatevi l''acqua non ci sono fontane ma c''è un bar vicino al parcheggio, lo sconsiglio d''estate, faceva veramente caldo nei punti esposti al sole, meglio farlo in primavera o autunno. <br> <br>Contattate il parco prima d''avventurarvi, magari i percorsi sono chiusi in quel periodo, è una riserva naturale.',
  'Tutte le Attività e Paesi',
  4.77,
  133,
  30,
  137,
  144,
  '02:24',
  NULL,
  NULL,
  1328,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Alberese',
  '2018-07-01',
  '2018-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/grosseto-riserva-naturale-87617094',
  NULL,
  42.663172,
  11.098581,
  'POINT(11.098581 42.663172)',
  '93d274f2765f7b08ce61f8f87f84ea817d7f381479858245492a701d429d050f',
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
VALUES (87617094, 'https://it.wikiloc.com/percorsi-escursionismo/grosseto-riserva-naturale-87617094', NOW(), '93d274f2765f7b08ce61f8f87f84ea817d7f381479858245492a701d429d050f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617094);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617094/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617094;

COMMIT;

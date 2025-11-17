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
  150085806,
  'Massaciuccoli -villa di Puccini - Tempio Buddista Shintoista galleggiante',
  'Percorso molto semplice in piano che si fa easy in 2/3ore, non ci sono difficoltà tecniche se non un ponte di barche da superare il ponte di barche. il percorso arriva al Tempio Buddista Shintoista. Il lago di Massaciuccoli (in provincia di Lucca, con il lembo meridionale appartenente alla provincia di Pisa, vicino all''omonima frazione di Massarosa in provincia di Lucca) è un lago costiero della Toscana. Il lago e l''area palustre intorno fanno parte del Parco naturale di Migliarino, San Rossore, Massaciuccoli e di un''oasi LIPU, viste le numerose specie di uccelli presenti. La Riserva Naturale del Chiarone fu istituita nel 1979 con la nascita del Parco Migliarino-San Rossore-Massaciuccoli. Nel 1985 ne fu affidata la gestione alla Lega Italiana Protezione Uccelli/BirdLife Italia, così nacque l’Oasi Lipu Massaciuccoli. Le prime attività dell’Oasi si concentrarono sull’educazione ambientale (rivolta ai visitatori ed alle scolaresche), sulla sensibilizzazione della popolazione locale ed in piccola parte, a causa delle scarse risorse economiche, alla gestione ambientale. Grazie ai risultati ottenuti e dall’impegno dei volontari che allora frequentavano l’Oasi, a partire dal 1998 fu istituita una vera e propria convenzione con l’Ente Parco. Fonti : - http://www.oasilipumassaciuccoli.org/chi-siamo/ - https://it.wikipedia.org/wiki/Lago_di_Massaciuccoli',
  'Percorso molto semplice in piano che si fa easy in 2/3ore, non ci sono difficoltà tecniche se non un ponte di barche da superare il ponte di barche. <br>il percorso arriva al Tempio Buddista Shintoista. <br> <br>Il lago di Massaciuccoli (in provincia di Lucca, con il lembo meridionale appartenente alla provincia di Pisa, vicino all''omonima frazione di Massarosa in provincia di Lucca) è un lago costiero della Toscana. Il lago e l''area palustre intorno fanno parte del Parco naturale di Migliarino, San Rossore, Massaciuccoli e di un''oasi LIPU, viste le numerose specie di uccelli presenti. <br> <br> <br>La Riserva Naturale del Chiarone fu istituita nel 1979 con la nascita del Parco Migliarino-San Rossore-Massaciuccoli. <br>Nel 1985 ne fu affidata la gestione alla Lega Italiana Protezione Uccelli/BirdLife Italia, così nacque l’Oasi Lipu Massaciuccoli. <br>Le prime attività dell’Oasi si concentrarono sull’educazione ambientale (rivolta ai visitatori ed alle scolaresche), sulla sensibilizzazione della popolazione locale ed in piccola parte, a causa delle scarse risorse economiche, alla gestione ambientale. <br>Grazie ai risultati ottenuti e dall’impegno dei volontari che allora frequentavano l’Oasi, a partire dal 1998 fu istituita una vera e propria convenzione con l’Ente Parco. <br>Fonti : <br> - http://www.oasilipumassaciuccoli.org/chi-siamo/ <br> - https://it.wikipedia.org/wiki/Lago_di_Massaciuccoli',
  'Tutte le Attività e Paesi',
  6.14,
  1,
  5,
  6,
  32,
  '00:32',
  NULL,
  NULL,
  49,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Massaciuccoli',
  '2023-10-01',
  '2023-10-01',
  '2023-10-13 00:00:00',
  '2023-10-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-villa-di-puccini-tempio-buddista-shintoista-galleggiante-150085806',
  NULL,
  43.836135,
  10.356403,
  'POINT(10.356403 43.836135)',
  '2063de56a515415b0acc08ba6c3d0db57beec28cfd67201cc4da2482172c648c',
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
VALUES (150085806, 'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-villa-di-puccini-tempio-buddista-shintoista-galleggiante-150085806', NOW(), '2063de56a515415b0acc08ba6c3d0db57beec28cfd67201cc4da2482172c648c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 150085806);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/150085806/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

COMMIT;

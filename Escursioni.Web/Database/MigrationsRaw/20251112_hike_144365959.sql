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
  144365959,
  'Stretti di Giaredo - canyoning',
  'Bellissimo giro che ho dovuto ricostruire in quanto wikilock mi ha perso la traccia e waypoints.... ma nessun problema magari alcune foto non sono scattate nel punto corretto. Il canyoning è bellissimo e merita tantissimo, c''è da fare 2 km a piedi prima d''arrivare all''inizio del canion, sentiero semplice ma fatelo con delle scarpe sa trekking che potete bagnare. Arrivati al canion avrete bisogno di: asciugamano, muta se siete freddolosi (l''acqua è fredda) e scarpe che potete bagnare, noi abbiamo fatto il canion in un ora tra andata e ritorno, non presenta difficoltà se no il freddo per l''acqua e alcuni tratti a nuoto. C''è una bellissima cascata che merita tantissimo! Il fine corsa è quando si arriva una roccia alta 2m e 30 dopo non ha senso andare il canion è finito. Gli stretti di Giaredo comprendono il tratto più orientale della forra del torrente Gordana, estendendosi verso monte per circa 1 Km da località Giaredo. Si caratterizzano per l’affioramento di antiche rocce carbonatiche, parte del basamento mesozoico toscano. Gli stretti di Giaredo sono parte di Rete Natura2000 per la conservazione della biodiversità in Europa, ricadendo all’interno della Zona Speciale di Conservazione (ZSC-IT5110001) “Valle del Torrente Gordana”. Il sito rientra nella Riserva MAB UNESCO Appennino Tosco-Emiliano. L’origine degli stretti di Giaredo, e di tutta la forra del torrente Gordana, può essere messa in relazione alle fasi tettoniche recenti che hanno interessato l’Appennino settentrionale a partire dal Pleistocene, prima attraverso processi distensivi e quindi con movimenti differenziali di sollevamento e conseguente marcato approfondimento del reticolo idrografico L''esperienza merita tantissimo la consiglio a chiunque! ma attenzione! Fonte wikipedia',
  'Bellissimo giro che ho dovuto ricostruire in quanto wikilock mi ha perso la traccia e waypoints.... ma nessun problema magari alcune foto non sono scattate nel punto corretto. <br> <br>Il canyoning è bellissimo e merita tantissimo, c''è da fare 2 km a piedi prima d''arrivare all''inizio del canion, sentiero semplice ma fatelo con delle scarpe sa trekking che potete bagnare. <br>Arrivati al canion avrete bisogno di: asciugamano, muta se siete freddolosi (l''acqua è fredda) e scarpe che potete bagnare, noi abbiamo fatto il canion in un ora tra andata e ritorno, non presenta difficoltà se no il freddo per l''acqua e alcuni tratti a nuoto. <br>C''è una bellissima cascata che merita tantissimo! <br> <br>Il fine corsa è quando si arriva una roccia alta 2m e 30 dopo non ha senso andare il canion è finito. <br> <br>Gli stretti di Giaredo comprendono il tratto più orientale della forra del torrente Gordana, estendendosi verso monte per circa 1 Km da località Giaredo. Si caratterizzano per l’affioramento di antiche rocce carbonatiche, parte del basamento mesozoico toscano. <br> <br>Gli stretti di Giaredo sono parte di Rete Natura2000 per la conservazione della biodiversità in Europa, ricadendo all’interno della Zona Speciale di Conservazione (ZSC-IT5110001) “Valle del Torrente Gordana”. Il sito rientra nella Riserva MAB UNESCO Appennino Tosco-Emiliano. <br> <br>L’origine degli stretti di Giaredo, e di tutta la forra del torrente Gordana, può essere messa in relazione alle fasi tettoniche recenti che hanno interessato l’Appennino settentrionale a partire dal Pleistocene, prima attraverso processi distensivi e quindi con movimenti differenziali di sollevamento e conseguente marcato approfondimento del reticolo idrografico <br> <br>L''esperienza merita tantissimo la consiglio a chiunque! ma attenzione! <br> <br>Fonte wikipedia',
  'Tutte le Attività e Paesi',
  4.05,
  121,
  269,
  332,
  120,
  '02:00',
  NULL,
  NULL,
  87,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cavezzana Gordana',
  '2023-08-01',
  '2023-08-01',
  '2023-08-19 00:00:00',
  '2023-08-19 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/stretti-di-giaredo-canyoning-144365959',
  NULL,
  44.364096,
  9.853309,
  'POINT(9.853309 44.364096)',
  '96b339e8b78d5228d25d61593468fcaac3a4d752afdd14ad8e81bdbecfd710e9',
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
VALUES (144365959, 'https://it.wikiloc.com/percorsi-escursionismo/stretti-di-giaredo-canyoning-144365959', NOW(), '96b339e8b78d5228d25d61593468fcaac3a4d752afdd14ad8e81bdbecfd710e9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 144365959);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/144365959/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/144365959/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 144365959;

COMMIT;

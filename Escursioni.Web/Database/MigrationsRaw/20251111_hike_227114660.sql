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
  227114660,
  'Libro Aperto, Monte Lagoni e Rifugio Casetta di Lapo da Abetone',
  'L’escursione parte da Abetone, nei pressi del parcheggio del Lavitone. Dopo aver imboccato il sentiero 00, si sale in direzione del Monte Maiori, proseguendo sullo 00 si raggiunge la località La Verginella e, poco dopo, il Rifugio Casetta di Lapo, ottimo punto di sosta. Da qui si segue il sentiero 495, semplice ma suggestivo, che costeggia il Lago della Risaia e porta gradualmente verso le pendici del Libro Aperto. L’ultimo tratto richiede un po’ più di impegno per via della salita su terreno aperto, ma senza particolari difficoltà tecniche. Raggiunta la vetta del Libro Aperto, si può scegliere di restare sull’anello base oppure aggiungere la variante più impegnativa verso il Monte Lagoni. Riprendendo il percorso principale, si segue il sentiero 447 fino al Monte Lagoni, da cui si apre un ampio panorama sul Monte Cimone, da li siamo tornati in dietro, direzione Monte Belvedere e, poco dopo la Cima del Diaccione. La discesa prosegue nuovamente verso la Casetta di Lapo, da cui seguendo sentieri turistici, si rientra ad Abetone passando per il cimitero monumentale. Punti di interesse lungo l’anello: Monte Maiori – 2.5 km Lago della Risaia – 4.1 km Libro Aperto – 6.2 km Monte Lagoni – 8.7 km Monte Belvedere – 11.3 km Cima del Diaccione – 12.9 km Rifugio Casetta di Lapo – 13.3 km Si tratta di un itinerario adatto a escursionisti mediamente allenati: la versione base è semplice e ben segnalata, mentre la variante verso il Monte Lagoni richiede più attenzione ed esperienza. Si raccomanda di portare acqua a sufficienza, specialmente nei tratti più esposti.',
  'L’escursione parte da Abetone, nei pressi del parcheggio del Lavitone. Dopo aver imboccato il sentiero 00, si sale in direzione del Monte Maiori, proseguendo sullo 00 si raggiunge la località La Verginella e, poco dopo, il Rifugio Casetta di Lapo, ottimo punto di sosta. Da qui si segue il sentiero 495, semplice ma suggestivo, che costeggia il Lago della Risaia e porta gradualmente verso le pendici del Libro Aperto. <br> <br>L’ultimo tratto richiede un po’ più di impegno per via della salita su terreno aperto, ma senza particolari difficoltà tecniche. Raggiunta la vetta del Libro Aperto, si può scegliere di restare sull’anello base oppure aggiungere la variante più impegnativa verso il Monte Lagoni. <br> <br>Riprendendo il percorso principale, si segue il sentiero 447 fino al Monte Lagoni, da cui si apre un ampio panorama sul Monte Cimone, da li siamo tornati in dietro, direzione Monte Belvedere e, poco dopo la Cima del Diaccione. La discesa prosegue nuovamente verso la Casetta di Lapo, da cui seguendo sentieri turistici, si rientra ad Abetone passando per il cimitero monumentale. <br> <br>Punti di interesse lungo l’anello: <br> <br>Monte Maiori – 2.5 km <br>Lago della Risaia – 4.1 km <br>Libro Aperto – 6.2 km <br>Monte Lagoni – 8.7 km <br>Monte Belvedere – 11.3 km <br>Cima del Diaccione – 12.9 km <br>Rifugio Casetta di Lapo – 13.3 km <br> <br>Si tratta di un itinerario adatto a escursionisti mediamente allenati: la versione base è semplice e ben segnalata, mentre la variante verso il Monte Lagoni richiede più attenzione ed esperienza. Si raccomanda di portare acqua a sufficienza, specialmente nei tratti più esposti.',
  'Tutte le Attività e Paesi',
  17.33,
  835,
  1,
  1,
  237,
  '03:57',
  237,
  '03:57',
  2904,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Abetone',
  '2025-08-01',
  '2025-08-01',
  '2025-08-16 00:00:00',
  '2025-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/libro-aperto-monte-lagoni-e-rifugio-casetta-di-lapo-da-abetone-227114660',
  NULL,
  44.144817,
  10.664956,
  'POINT(10.664956 44.144817)',
  '71c79503e7533c7f9575cc8e4d0f6247496ef3dc2a82b856c88b33a78acfcb4b',
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
VALUES (227114660, 'https://it.wikiloc.com/percorsi-escursionismo/libro-aperto-monte-lagoni-e-rifugio-casetta-di-lapo-da-abetone-227114660', NOW(), '71c79503e7533c7f9575cc8e4d0f6247496ef3dc2a82b856c88b33a78acfcb4b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 227114660);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/227114660/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/227114660/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 227114660;

COMMIT;

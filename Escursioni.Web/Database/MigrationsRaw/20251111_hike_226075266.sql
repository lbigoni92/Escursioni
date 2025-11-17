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
  226075266,
  'Doganaccia – Croce Arcana – Cascate del Dardagna – Monte La Nuda – Corno alle Scale: 2 giorni di trekking ad anello',
  'Descrizione Trekking ad anello di due giorni con partenza dalla Doganaccia (quota 1.540 m), che unisce panorami di crinale, cascate spettacolari e vette storiche dell’Appennino Tosco-Emiliano. Percorso consigliato per escursionisti allenati, con tratti semplici ma anche sezioni impegnative in salita e discesa, specialmente con zaino carico. Giorno 1 Partenza dalla Doganaccia (ore 10:05), salita di circa 150 m fino alla Croce Arcana, dove si trova il monumento agli Alpini con i cannoni. Proseguimento sull’Alta Via dei Parchi toccando Pizzo, Vista del Paradiso, Colle Piaggia Calda e Monte I Balzoni. Discesa di 300 m verso il Callare dell’Acqua Marcia e arrivo al Rifugio Tassoni (acqua a pagamento), quindi breve deviazione al rifugio accanto per rifornirsi alla fontanella esterna. Tratto ampio e ben segnato, senza esposizione, tra ampi pratoni e greggi al pascolo. Dal Rifugio Tassoni discesa verso le Cascate del Dardagna. Il percorso è semplice e in parte percorribile in auto (non consigliato), ma negli ultimi tratti diventa sentiero. Le cascate sono su più livelli (5 salti complessivi) e il tratto finale presenta gradoni alti che possono creare difficoltà a persone poco allenate. Proseguimento fino alla Madonna dell’Acero (facile accesso alle cascate più basse), visita al santuario e rifornimento alla fontana del paese. Salita verso il Monte La Nuda passando per il Centro Visite del Parco → Via dei Signori → Sentiero del Campanile. Pernotto in vetta con tramonto panoramico (leggermente coperto) e alba spettacolare. Ampio spazio per tende. Giorno 2 Partenza ore 7:30, discesa al Passo del Vallone e salita tramite i Balzi dell’Ora fino a Punta Sofia. Tratto ripido e panoramico, non esposto ma da affrontare con cautela per chi non è abituato. Proseguimento verso il Corno alle Scale, quindi Punta Giorgina, Passo del Serpentino, Cornaccio, Passo Tre Termini e Monte Cupolino. Discesa al Rifugio Duca degli Abruzzi (cucina chiusa in mattinata) e breve giro del Lago Scaffaiolo. Rientro alla Doganaccia tra turisti e sentiero panoramico di crinale. Note sul percorso Difficoltà: Escursionistico con brevi tratti EE (Balzi dell’Ora, discesa cascate). Punti acqua: Rifugio Tassoni, Madonna dell’Acero, fontanelle intermedie, rifugi lungo il percorso. Consigli: In due giorni il trekking è rilassante; in un giorno solo diventa un trail di circa 12 ore. Zaino leggero se possibile. Panorami: Viste aperte sulla Pania, crinali dell’Appennino e vallate circostanti.',
  'Descrizione <br>Trekking ad anello di due giorni con partenza dalla Doganaccia (quota 1.540 m), che unisce panorami di crinale, cascate spettacolari e vette storiche dell’Appennino Tosco-Emiliano. <br>Percorso consigliato per escursionisti allenati, con tratti semplici ma anche sezioni impegnative in salita e discesa, specialmente con zaino carico. <br> <br>Giorno 1 <br>Partenza dalla Doganaccia (ore 10:05), salita di circa 150 m fino alla Croce Arcana, dove si trova il monumento agli Alpini con i cannoni. <br> <br>Proseguimento sull’Alta Via dei Parchi toccando Pizzo, Vista del Paradiso, Colle Piaggia Calda e Monte I Balzoni. <br> <br>Discesa di 300 m verso il Callare dell’Acqua Marcia e arrivo al Rifugio Tassoni (acqua a pagamento), quindi breve deviazione al rifugio accanto per rifornirsi alla fontanella esterna. <br>Tratto ampio e ben segnato, senza esposizione, tra ampi pratoni e greggi al pascolo. <br> <br>Dal Rifugio Tassoni discesa verso le Cascate del Dardagna. Il percorso è semplice e in parte percorribile in auto (non consigliato), ma negli ultimi tratti diventa sentiero. <br>Le cascate sono su più livelli (5 salti complessivi) e il tratto finale presenta gradoni alti che possono creare difficoltà a persone poco allenate. <br> <br>Proseguimento fino alla Madonna dell’Acero (facile accesso alle cascate più basse), visita al santuario e rifornimento alla fontana del paese. <br> <br>Salita verso il Monte La Nuda passando per il Centro Visite del Parco → Via dei Signori → Sentiero del Campanile. <br>Pernotto in vetta con tramonto panoramico (leggermente coperto) e alba spettacolare. Ampio spazio per tende. <br> <br>Giorno 2 <br>Partenza ore 7:30, discesa al Passo del Vallone e salita tramite i Balzi dell’Ora fino a Punta Sofia. <br>Tratto ripido e panoramico, non esposto ma da affrontare con cautela per chi non è abituato. <br> <br>Proseguimento verso il Corno alle Scale, quindi Punta Giorgina, Passo del Serpentino, Cornaccio, Passo Tre Termini e Monte Cupolino. <br> <br>Discesa al Rifugio Duca degli Abruzzi (cucina chiusa in mattinata) e breve giro del Lago Scaffaiolo. <br> <br>Rientro alla Doganaccia tra turisti e sentiero panoramico di crinale. <br> <br>Note sul percorso <br>Difficoltà: Escursionistico con brevi tratti EE (Balzi dell’Ora, discesa cascate). <br> <br>Punti acqua: Rifugio Tassoni, Madonna dell’Acero, fontanelle intermedie, rifugi lungo il percorso. <br> <br>Consigli: In due giorni il trekking è rilassante; in un giorno solo diventa un trail di circa 12 ore. Zaino leggero se possibile. <br> <br>Panorami: Viste aperte sulla Pania, crinali dell’Appennino e vallate circostanti.',
  'Tutte le Attività e Paesi',
  30.96,
  1,
  1,
  1,
  442,
  '07:22',
  442,
  '07:22',
  5151,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Doganaccia',
  '2025-08-01',
  '2025-08-01',
  '2025-08-10 00:00:00',
  '2025-08-10 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/doganaccia-croce-arcana-cascate-del-dardagna-monte-la-nuda-corno-alle-scale-2-giorni-di-trekking-ad-226075266',
  NULL,
  44.121643,
  10.776257,
  'POINT(10.776257 44.121643)',
  '4c1d823b6e65e82e08d99fbe30bc76e80cef1dff5e79a72154468ae7b27a97ab',
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
VALUES (226075266, 'https://it.wikiloc.com/percorsi-escursionismo/doganaccia-croce-arcana-cascate-del-dardagna-monte-la-nuda-corno-alle-scale-2-giorni-di-trekking-ad-226075266', NOW(), '4c1d823b6e65e82e08d99fbe30bc76e80cef1dff5e79a72154468ae7b27a97ab')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 226075266);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/226075266/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_32.jpg', 32,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_33.jpg', 33,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_34.jpg', 34,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_35.jpg', 35,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_36.jpg', 36,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_37.jpg', 37,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_38.jpg', 38,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_39.jpg', 39,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_40.jpg', 40,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_41.jpg', 41,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/226075266/photo_42.jpg', 42,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 226075266;

COMMIT;

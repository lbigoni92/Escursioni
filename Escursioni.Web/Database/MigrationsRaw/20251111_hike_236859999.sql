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
  236859999,
  'Monte Cavallo da Rifugio Val Serenaia (Apuane)',
  'Introduzione: Percorso che parte dal Rifugio Val Serenaia (quota circa 1.060 m s.l.m.) situato nel''ominima Val Serenaia, una valle a «U» delle Alpi Apuane nella zona di Minucciano (LU) con meta la cima del Monte Cavallo (quota 1.895 m circa) attraverso un itinerario che presenta tratti escursionistici, brevi arrampicate e alcuni passaggi più esposti. Questo percorso è sicuramente impegnativo. Accesso e avvicinamento: L’avvicinamento iniziale segue il sentiero che conduce dal Rifugio Val Serenaia in direzione del campeggio. Il tratto non è particolarmente tecnico ma è composto da terreno friabile, e rocce umide (che rappresentano l’unica vera difficoltà della prima fase) inoltre è facile perdere il sentiero poiché i segni possono essere poco visibili. Tratto verso la cresta / attacco alla salita finale: Dal cartello posto poco sotto la Cima Nord del Monte Cavallo "Foce di Cardeto" si gira verso nord e si attraversa un delle rocce molto grosse fino a raggiungere un piccolo bosco. Da qui inizia lo sviluppo vero e proprio del tratto critico: -Il tratto pietroso tra il cartello e il bosco è calpestato, diretto, ma richiede attenzione poiché non sempre evidente, se come noi fate tutto all’interno del bosco avete probabilmente preso la variante errata sarebeb stato meglio invece di svoltare a destra per entrare subito in cresta, avete proseguito dritto, rendendo più difficile trovare l’attacco corretto. -La salita fino alla cresta si alterna tra tratti esposti (ma non estremi) e “scalinate” di primo/secondo grado, passaggi su roccia che richiedono buona mobilità, scarpe adeguate, e attenzione per la brina che avete trovato. Vetta e cresta del Monte Cavallo: Arrivando sulla cresta del Monte Cavallo Nord si apre il panorama (anche se nella vostra esperienza avete trovato nebbia). Dal punto più alto, la vista copre buona parte delle Alpi Apuane e in giornate limpide è notevole. Discesa e rientro: Dal Monte Cavallo Nord si scende verso la “seconda gobba” (vetta intermedia) e poi la “terza gobba”. I tratti di discesa richiedono cura: terreno scivoloso, sassi mobili, possibili rocce con brina o sottile ghiaccio. In un tratto avete incontrato un cavo d’acciaio, utile punto di riferimento: da lì dirigersi in cresta, non restare troppo “bassi” lungo il versante. Si prosegue verso Monte Cavallo Sud, si tocca la quarta gobba, dalla quale non è possibile scendere in verticale: è necessario tornare indietro fino al collegamento col sentiero principale. Il ritorno procede fino alla Forcella di Porta (e la sua grotta), poi al bivacco a Aronte, al Passo della Focolaccia, alla strada di cava, quindi di nuovo al sentiero di cava, fino a ricongiungersi al punto di partenza. Il ritorno è lungo e in discesa: l’avvicinamento all’inizio e l’uscita alla fine risultano meno “interessanti”, più monotoni e con dislivello anche nella parte finale, richiedendo buona concentrazione nonostante la fatica. Note tecniche e suggerimenti: Calzature da montagna con buona aderenza consigliate, poiché trovate brina e umidità. Evitare il percorso in giornate con pioggia recente o nebbia persistente: la traccia può divetare complicata da seguire. Mappa/gps consigliati: il tracciato non sempre è chiarissimo nei tratti pietrosi o boscosi. Considerare i passaggi in cresta come “alpinistici leggeri”: non richiedono arrampicata tecnica, ma richiedono attenzione e buon allenamento.',
  'Introduzione: <br>Percorso che parte dal Rifugio Val Serenaia (quota circa 1.060 m s.l.m.) situato nel''ominima Val Serenaia, una valle a «U» delle Alpi Apuane nella zona di Minucciano (LU) con meta la cima del Monte Cavallo (quota 1.895 m circa) attraverso un itinerario che presenta tratti escursionistici, brevi arrampicate e alcuni passaggi più esposti. <br>Questo percorso è sicuramente impegnativo. <br> <br>Accesso e avvicinamento: <br>L’avvicinamento iniziale segue il sentiero che conduce dal Rifugio Val Serenaia in direzione del campeggio. Il tratto non è particolarmente tecnico ma è composto da terreno friabile, e rocce umide (che rappresentano l’unica vera difficoltà della prima fase) inoltre è facile perdere il sentiero poiché i segni possono essere poco visibili. <br> <br>Tratto verso la cresta / attacco alla salita finale: <br>Dal cartello posto poco sotto la Cima Nord del Monte Cavallo "Foce di Cardeto" si gira verso nord e si attraversa un delle rocce molto grosse fino a raggiungere un piccolo bosco. Da qui inizia lo sviluppo vero e proprio del tratto critico: <br> <br>-Il tratto pietroso tra il cartello e il bosco è calpestato, diretto, ma richiede attenzione poiché non sempre evidente, se come noi fate tutto all’interno del bosco avete probabilmente preso la variante errata sarebeb stato meglio invece di svoltare a destra per entrare subito in cresta, avete proseguito dritto, rendendo più difficile trovare l’attacco corretto. <br> <br>-La salita fino alla cresta si alterna tra tratti esposti (ma non estremi) e “scalinate” di primo/secondo grado, passaggi su roccia che richiedono buona mobilità, scarpe adeguate, e attenzione per la brina che avete trovato. <br> <br>Vetta e cresta del Monte Cavallo: <br>Arrivando sulla cresta del Monte Cavallo Nord si apre il panorama (anche se nella vostra esperienza avete trovato nebbia). Dal punto più alto, la vista copre buona parte delle Alpi Apuane e in giornate limpide è notevole. <br> <br>Discesa e rientro: <br>Dal Monte Cavallo Nord si scende verso la “seconda gobba” (vetta intermedia) e poi la “terza gobba”. I tratti di discesa richiedono cura: terreno scivoloso, sassi mobili, possibili rocce con brina o sottile ghiaccio. <br> <br>In un tratto avete incontrato un cavo d’acciaio, utile punto di riferimento: da lì dirigersi in cresta, non restare troppo “bassi” lungo il versante. <br> <br>Si prosegue verso Monte Cavallo Sud, si tocca la quarta gobba, dalla quale non è possibile scendere in verticale: è necessario tornare indietro fino al collegamento col sentiero principale. <br> <br>Il ritorno procede fino alla Forcella di Porta (e la sua grotta), poi al bivacco a Aronte, al Passo della Focolaccia, alla strada di cava, quindi di nuovo al sentiero di cava, fino a ricongiungersi al punto di partenza. <br> <br>Il ritorno è lungo e in discesa: l’avvicinamento all’inizio e l’uscita alla fine risultano meno “interessanti”, più monotoni e con dislivello anche nella parte finale, richiedendo buona concentrazione nonostante la fatica. <br> <br>Note tecniche e suggerimenti: <br>Calzature da montagna con buona aderenza consigliate, poiché trovate brina e umidità. <br>Evitare il percorso in giornate con pioggia recente o nebbia persistente: la traccia può divetare complicata da seguire. <br>Mappa/gps consigliati: il tracciato non sempre è chiarissimo nei tratti pietrosi o boscosi. <br> <br> <br>Considerare i passaggi in cresta come “alpinistici leggeri”: non richiedono arrampicata tecnica, ma richiedono attenzione e buon allenamento.',
  'Tutte le Attività e Paesi',
  9.74,
  972,
  1,
  1,
  154,
  '02:34',
  154,
  '02:34',
  1666,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vinca',
  '2025-10-01',
  '2025-10-01',
  '2025-10-19 00:00:00',
  '2025-10-19 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-cavallo-da-rifugio-val-serenaia-apuane-236859999',
  NULL,
  44.133731,
  10.197986,
  'POINT(10.197986 44.133731)',
  '2bc5f6a4894a469c03f6092fbd4707708451bbfbf3193960ba148cf7d6b9b45a',
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
VALUES (236859999, 'https://it.wikiloc.com/percorsi-escursionismo/monte-cavallo-da-rifugio-val-serenaia-apuane-236859999', NOW(), '2bc5f6a4894a469c03f6092fbd4707708451bbfbf3193960ba148cf7d6b9b45a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 236859999);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/236859999/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/236859999/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 236859999;

COMMIT;

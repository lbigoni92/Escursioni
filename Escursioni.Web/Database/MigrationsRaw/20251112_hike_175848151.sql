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
  175848151,
  'Massaciuccoli via delle erbe e fiori di loto',
  'La Via delle Erbe e dei Fiori a Massarosa, Lucca: Un Percorso Naturalistico Unico Introduzione: La Via delle Erbe e dei Fiori è un percorso gratuito e accessibile tutto l''anno a Massarosa, in provincia di Lucca, Toscana. Questo itinerario invita i visitatori a esplorare la natura della Versilia, camminando o pedalando tra le bellezze paesaggistiche e le coltivazioni locali. Descrizione del Percorso: Il percorso si snoda tra piantagioni di lavanda, eucalipto, piante officinali, uliveti, vigneti, pescheti, terreni coltivati con luppolo, girasoli, zafferano, orzo e grano, e include la più grande coltivazione di fiori di loto d’Europa. Lungo il cammino, si possono visitare le aziende agricole e florovivaistiche locali, ammirare le loro coltivazioni e acquistare prodotti locali. Nuovi Percorsi dal 2022: Nel 2022, oltre al percorso principale, sono stati inaugurati altri quattro itinerari che permettono di immergersi nella natura e nei paesaggi intorno al Lago di Massaciuccoli. Questi percorsi includono: Un giardino zen con pagoda galleggiante Un allevamento di alpaca La storia della Brilla e delle rovine di Massaciuccoli Romana L’Oasi naturalistica Lipu Punti di Interesse: Durante il percorso, è possibile visitare diversi punti di interesse storico-culturale, naturalistico e paesaggistico, esplorando le bellezze di Massarosa. Esperienze Enogastronomiche: Grazie alla collaborazione tra le aziende agricole e le attività di ristorazione locali, i visitatori possono vivere esperienze enogastronomiche uniche, assaporando i prodotti locali direttamente nei ristoranti di Massarosa o nelle aziende agricole lungo il percorso. Obiettivi del Progetto: Il progetto La Via delle Erbe e dei Fiori si propone di promuovere il territorio di Massarosa come il cuore verde della Versilia, creando una rete di esperienze turistiche fruibili tutto l’anno. Gli obiettivi principali includono: Promozione del valore enogastronomico, paesaggistico, storico e culturale del territorio di Massarosa e delle zone circostanti al Lago di Massaciuccoli. Valorizzazione di percorsi turistici in mobilità lenta. Valorizzazione delle eccellenze enogastronomiche di Massarosa e delle relative filiere produttive. Ripopolamento del centro abitato con attività volte a incentivare l’economia locale. Recupero di terreni incolti con ripulitura e semina di piante e fiori per tutelare la biodiversità. Interventi di recupero su strade secondarie e contesti urbani con mappatura di sentieri e donazione di fiori e piante per ristabilire il decoro urbano. Evoluzione del Progetto: A partire dal 2021, il progetto ha l’obiettivo di coinvolgere progressivamente tutto il territorio comunale di Massarosa, partendo dalle eccellenze del centro storico e delle sue immediate vicinanze, per poi estendersi alle frazioni limitrofe e, infine, coinvolgere tutto il comune entro il 2023. Conclusione: La Via delle Erbe e dei Fiori rappresenta un esempio di marketing territoriale volto a valorizzare le risorse naturali, enogastronomiche e culturali di Massarosa. Il percorso, fruibile gratuitamente e senza prenotazione, offre un’opportunità unica per vivere esperienze autentiche a contatto con la natura, promuovendo al contempo la sostenibilità e la biodiversità del territorio.',
  'La Via delle Erbe e dei Fiori a Massarosa, Lucca: Un Percorso Naturalistico Unico <br> <br>Introduzione: <br>La Via delle Erbe e dei Fiori è un percorso gratuito e accessibile tutto l''anno a Massarosa, in provincia di Lucca, Toscana. Questo itinerario invita i visitatori a esplorare la natura della Versilia, camminando o pedalando tra le bellezze paesaggistiche e le coltivazioni locali. <br> <br>Descrizione del Percorso: <br>Il percorso si snoda tra piantagioni di lavanda, eucalipto, piante officinali, uliveti, vigneti, pescheti, terreni coltivati con luppolo, girasoli, zafferano, orzo e grano, e include la più grande coltivazione di fiori di loto d’Europa. Lungo il cammino, si possono visitare le aziende agricole e florovivaistiche locali, ammirare le loro coltivazioni e acquistare prodotti locali. <br> <br>Nuovi Percorsi dal 2022: <br>Nel 2022, oltre al percorso principale, sono stati inaugurati altri quattro itinerari che permettono di immergersi nella natura e nei paesaggi intorno al Lago di Massaciuccoli. Questi percorsi includono: <br> <br>Un giardino zen con pagoda galleggiante <br>Un allevamento di alpaca <br>La storia della Brilla e delle rovine di Massaciuccoli Romana <br>L’Oasi naturalistica Lipu <br>Punti di Interesse: <br>Durante il percorso, è possibile visitare diversi punti di interesse storico-culturale, naturalistico e paesaggistico, esplorando le bellezze di Massarosa. <br> <br>Esperienze Enogastronomiche: <br>Grazie alla collaborazione tra le aziende agricole e le attività di ristorazione locali, i visitatori possono vivere esperienze enogastronomiche uniche, assaporando i prodotti locali direttamente nei ristoranti di Massarosa o nelle aziende agricole lungo il percorso. <br> <br>Obiettivi del Progetto: <br>Il progetto La Via delle Erbe e dei Fiori si propone di promuovere il territorio di Massarosa come il cuore verde della Versilia, creando una rete di esperienze turistiche fruibili tutto l’anno. Gli obiettivi principali includono: <br> <br>Promozione del valore enogastronomico, paesaggistico, storico e culturale del territorio di Massarosa e delle zone circostanti al Lago di Massaciuccoli. <br>Valorizzazione di percorsi turistici in mobilità lenta. <br>Valorizzazione delle eccellenze enogastronomiche di Massarosa e delle relative filiere produttive. <br>Ripopolamento del centro abitato con attività volte a incentivare l’economia locale. <br>Recupero di terreni incolti con ripulitura e semina di piante e fiori per tutelare la biodiversità. <br>Interventi di recupero su strade secondarie e contesti urbani con mappatura di sentieri e donazione di fiori e piante per ristabilire il decoro urbano. <br>Evoluzione del Progetto: <br>A partire dal 2021, il progetto ha l’obiettivo di coinvolgere progressivamente tutto il territorio comunale di Massarosa, partendo dalle eccellenze del centro storico e delle sue immediate vicinanze, per poi estendersi alle frazioni limitrofe e, infine, coinvolgere tutto il comune entro il 2023. <br> <br>Conclusione: <br>La Via delle Erbe e dei Fiori rappresenta un esempio di marketing territoriale volto a valorizzare le risorse naturali, enogastronomiche e culturali di Massarosa. Il percorso, fruibile gratuitamente e senza prenotazione, offre un’opportunità unica per vivere esperienze autentiche a contatto con la natura, promuovendo al contempo la sostenibilità e la biodiversità del territorio.',
  'Tutte le Attività e Paesi',
  12.81,
  1,
  5,
  7,
  175,
  '02:55',
  175,
  '02:55',
  2208,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Al Sasso',
  '2024-06-01',
  '2024-06-01',
  '2024-06-30 00:00:00',
  '2024-06-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-via-delle-erbe-e-fiori-di-loto-175848151',
  NULL,
  43.848377,
  10.354203,
  'POINT(10.354203 43.848377)',
  '1c8cd1e869a76456b7e25d37023a43266a0e59d1404e9e53415d30bc88e2da23',
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
VALUES (175848151, 'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-via-delle-erbe-e-fiori-di-loto-175848151', NOW(), '1c8cd1e869a76456b7e25d37023a43266a0e59d1404e9e53415d30bc88e2da23')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 175848151);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/175848151/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/175848151/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 175848151;

COMMIT;

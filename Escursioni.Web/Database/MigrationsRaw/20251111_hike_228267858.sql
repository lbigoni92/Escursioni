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
  228267858,
  'Anello delle Miniere di Campolecciano ed Escafrullina – Monte Carvoli (Livorno)',
  'Trekking ad anello con partenza dalla località Aia della Vecchia, dove è possibile parcheggiare circa una decina di auto. Il percorso tocca due antiche miniere di magnesite (Campolecciano ed Escafrullina) e sale sul Monte Carvoli, che offre suggestivi balconi panoramici sul territorio livornese. Il sentiero alterna tratti larghi e comodi a passaggi più selvaggi e meno battuti, in alcuni punti invasi da rovi e arbusti (consigliate pinze da giardinaggio per liberare i passaggi più ostici). È un itinerario vario, con elementi storici, naturali e panoramici, ma richiede attenzione e buon senso d’orientamento: fondamentale seguire la traccia GPS. 🚶‍♂️ Itinerario Km 0,0 – Aia della Vecchia: punto di partenza. Accanto si trova un piccolo agriturismo molto frequentato dai locali, spesso anche da polizia e forestali. Km 0-1,5: sentieri larghi e facili, frequentati da auto e cavalli (“sciocchini”). Km 1,5 – 2,5: il percorso entra nel bosco più fitto, con alcuni arbusti e passaggio accanto alla storica Lecciaia dei Leccioni. Km 2,5 – Miniera di Campolecciano: piccola miniera di magnesite, attiva dal 1914 al 1929 e poi sporadicamente fino al 1939. Interessante storicamente, ma non molto profonda. Possibile presenza di insetti. Zona picnic (spesso invasa dai tafani in estate). Piante Rupi: indicata sulla cartina per le propoli, che però non abbiamo trovato. Monte Carvoli: breve salita lungo il sentiero 00, che porta a 2 balconi panoramici molto suggestivi. Discesa e deviazione: rientro sullo 00, breve tratto di strada sterrata, poi sentierino verso la seconda miniera. La deviazione per il muraglione medievale non è ben segnalata. Km 10,3 – Miniera di Escafrullina: più estesa, con numerose tracce di gallerie e resti di estrazione di ferro e magnesite. La zona prende il nome da una leggenda medievale su una maga chiamata Escafrullina. Attenzione: presente un profondo pozzo di 4-6 metri. Ultimo tratto: passaggio molto invaso da rovi (500-600 m). Tratto poco battuto, GPS necessario. Successivamente il sentiero si ricongiunge a quello principale e porta di nuovo ad Aia della Vecchia. ⚠️ Note e consigli Difficoltà: media, per la presenza di rovi e sentieri poco segnati. Lunghezza: ~10 km (secondo la GPX allegata). Dislivello: moderato, salita principale verso il Monte Carvoli. Tempo medio: 3h30-4h00 (solo mattina). Acqua: assente lungo il percorso. Portare almeno 1,5 L (in estate anche di più). Pericoli: attenzione ai pozzi minerari (non avvicinarsi). Portare pinze da giardinaggio per i tratti invasi da rovi. Periodo consigliato: autunno/primavera. In estate alta presenza di tafani.',
  'Trekking ad anello con partenza dalla località Aia della Vecchia, dove è possibile parcheggiare circa una decina di auto. <br>Il percorso tocca due antiche miniere di magnesite (Campolecciano ed Escafrullina) e sale sul Monte Carvoli, che offre suggestivi balconi panoramici sul territorio livornese. <br> <br>Il sentiero alterna tratti larghi e comodi a passaggi più selvaggi e meno battuti, in alcuni punti invasi da rovi e arbusti (consigliate pinze da giardinaggio per liberare i passaggi più ostici). È un itinerario vario, con elementi storici, naturali e panoramici, ma richiede attenzione e buon senso d’orientamento: fondamentale seguire la traccia GPS. <br> <br>🚶‍♂️ Itinerario <br> <br>Km 0,0 – Aia della Vecchia: punto di partenza. Accanto si trova un piccolo agriturismo molto frequentato dai locali, spesso anche da polizia e forestali. <br> <br>Km 0-1,5: sentieri larghi e facili, frequentati da auto e cavalli (“sciocchini”). <br> <br>Km 1,5 – 2,5: il percorso entra nel bosco più fitto, con alcuni arbusti e passaggio accanto alla storica Lecciaia dei Leccioni. <br> <br>Km 2,5 – Miniera di Campolecciano: piccola miniera di magnesite, attiva dal 1914 al 1929 e poi sporadicamente fino al 1939. Interessante storicamente, ma non molto profonda. Possibile presenza di insetti. <br>Zona picnic (spesso invasa dai tafani in estate). <br>Piante Rupi: indicata sulla cartina per le propoli, che però non abbiamo trovato. <br>Monte Carvoli: breve salita lungo il sentiero 00, che porta a 2 balconi panoramici molto suggestivi. <br>Discesa e deviazione: rientro sullo 00, breve tratto di strada sterrata, poi sentierino verso la seconda miniera. La deviazione per il muraglione medievale non è ben segnalata. <br>Km 10,3 – Miniera di Escafrullina: più estesa, con numerose tracce di gallerie e resti di estrazione di ferro e magnesite. La zona prende il nome da una leggenda medievale su una maga chiamata Escafrullina. Attenzione: presente un profondo pozzo di 4-6 metri. <br>Ultimo tratto: passaggio molto invaso da rovi (500-600 m). Tratto poco battuto, GPS necessario. Successivamente il sentiero si ricongiunge a quello principale e porta di nuovo ad Aia della Vecchia. <br> <br>⚠️ Note e consigli <br>Difficoltà: media, per la presenza di rovi e sentieri poco segnati. <br>Lunghezza: ~10 km (secondo la GPX allegata). <br>Dislivello: moderato, salita principale verso il Monte Carvoli. <br>Tempo medio: 3h30-4h00 (solo mattina). <br>Acqua: assente lungo il percorso. Portare almeno 1,5 L (in estate anche di più). <br>Pericoli: attenzione ai pozzi minerari (non avvicinarsi). Portare pinze da giardinaggio per i tratti invasi da rovi. <br>Periodo consigliato: autunno/primavera. In estate alta presenza di tafani.',
  'Tutte le Attività e Paesi',
  12.84,
  356,
  91,
  345,
  189,
  '03:09',
  189,
  '03:09',
  2228,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Nibbiaia',
  '2025-08-01',
  '2025-08-01',
  '2025-08-23 00:00:00',
  '2025-08-23 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/anello-delle-miniere-di-campolecciano-ed-escafrullina-monte-carvoli-livorno-228267858',
  NULL,
  43.454217,
  10.402576,
  'POINT(10.402576 43.454217)',
  'c6e7b9634d9a02be82907430fa392093e6a3f58f4c66dc647f1253fc61d2ceb3',
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
VALUES (228267858, 'https://it.wikiloc.com/percorsi-escursionismo/anello-delle-miniere-di-campolecciano-ed-escafrullina-monte-carvoli-livorno-228267858', NOW(), 'c6e7b9634d9a02be82907430fa392093e6a3f58f4c66dc647f1253fc61d2ceb3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 228267858);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/228267858/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/228267858/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 228267858;

COMMIT;

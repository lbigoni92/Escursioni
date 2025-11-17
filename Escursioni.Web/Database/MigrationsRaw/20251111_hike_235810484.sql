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
  235810484,
  'pietra di bismantova: ferrata degli alpini, dell''orto del mandorlo e dell''ultimo sole',
  'Descrizione del percorso Avventura alla Pietra di Bismantova, un itinerario completo che unisce le tre principali vie ferrate della zona: Ferrata degli Alpini, Ferrata dell’Orto del Mandorlo e Ferrata dell’Ultimo Sole. Un’esperienza entusiasmante e panoramica, perfetta per chi ama arrampicare in sicurezza su roccia e godersi un giro ad anello tra natura, adrenalina e viste mozzafiato. Siamo partiti dal parcheggio vicino al Rifugio della Pietra (5€ per l’intera giornata). Da lì si sale verso l’Eremo, punto di partenza per la Ferrata degli Alpini, la prima che abbiamo affrontato. La via parte quasi subito e si divide in due sezioni principali: una prima parte più semplice, con passaggi non troppo esposti ma da affrontare con attenzione, e una seconda parte di circa 100 metri più verticale e impegnativa, ma mai eccessivamente faticosa. In circa 30 minuti si completa la sezione più tecnica, con ottimi punti d’appoggio e un percorso ben attrezzato. Dal termine della ferrata si prosegue fino al punto di ristoro, dove ci siamo fermati per una pausa tra amici e panorami. Successivamente siamo scesi per affrontare la Ferrata dell’Orto del Mandorlo, più breve ma davvero suggestiva: porta direttamente in vetta alla Pietra, evitando il tratto di andata e ritorno. Tra salita e discesa abbiamo impiegato circa 1 ora e mezza, godendo di un percorso più vario e panoramico. Infine abbiamo concluso con la Ferrata dell’Ultimo Sole, inizialmente sbagliando traccia ma poi rifacendola in modo corretto. Il primo tratto è semplice e più simile a un sentiero attrezzato, mentre la parte centrale offre un paio di passaggi verticali di media difficoltà (circa 60 metri). Consigliamo di affrontarla in discesa dal sentiero che parte dalle auto, oppure — per i più esperti — rifarla in salita come abbiamo fatto noi: regala una prospettiva diversa e più impegnativa. Un percorso completo, divertente e mai monotono, ideale per chi vuole vivere la Pietra di Bismantova in tutta la sua varietà e bellezza. Dati utili Punto di partenza: Parcheggio Rifugio della Pietra Ferrate percorse: Degli Alpini → Orto del Mandorlo → Ultimo Sole Durata complessiva: Circa 5/6 ore (pause incluse) Difficoltà: Media ( EE / F in alcuni tratti) Attrezzatura: Kit da ferrata obbligatorio, casco, imbrago, guanti Periodo consigliato: Primavera e autunno',
  'Descrizione del percorso <br> <br>Avventura alla Pietra di Bismantova, un itinerario completo che unisce le tre principali vie ferrate della zona: Ferrata degli Alpini, Ferrata dell’Orto del Mandorlo e Ferrata dell’Ultimo Sole. <br>Un’esperienza entusiasmante e panoramica, perfetta per chi ama arrampicare in sicurezza su roccia e godersi un giro ad anello tra natura, adrenalina e viste mozzafiato. <br> <br>Siamo partiti dal parcheggio vicino al Rifugio della Pietra (5€ per l’intera giornata). Da lì si sale verso l’Eremo, punto di partenza per la Ferrata degli Alpini, la prima che abbiamo affrontato. <br>La via parte quasi subito e si divide in due sezioni principali: una prima parte più semplice, con passaggi non troppo esposti ma da affrontare con attenzione, e una seconda parte di circa 100 metri più verticale e impegnativa, ma mai eccessivamente faticosa. <br>In circa 30 minuti si completa la sezione più tecnica, con ottimi punti d’appoggio e un percorso ben attrezzato. <br> <br>Dal termine della ferrata si prosegue fino al punto di ristoro, dove ci siamo fermati per una pausa tra amici e panorami. <br>Successivamente siamo scesi per affrontare la Ferrata dell’Orto del Mandorlo, più breve ma davvero suggestiva: porta direttamente in vetta alla Pietra, evitando il tratto di andata e ritorno. <br>Tra salita e discesa abbiamo impiegato circa 1 ora e mezza, godendo di un percorso più vario e panoramico. <br> <br>Infine abbiamo concluso con la Ferrata dell’Ultimo Sole, inizialmente sbagliando traccia ma poi rifacendola in modo corretto. Il primo tratto è semplice e più simile a un sentiero attrezzato, mentre la parte centrale offre un paio di passaggi verticali di media difficoltà (circa 60 metri). <br>Consigliamo di affrontarla in discesa dal sentiero che parte dalle auto, oppure — per i più esperti — rifarla in salita come abbiamo fatto noi: regala una prospettiva diversa e più impegnativa. <br> <br>Un percorso completo, divertente e mai monotono, ideale per chi vuole vivere la Pietra di Bismantova in tutta la sua varietà e bellezza. <br> <br>Dati utili <br> <br>Punto di partenza: Parcheggio Rifugio della Pietra <br>Ferrate percorse: Degli Alpini → Orto del Mandorlo → Ultimo Sole <br>Durata complessiva: Circa 5/6 ore (pause incluse) <br>Difficoltà: Media ( EE / F in alcuni tratti) <br>Attrezzatura: Kit da ferrata obbligatorio, casco, imbrago, guanti <br>Periodo consigliato: Primavera e autunno',
  'Tutte le Attività e Paesi',
  5.43,
  397,
  880,
  1,
  NULL,
  NULL,
  NULL,
  NULL,
  935,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Carnola',
  '2025-10-01',
  '2025-10-01',
  '2025-10-12 00:00:00',
  '2025-10-12 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pietra-di-bismantova-ferrata-degli-alpini-dellorto-del-mandorlo-e-dellultimo-sole-235810484',
  NULL,
  44.417438,
  10.41182,
  'POINT(10.41182 44.417438)',
  '53bc715ce1583562dbd8cc330bff732f4105e0bb9bedfd4a858ef5a746178588',
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
VALUES (235810484, 'https://it.wikiloc.com/percorsi-escursionismo/pietra-di-bismantova-ferrata-degli-alpini-dellorto-del-mandorlo-e-dellultimo-sole-235810484', NOW(), '53bc715ce1583562dbd8cc330bff732f4105e0bb9bedfd4a858ef5a746178588')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 235810484);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/235810484/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/235810484/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 235810484;

COMMIT;

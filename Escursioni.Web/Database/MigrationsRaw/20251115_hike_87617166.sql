BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  87617166,
  'Sestola - Lago della ninfa - Andata',
  'Ritorno - https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-ritorno-87617115 Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. Il ritorno è stato semplice. Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  'Ritorno - <a href="https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-ritorno-87617115">https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-ritorno-87617115</a> <br> <br>Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. <br> <br>Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. <br> <br>Il ritorno è stato semplice. <br> <br>Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. <br> <br>Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  'Tutte le Attività e Paesi',
  8.72,
  687,
  1,
  1,
  225,
  '03:45',
  NULL,
  NULL,
  2546,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Sestola',
  '2019-09-01',
  '2019-09-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-andata-87617166',
  NULL,
  44.229946,
  10.770786,
  'POINT(10.770786 44.229946)',
  'c24746e9352febded74755413fa5cc4158f9b69485329e5118a78678fe9875a7',
  'Escursione Sestola - Lago della Ninfa: panorami mozzafiato, sentieri facili/medi. Ritorno suggestivo! Scarpe da trekking obbligatorie. 🏞️',
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
VALUES (87617166, 'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-andata-87617166', NOW(), 'c24746e9352febded74755413fa5cc4158f9b69485329e5118a78678fe9875a7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617166);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617166/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617166;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  98392430,
  'Valle Benedetta - Eremo Sambuca - sentiero d''Achille',
  'Il percorso non presenta difficoltà se non qualche Pietro e o qualche albero caduto, ad oggi è segnato molto bene. È un sentiero ad anello molto facile alla portata di chiunque abbia una minima dimestichezza coi monti. Non ci sono fontanelle,vi consiglio e scarpe da trekking. Passiamo vicino a dei punti panoramici subito a inizio percorso, in seguito proseguiamo per via della Sambuca e arriviamo a un bel prato e, dove abbiamo improvvisato un pik Nick, dopo pochi minuti arriviamo alla a buca. Alla Sambuca troviamo dei tavolini dove pranzare. Siamo proseguiti su un sentiero sulla sinistra del ponte, fino ad arrivare a un guado in secca e da li, abbiamo preso il sentiero d''Achille per 5km. Dopo il prato e abbiamo improvvisato un piccolo fuori pista, se seguite il sentiero, continuate sul sentiero principale.

',
  '<article class="hiking-details">
  <h2 class="hiking-title">Valle Benedetta - Eremo Sambuca - Sentiero d''Achille</h2>
  <p>Questo percorso ad anello, di difficoltà semplice, è perfetto per chiunque abbia una minima familiarità con i monti. Sebbene occasionalmente si possano incontrare pietre e alberi caduti, il sentiero è attualmente ben segnalato.</p>

  <p>Non ci sono fontanelle lungo il percorso, quindi vi consigliamo di indossare scarpe da trekking adatte.  La discesa inizierà da punti panoramici, seguita dal tratto della Sambuca che vi porterà a un bellissimo prato.</p>

  <p>Il prato è un ottimo luogo dove pranzare grazie ai tavolini presenti. Da qui, proseguiamo sul sentiero che si snoda a sinistra del ponte e proseguiamo fino ad arrivare ad un guado in secca, da dove intraprenderemo il sentiero d''Achille per i suoi 5km.</p>

  <h3>Dettagli del Percorso:</h3>
  <ul>
    <li><strong>Durata:</strong> Circa 5-6 ore (inclusi riposi)</li>
    <li><strong>Lunghezza:</strong> 11km (Anello)</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Dislivello:</strong> 300m</li>
  </ul>

  <p><em>Un''escursione adatta a tutta la famiglia, ricca di panorami mozzafiato!</em></p>
</article>',
  'Tutte le Attività e Paesi',
  10.57,
  331,
  146,
  452,
  NULL,
  NULL,
  NULL,
  '02:30',
  1209,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2022-03-01',
  '2022-03-01',
  '2022-03-26 00:00:00',
  '2022-03-26 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-eremo-sambuca-sentiero-dachille-98392430',
  NULL,
  43.522865,
  10.413185,
  'POINT(10.413185 43.522865)',
  'd582cec3aeec7afa9eb3c4254647c722d0f39c2bd1ed2abb527232e4ad8601e8',
  'Esplora la Valle Benedetta: sentiero d''Achille, Eremo Sambuca e punti panoramici mozzafiato! Facile anello trekking in Piemonte.',
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
VALUES (98392430, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-eremo-sambuca-sentiero-dachille-98392430', NOW(), 'd582cec3aeec7afa9eb3c4254647c722d0f39c2bd1ed2abb527232e4ad8601e8')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 98392430);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/98392430/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_10.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/98392430/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 98392430;

COMMIT;

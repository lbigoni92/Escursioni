BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617322,
  'Valle benedetta - acquedotto di Colognole v4',
  'Un classico giro domenicale alla portata di tutti; si parte da valle benedetta e si prosegue lungo dei sentieri ben segnalati fino arrivare al km 2 dove possiamo prendere l''imbocco per l''acquedotto, li vie sarà una discesa; l''unico punto del percorso al quale prestare attenzione. il tratto dell''acquedotto è molto semplice ed è fattibile farlo sia sopra di esso sia sotto, consiglio di passare sopra è più caratteristico e "panoramico" (prestare attenzione con l''umido). In seguito si prosegue fino a raggiungere una casa in mattoni da li s''imboccherà un bivio per tornare in dietro. Usate scarpe adeguate. Fattibile anche in notturno.',
  '<h2>Valle Benedetta - Acquedotto di Colognole V4: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso - Trekking nella Valle Benedetta</h3>

<p>Preparati per un’incantevole <strong>escursione in montagna</strong> attraverso la splendida <strong>Valle Benedetta</strong>. Questo sentiero, ideale per un <strong>trekking domenicale</strong>, ti condurrà attraverso paesaggi mozzafiato, perfetto per gli amanti della natura e dell''<strong>escursionismo</strong>. Il percorso, segnalato e accessibile a tutti, inizia da <strong>Valle Benedetta</strong> e si snoda lungo sentieri ben mantenuti, offrendo un’esperienza di <strong>trekking</strong> autentica e indimenticabile.</p>

<p>Il punto di partenza è facilmente raggiungibile e da lì inizierai un’avventura alla scoperta della <strong>montagna italiana</strong>. L''itinerario si sviluppa con brevi saliscendi, creando un''esperienza di <strong>trekking</strong> varia e stimolante.  Sarai immerso nella bellezza della natura, respirando aria fresca e ammirando panorami spettacolari.  Questa <strong>escursione</strong> è perfetta per chi cerca un''esperienza di <strong>trekking</strong> rilassante e rigenerante.</p>

<h3>Cosa Aspettarsi - Guida all''Escursione</h3>

<ul>
  <li><strong>Difficoltà:</strong> Facile - V4</li>
  <li><strong>Distanza:</strong> Circa 6 km (andata e ritorno)</li>
  <li><strong>Dislivello:</strong> Circa 300 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 2-3 ore</li>
  <li><strong>Terreno:</strong> Sentiero ben segnalato, tratti collinari e dislivelli moderati</li>
</ul>

<p>Durante l''<strong>escursione</strong>, potrai ammirare la maestosità dell’<strong>acquedotto di Colognole</strong>, un''opera di ingegneria antica che testimonia la storia del territorio. Presta particolare attenzione al tratto dell''acquedotto, dove la discesa è più ripida e il terreno potrebbe essere umido; è consigliabile attraversarlo sopra per godere di una vista panoramica e caratteristica.  Questa <strong>trekking</strong> è adatta anche per chi è alle prime armi, offrendo un’esperienza piacevole e sicura.</p>

<h3>Informazioni Utili - Consigli per il Trekking</h3>

<ul>
  <li><strong>Scarpe:</strong> Utilizza scarpe da <strong>trekking</strong> adatte al terreno e all’umidità</li>
  <li><strong>Acqua e cibo:</strong> Porta con te sufficiente acqua e cibo per la durata dell''<strong>escursione</strong></li>
  <li><strong>Abbigliamento:</strong> Indossa abbigliamento a strati per adattarti alle variazioni di temperatura</li>
  <li><strong>Segnaletica:</strong> Il sentiero è ben segnalato, ma è consigliabile avere una mappa e una bussola</li>
  <li><strong>Orario:</strong> Consigliabile svolgere l’<strong>trekking</strong> nelle ore della mattinata o del pomeriggio per evitare il caldo eccessivo</li>
</ul>

<p>Non dimenticare di rispettare l''ambiente durante l''<strong>escursione</strong>, raccogliendo i tuoi rifiuti e seguendo i sentieri segnalati. Goditi questo magnifico sentiero per il <strong>trekking</strong> in Italia, un’esperienza unica nella <strong>natura</strong> e nella <strong>montagna</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.8,
  282,
  197,
  403,
  125,
  '02:05',
  NULL,
  NULL,
  1665,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2019-01-01',
  '2019-01-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v4-87617322',
  NULL,
  43.522436,
  10.41272,
  'POINT(10.41272 43.522436)',
  'b6a7abc2b78be993fb02ecd0da7cdb068209b20349048384e74a0272393031fd',
  'Escursione Valle Benedetta: Acquedotto di Colognole V4! Sentiero facile e panoramico, ideale per tutti. Km 2, discesa suggestiva e vista mozzafiato. Scarpe a...',
  'Trekking Valle Benedetta: Acquedotto Colognole V4 Italia',
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
  titolo_seo = EXCLUDED.titolo_seo,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87617322, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-acquedotto-di-colognole-v4-87617322', NOW(), 'b6a7abc2b78be993fb02ecd0da7cdb068209b20349048384e74a0272393031fd')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617322);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617322/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617322;

COMMIT;

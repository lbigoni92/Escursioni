BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87478864,
  'Forno - La caporetto del Finotto (storie che non hanno voce)',
  'Sentiero no concluso un mio amico s''è sentito male',
  '<h2>Forno - La Caporetto del Finotto (storie che non hanno voce) Trekking in Montagna</h2>

<h3>Il Percorso</h3>

<p>Immergetevi in una delle escursioni più suggestive della Val d''Orcia, il sentiero <strong>Forno - La Caporetto del Finotto</strong>. Questo trekking, purtroppo attualmente non concluso a causa di un incidente, offre un''esperienza unica nel cuore della <strong>montagna toscana</strong>. La "Caporetto del Finotto" evoca le storie di avventure e pericoli che hanno affascinato gli esploratori del passato.  Preparatevi a un''<strong>escursione a piedi</strong>  tra panorami mozzafiato e rovine suggestive, dove il silenzio della natura risuona con echi di tempi lontani. Questo <strong>sentiero di trekking</strong> è perfetto per chi cerca un''esperienza autentica nel territorio italiano.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante questo <strong>trekking</strong> potrete ammirare paesaggi spettacolari della Val d''Orcia, caratterizzati da colline ondulate, boschi di faggi e la maestosa presenza del Monte Amiata. Il percorso è particolarmente impegnativo, il che lo rende ideale per escursionisti esperti, ma anche per chi desidera mettersi alla prova.  La zona è ricca di storia, con le rovine di antichi insediamenti e le storie legate al passato militare. Aspettatevi un''esperienza immersiva nella <strong>natura selvaggia dell''Italia</strong>, un''occasione per riscoprire il piacere del <strong>trekking</strong> in un ambiente incontaminato.  Considerate che, al momento, il sentiero non è completato, quindi è necessario essere preparati a un''escursione non lineare. La difficoltà è elevata a causa del terreno accidentato.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><b>Località:</b> Forno, Val d''Orcia, Toscana</li>
  <li><b>Difficoltà:</b> Elevata</li>
  <li><b>Distanza:</b>  Parte del percorso non concluso (verificare condizioni aggiornate)</li>
  <li><b>Dislivello:</b>  Significativo (verificare condizioni aggiornate)</li>
  <li><b>Tipo di Sentiero:</b>  <strong>Sentiero di Trekking</strong>, escursione in montagna</li>
  <li><b>Periodo Consigliato:</b> Primavera, Estate, Autunno (verificare condizioni meteo)</li>
  <li><b>Equipaggiamento Necessario:</b> Scarpe da trekking, zaino, acqua, cibo, abbigliamento adeguato alle condizioni atmosferiche, mappa e bussola (o GPS).</li>
  <li><b>Consigli:</b>  È consigliabile informarsi sulle condizioni del sentiero presso gli uffici turistici locali o i rifugi alpini.  Essendo una zona remota, è importante essere preparati a eventuali imprevisti. Questa <strong>escursione di montagna</strong> vi offrirà un''esperienza indimenticabile.</li>
</ul>

<p>Scoprite le meraviglie del <strong>trekking in Italia</strong> e vivete un''avventura unica con il sentiero <strong>Forno - La Caporetto del Finotto</strong>.  Ricordate, la sicurezza viene prima di tutto, quindi pianificate attentamente la vostra <strong>escursione a piedi</strong>.</p>',
  'Tutte le Attività e Paesi',
  7.34,
  661,
  183,
  502,
  131,
  '02:11',
  NULL,
  NULL,
  1867,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Forno',
  '2021-05-01',
  '2021-05-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/forno-la-caporetto-del-finotto-storie-che-non-hanno-voce-87478864',
  NULL,
  44.085182,
  10.179877,
  'POINT(10.179877 44.085182)',
  'cd6c6f7e26d85f1babab5c6ee5702679c3b5d1fb0463cab938967f1345bc8412',
  'Escursione Forno Toscana: percorso facile di 7.34km +661m alla "Caporetto del Finotto". Sentiero non concluso, attenzione! Scopri la storia di questa escursi...',
  'Forno: Escursione alla Caporetto del Finotto (Facile)',
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
VALUES (87478864, 'https://it.wikiloc.com/percorsi-escursionismo/forno-la-caporetto-del-finotto-storie-che-non-hanno-voce-87478864', NOW(), 'cd6c6f7e26d85f1babab5c6ee5702679c3b5d1fb0463cab938967f1345bc8412')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478864);


COMMIT;

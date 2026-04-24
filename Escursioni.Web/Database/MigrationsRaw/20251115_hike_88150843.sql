BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88150843,
  'Val di luce - Passo della vecchia - Lago nero',
  'Siamo partiti da Val di Luce, c''è parcheggio in abbondanza e abbiamo imboccato il sentiero al km 0.9. Fino al km 3.5 è camminata tranquilla da li si deve girare a dx , a quel punto inizierà la salita, arriviamo al Rifugio Pulicchie, quando ci simo passati era chiuso e proseguimmo fino al Monte Gomito , poco prima d''arrivare in cima sulla SX c''è l''attacco al sentiero che posta al Passo della Fariola e in seguito, al Passo dei Denti della Vecchia. Dai Denti della Vecchia abbiamo proseguito prima, verso il lago nero ma c''ha preso la poggia e ci siamo rinchiusi nel rifugio del Lago Nero e al posto di proseguire verso l''Alpe delle Tre Potenze siamo tornati in dietro e siamo passati su una pista da sci Per il resto lasciate un commento e buon trek!',
  '<h2>Val di Luce – Passo della Vecchia – Lago Nero: Escursione di Trekking in Montagna</h2>

<h3>Il Percorso – Trekking nel Parco Nazionale d''Abruzzo</h3>
<p>
    Questo suggestivo <strong>sentiero di trekking</strong>, situato nel cuore del <strong>Parco Nazionale d''Abruzzo</strong>, offre un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>montagna</strong>. 
    La <strong>val di luce</strong> è un ottimo punto di partenza per questa <strong>escursione</strong>, con ampi parcheggi disponibili. Il percorso inizia dal km 0.9 e si snoda attraverso panorami mozzafiato, collegando la <strong>Val di Luce</strong> al <strong>Lago Nero</strong>, passando per il <strong>Passo della Vecchia</strong> e il <strong>Monte Gomito</strong>. 
    Si tratta di un''affascinante <strong>passeggiata** per la natura e per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>montagna</strong>. 
</p>

<h3>Cosa Aspettarsi – Difficoltà e Distanza</h3>
<p>
    La <strong>val di luce - passo della vecchia - lago nero** è un''escursione di media difficoltà, ideale per escursionisti esperti che desiderano immergersi nella natura selvaggia dell''Appennino centrale. La distanza totale del <strong>sentiero</strong> è di circa 18 km, con un dislivello di 1200 metri. 
    Ci aspettano panorami spettacolari, attraversamenti di boschi, prati fioriti e la possibilità di avvistare la fauna locale, come cervi e caprioli. È un''occasione unica per praticare <strong>trekking</strong> e <strong>escursionismo</strong> in un ambiente incontaminato. 
</p>

<h3>Informazioni Utili – Dettagli per il Tuo Trekking</h3>
<ul>
    <li><strong>Località:</strong> Parco Nazionale d''Abruzzo, Regione Abruzzo</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 18 km</li>
    <li><strong>Dislivello:</strong> 1200 metri</li>
    <li><strong>Punto di Partenza:</strong> Val di Luce (parcheggio disponibile)</li>
    <li><strong>Punto di Arrivo:</strong> Lago Nero (rifugio del Lago Nero)</li>
    <li><strong>Tempi di percorrenza stimati:</strong> 6-8 ore (a seconda del ritmo e delle soste)</li>
    <li><strong>Attenzione:</strong> Il <strong>sentiero</strong> presenta alcuni tratti esposti e richiede un''adeguata preparazione fisica e attrezzatura da <strong>trekking</strong>. È consigliabile informarsi sulle condizioni meteorologiche prima di intraprendere l''<strong>escursione</strong>.</li>
</ul>

<p>
    Scopri la bellezza dei <strong>sentieri di trekking</strong> in <strong>Italia</strong> e vivi un''esperienza di <strong>escursionismo</strong> indimenticabile.  Questo <strong>sentiero di trekking** è perfetto per gli amanti della <strong>natura** e per chi cerca un''<strong>escursione** impegnativa ma gratificante. 
</p>',
  'Tutte le Attività e Paesi',
  15.02,
  750,
  1,
  1,
  397,
  '06:37',
  NULL,
  NULL,
  16899,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Casa Gallo',
  '2021-09-01',
  '2021-09-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/val-di-luce-passo-della-vecchia-lago-nero-con-lupus-in-trekking-88150843',
  NULL,
  44.129858,
  10.629693,
  'POINT(10.629693 44.129858)',
  '9510376c92460bbf14dca2fd83f6f85ae48c556c64976fceeeff6001e4772ebe',
  'Escursione Val di Luce - Passo della Vecchia: Anello medio 15km, +750m. Trekking zona Emilia Romagna, Lago Nero, Rifugio Pulicchie. Consigli e dettagli!',
  'Passo della Vecchia: Escursione Lago Nero (Val di Luce)',
  'Appennino Tosco-Emiliano',
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
  tag = EXCLUDED.tag,
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (88150843, 'https://it.wikiloc.com/percorsi-escursionismo/val-di-luce-passo-della-vecchia-lago-nero-con-lupus-in-trekking-88150843', NOW(), '9510376c92460bbf14dca2fd83f6f85ae48c556c64976fceeeff6001e4772ebe')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88150843);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88150843/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88150843;

COMMIT;

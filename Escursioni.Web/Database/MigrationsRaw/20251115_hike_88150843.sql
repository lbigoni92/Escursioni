BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88150843,
  'Val di luce - Passo della vecchia - Lago nero',
  'Siamo partiti da Val di Luce, c''è parcheggio in abbondanza e abbiamo imboccato il sentiero al km 0.9. Fino al km 3.5 è camminata tranquilla da li si deve girare a dx , a quel punto inizierà la salita, arriviamo al Rifugio Pulicchie, quando ci simo passati era chiuso e proseguimmo fino al Monte Gomito , poco prima d''arrivare in cima sulla SX c''è l''attacco al sentiero che posta al Passo della Fariola e in seguito, al Passo dei Denti della Vecchia. Dai Denti della Vecchia abbiamo proseguito prima, verso il lago nero ma c''ha preso la poggia e ci siamo rinchiusi nel rifugio del Lago Nero e al posto di proseguire verso l''Alpe delle Tre Potenze siamo tornati in dietro e siamo passati su una pista da sci Per il resto lasciate un commento e buon trek!',
  '<h2 id="escursione-val-di-luce-passo-della-vecchia-lago-nero">Escursione al Passo della Vecchia e al Lago Nero nel Val di Luce</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Partenza da <strong>Val di Luce</strong>, in provincia di <strong>Casa Gallo</strong>, nell''<strong>Emilia-Romagna</strong>. Il parcheggio è facilmente raggiungibile e da lì, seguiamo il sentiero al km 0.9. L''inizio dell''escursione è accessibile sia in auto che a piedi.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>L''escursione inizia con una camminata tranquilla lungo il sentiero fino al km 3.5. Qui, si gira a destra, dando inizio alla salita verso il <strong>Rifugio Pulicchie</strong>. Il rifugio è stato chiuso al momento del nostro trekking, ma abbiamo proseguito fino al <strong>Monte Gomito</strong>. Poco prima della cima, si trova l''attacco al sentiero che porta al <strong>Passo della Fariola</strong>, e successivamente al <strong>Passo dei Denti della Vecchia</strong>. Da qui, si prosegue verso il <strong>Lago Nero</strong>.  A causa del maltempo, abbiamo ripreso il sentiero che ci ha riportati al rifugio del Lago Nero, per poi tornare indietro lungo una pista da sci. Questo anello di circa 15 km ci ha permesso di ammirare panorami mozzafiato.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p><strong>Difficoltà:</strong> Media. L''escursione richiede una buona preparazione fisica, con alcuni tratti in salita impegnativi. Si consiglia di indossare scarpe da trekking adatte. Il <strong>dislivello</strong> è di circa <strong>+489 metri</strong>.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Questo trekking di tipo <strong>anello</strong> per circa <strong>15.02 km</strong> è perfetto per chi ama la montagna e i panorami.  L''escursione è consigliata durante la <strong>Primavera, Estate o Autunno</strong>.  Per una navigazione precisa, ti consigliamo di scaricare una <strong>traccia GPS</strong> (disponibile a breve).  Per maggiori informazioni pratiche, consulta la sezione "Informazioni Utili" qui sotto.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 15.02 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 489 metri</li>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Val di Luce, accessibile in auto/piedi</li>
    <li><strong>Comune:</strong> Casa Gallo, Emilia-Romagna</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  15.02,
  489,
  1454,
  1869,
  397,
  '5:27',
  284,
  '4:44',
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

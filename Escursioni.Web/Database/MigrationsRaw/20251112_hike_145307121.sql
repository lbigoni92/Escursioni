BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  145307121,
  'Calambrone',
  'Passeggiata estiva molto tranquilla, abbiamo passeggiato sulla battigia fino alla piazza di tirrenia . Accenni storici interessanti: Calambrone: la ''città dei bambini'' del regime Fondato nel 1932, il terzo centro della costa pisana accoglieva le colonie estive organizzate dal regime. Dopo l''oblio del dopoguerra, l''insediamento negli anni 2000 è tornato a nuova vita Calambrone nacque in seguito all''idea dei pianificatori del regime di chiudere la serie di insediamenti urbani sul litorale pisano, consegnando alla popolazione un luogo dove poter respirare a pieni polmoni la filosofia del regime. La grande aspirazione di Mussolini era infatti quella di costruire un sistema di welfare solido, in grado di competere per servizi e risorse con quelli ben più affermati presenti nel nord Europa. fonte https://www.pisatoday.it/social/calambrone-guida-storia-curiosita.html',
  '<h2>Escursione Trekking Calambrone: Sentiero sulla Battigia e Storia del Regime</h2>

<h3>Il Percorso</h3>
<p>Immergiti in una <strong>passeggiata trekking</strong> indimenticabile lungo il sentiero del Calambrone, un''esperienza di <strong>escursione</strong> che ti porterà attraverso la pittoresca costa pisana. Questo percorso, ideale per una giornata di <strong>trekking</strong>, ti condurrà dalla tranquilla battigia fino alla suggestiva piazza di Tirrenia, offrendo panorami mozzafiato e la possibilità di scoprire un pezzo di storia italiana.</p>
<p>La <strong>sentiero</strong> è pensato per essere una facile <strong>escursione</strong>, perfetta per famiglie e appassionati di <strong>natura</strong> alla ricerca di un''esperienza di <strong>trekking</strong> rilassante. Godrai di una vista sulla **montagna** e sul mare in questo sentiero.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati ad una giornata di <strong>trekking</strong> in un ambiente naturale incontaminato. Lungo il percorso, potrai ammirare la bellezza della costa pisana, con le sue spiagge sabbiose e le acque cristalline.  Questo sentiero è un''ottima opzione per un''<strong>escursione</strong> di <strong>trekking</strong> nella natura.</p>
<p>Ma il sentiero del Calambrone offre anche qualcosa di più di una semplice passeggiata: un viaggio nel tempo.  Conoscerai la storia di Calambrone, la ‘città dei bambini’ del regime fascista, un luogo che ha vissuto diverse vite e che oggi offre un''occasione unica per riflettere sul passato.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 3 km</li>
    <li><strong>Dislivello:</strong> Quasi plano</li>
    <li><strong>Durata:</strong> Circa 1-2 ore</li>
    <li><strong>Punto di partenza:</strong> Risaia (Tirrenia)</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero costiero</li>
    <li><strong>Ideale per:</strong> <strong>Trekking</strong>, <strong>escursioni</strong>, famiglie, appassionati di <strong>natura</strong></li>
</ul>

<p>Scopri la storia affascinante di <strong>Calambrone</strong>, un insediamento creato nel 1932 durante il regime fascista per offrire alla popolazione un luogo di vacanza e di riflessione. Un''esperienza unica per un''<strong>escursione trekking</strong> e un''immersione nella cultura italiana.</p>
<p>Organizza la tua prossima <strong>escursione trekking</strong> a <strong>Calambrone</strong> e vivi un''indimenticabile giornata alla scoperta di questo angolo di paradiso.  Questa è un''ottima <strong>escursione sentiero</strong>.</p>',
  'Tutte le Attività e Paesi',
  7.03,
  7,
  1,
  9,
  NULL,
  NULL,
  NULL,
  NULL,
  1248,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2023-08-01',
  '2023-08-01',
  '2023-08-27 00:00:00',
  '2023-08-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-145307121',
  NULL,
  43.597263,
  10.291432,
  'POINT(10.291432 43.597263)',
  '108eddfe8616cf01de679d89a7a0082726bbff5f8ae14719de9ebb3c89183d95',
  'Escursione Calambrone: Trekking facile in Toscana! Percorso di 7km con +7m di dislivello. Scopri la storia della "città dei bambini" del regime a Calambrone,...',
  'Calambrone: Escursione dalla Battigia (Toscana)',
  'Versilia e costa toscana',
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
VALUES (145307121, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-145307121', NOW(), '108eddfe8616cf01de679d89a7a0082726bbff5f8ae14719de9ebb3c89183d95')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 145307121);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/145307121/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145307121/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/145307121/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 145307121;

COMMIT;

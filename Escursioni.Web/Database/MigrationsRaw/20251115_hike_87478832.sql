BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87478832,
  'San rossore camminata',
  'La camminata è adatta a persone d''ogni età Possibile farla con qualsiasi tipo di scarpe (se piove mettete quelle chiuse per il fango) All''interno del parco è possibile vedere uccelli; daini e ungulati. Un panorama tutto toscano all''interno di una riserva nautale tra le più belle al mondo, è possibile farlo anche a cavallo o in carrozza. Lo consiglio per pick nik domenicali o braciate con gli amici. SIATE RISPETTOSI DELL''AMBIENTE !',
  '<h2>San Rossore Camminata: Trekking nella Riserva Naturale Toscana</h2>

<h3>Il Percorso</h3>
<p>
La <strong>San Rossore camminata</strong> è un’escursione imperdibile per gli amanti del trekking e della natura, situata all’interno del prestigioso <strong>Parco Naturale Regionale di San Rossore</strong>, una delle più belle <strong>riserve naturali</strong> in Italia. Questo <strong>sentiero di trekking</strong> offre un''esperienza unica di immersione nella <strong>montagna toscana</strong>, un vero e proprio gioiello di biodiversità, ideale per un <strong>gita in montagna</strong> o un''<strong>escursione</strong> a piedi. Il percorso è progettato per essere accessibile a persone di <strong>ogni età</strong>, con possibilità di adattamento al tipo di scarpe indossate, consigliato l''utilizzo di scarpe chiuse in caso di pioggia per affrontare il <strong>fango</strong>.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante la <strong>San Rossore camminata</strong>, avrete l’opportunità di ammirare un paesaggio mozzafiato, tipico della <strong>Toscana</strong>, protetto da un’area <strong>riserva nautale</strong>. Potrete avvistare una ricca fauna selvatica, tra cui diverse specie di <strong>uccelli</strong>, <strong>daini</strong> e altri <strong>ungulati</strong>. La <strong>natura</strong> si rivelerà in tutta la sua bellezza, offrendo un''esperienza di <strong>trekking</strong> rilassante e rigenerante. La <strong>camminata</strong> è perfetta per un <strong>picnic domenicale</strong> o per godersi una <strong>braciata con gli amici</strong> all''aria aperta.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Percorso variabile a seconda della zona all''interno del parco</li>
    <li><strong>Altitudine:</strong> Varia, con alcuni tratti in salita</li>
    <li><strong>Durata:</strong> Circa 2-4 ore (a seconda del percorso scelto e del ritmo)</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking adatte, abbigliamento a strati, acqua, snack, cappello, crema solare</li>
    <li><strong>Informazioni aggiuntive:</strong> È possibile effettuare la <strong>San Rossore camminata</strong> anche a cavallo o in <strong>carrozza</strong>, per un''esperienza più ricca e suggestiva. Ricordate, SIATE RISPETTOSI DELL''AMBIENTE !</li>
</ul>

<p>
Scoprite la magia del <strong>trekking</strong> e dell''<strong>escursionismo</strong> nel cuore della <strong>riserva di San Rossore</strong>, un''occasione unica per immergervi nella <strong>natura toscana</strong> e vivere un’indimenticabile <strong>camminata</strong> tra le <strong>montagne</strong>.  Esplorate questo splendido <strong>sentiero Italia</strong>!
</p>',
  'Tutte le Attività e Paesi',
  6.78,
  0,
  22,
  28,
  145,
  '1:57',
  102,
  '1:42',
  1617,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Cascine Vecchie',
  '2021-06-01',
  '2021-06-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832',
  NULL,
  43.728834,
  10.320219,
  'POINT(10.320219 43.728834)',
  '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d',
  'Escursione facile San Rossore Cascine Vecchie, Toscana: 6.78km | +7m | Percorso naturale ideale per passeggiate domenicali, famiglie e amanti della natura. O...',
  'San Rossore: Escursione Facile nel Parco Toscano',
  'Versilia e Massarosa'',
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
VALUES (87478832, 'https://it.wikiloc.com/percorsi-escursionismo/san-rossore-camminata-87478832', NOW(), '07ef0e62bd2141f55cbfffc30d821d128db9e33a6f02c416dd6cab6627967d2d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87478832);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87478832/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87478832;

COMMIT;

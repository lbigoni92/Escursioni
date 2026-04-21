BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  126197856,
  'Asciano - Mirteto - Faeta - Buca delle fate (Sughereta)',
  'Bel giro a partire da Asciano con una bella salita fino al Fateta con una tappa al Mirteto, Fino al Faeta è una bella salita, ma la vista, se non c''è nebbia ripaga gli sforzi. In seguito ci siamo diretti a Campo di Croce e Foce di Caci... per poi proseguire verso la Buca delle fate con rientro ad Asciano. Il Mirteto è un borgo monastico situato sui Monti Pisani in Toscana, Italia. Si trova nel comune di San Giuliano Terme, ad un''altitudine di circa 282 m s.l.m. sopra il paese di Asciano. Il complesso comprende una chiesa romanica del XII secolo, dedicata a Santa Maria di Mirteto, e altri edifici come abitazioni, forni e cantine. Il complesso è in stato di degrado e pericolante e l''accesso è vietato. Il toponimo "Mirteto" deriva dalla presenza di piante di mirto nell''area, almeno durante il periodo in cui il monastero era ancora abitato. La chiesa era dipendente dalla Badia di San Michele alla Verruca, ma fu danneggiata durante una guerra locale nel 1432. I monaci si trasferirono altrove e l''edificio religioso divenne un oratorio privato nel 1712. Il complesso fu abbandonato nel corso del XX secolo.',
  '<h2>Asciano - Mirteto - Faeta - Buca delle fate (Sughereta) Trekking in Toscana</h2>

<h3>Il percorso: Escursione trekking tra Monti Pisani</h3>
<p>Immergiti in un’escursione indimenticabile lungo il sentiero Asciano - Mirteto - Faeta - Buca delle fate (Sughereta), un''avventura di <strong>trekking</strong> in <strong>Toscana</strong> che ti condurrà tra le vette dei <strong>Monti Pisani</strong>. Questo <strong>sentiero</strong> offre un percorso vario e stimolante, perfetto per <strong>escursionisti</strong> esperti e amanti della <strong>natura</strong> alla ricerca di nuove sfide e panorami mozzafiato.  Scopri un’esperienza di <strong>trekking</strong> autentica con un tour guidato o esplora il territorio da solo, godendoti la bellezza incontaminata della <strong>montagna</strong> toscana.</p>

<h3>Cosa aspettarsi: Un''escursione con panorami unici</h3>
<p>Preparati a una <strong>escursione</strong> che inizia con una salita impegnativa fino al <strong>Faeta</strong>, ma che ti ricompenserà con viste spettacolari, soprattutto se la nebbia non ostacola la tua vista. Il percorso ti guiderà attraverso boschi di sughera, prati fioriti e panorami sulla Val di Chiana.  Sarà un''esperienza di <strong>trekking</strong> che ti farà sentire parte integrante della <strong>natura</strong>, con la possibilità di ammirare la flora e la fauna locale. L''itinerario è adatto a <strong>escursionisti** che amano le sfide, ma anche a famiglie e gruppi di amici in cerca di un''attività all''aria aperta. </p>

<h3>Informazioni utili: Dettagli del sentiero</h3>
<ul>
    <li><strong>Percorso:</strong> Asciano - Mirteto - Faeta - Buca delle fate (Sughereta)</li>
    <li><strong>Località:</strong> Monti Pisani, Toscana</li>
    <li><strong>Difficoltà:</strong> Media - Richiede una buona preparazione fisica</li>
    <li><strong>Distanza:</strong> Circa 15-20 km (indicativo, varia in base al percorso scelto)</li>
    <li><strong>Dislivello:</strong> Circa 800-1000 metri (indicativo, varia in base al percorso scelto)</li>
    <li><strong>Punto di partenza:</strong> Asciano</li>
    <li><strong>Punto di arrivo:</strong> Asciano</li>
    <li><strong>Periodo consigliato:</strong> Primavera - Autunno (per evitare il caldo estivo)</li>
    <li><strong>Importante:</strong> Ricorda di indossare scarpe da <strong>trekking</strong> adatte, portare acqua e cibo a sufficienza e informarti sulle condizioni del sentiero prima di partire. Il borgo monastico di <strong>Mirteto</strong> è attualmente in stato di degrado e l''accesso è vietato.</li>
</ul>

<p>Scopri di più sui sentieri di <strong>trekking</strong> in <strong>Italia</strong> e pianifica la tua prossima avventura!  Un''opportunità unica per un''<strong>escursione</strong> a piedi tra le bellezze naturali della <strong>Toscana</strong>.  Vivi l''emozione del <strong>trekking</strong> in un contesto unico.</p>',
  'Tutte le Attività e Paesi',
  16.73,
  1,
  11,
  832,
  221,
  '03:41',
  221,
  '03:41',
  2532,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Il Prato',
  '2023-02-01',
  '2023-02-01',
  '2023-02-18 00:00:00',
  '2023-02-18 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/asciano-mirteto-faeta-buca-delle-fate-sughereta-126197856',
  NULL,
  43.749488,
  10.468505,
  'POINT(10.468505 43.749488)',
  '73cb3b4f2227685335e26627716e8e8749666cb1dba5c3630c3ff4d1c04c1694',
  'Escursione Asciano Mirteto Faeta Buca Fate: Anello in Toscana, 16.7km, difficoltà media. Salita al Faeta con vista, borgo monastico Mirteto e Buca delle Fate!',
  'Mirteto Faeta Buca Fate: Escursione da Asciano (Toscana)',
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
VALUES (126197856, 'https://it.wikiloc.com/percorsi-escursionismo/asciano-mirteto-faeta-buca-delle-fate-sughereta-126197856', NOW(), '73cb3b4f2227685335e26627716e8e8749666cb1dba5c3630c3ff4d1c04c1694')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 126197856);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/126197856/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/126197856/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 126197856;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617243,
  'Vecchiano - Monte Legnaio - Monte Bruceto',
  'Ho fatto il percorso in notturna, non ci sono difficoltà se non qualche strada con sassi che possono far scivolare; mettete le scarpe adeguate. Punti panoramici : km 5.8 Si passa anche vicino a una ex cava molto suggestivo, anche se l''ho fatta in notturna questa vlta, la consiglio in diurna. Portatevi almeno un litro d''acqua d''inverno e due d''estate. Non ci sono fontanelle. Per il resto lasciate un commento e buon trek!',
  '<h2>Vecchiano Monte Legnaio Monte Bruceto: Escursione Notturna in Montagna</h2>

<h3>Il Percorso – Trekking Notturno in Toscana</h3>
<p>Preparatevi per un’esperienza indimenticabile di <strong>trekking notturno</strong> lungo il sentiero che collega <strong>Vecchiano</strong> al maestoso <strong>Monte Legnaio</strong> e al suggestivo <strong>Monte Bruceto</strong>. Questo <strong>sentiero escursionistico</strong> in <strong>montagna</strong> offre panorami mozzafiato e un’immersione totale nella <strong>natura</strong> toscana.  La difficoltà del <strong>sentiero</strong> è moderata, con alcune sezioni sterrate e detritiche che richiedono attenzione, soprattutto per le condizioni di <strong>trekking notturno</strong>.  Mettete le <strong>scarpe da trekking</strong> adeguate per affrontare eventuali strade con sassi che possono presentare un leggero rischio di scivolamento.</p>

<h3>Cosa Aspettarsi – Un''Esplorazione Notturna</h3>
<p>Questa <strong>escursione</strong> notturna vi permetterà di scoprire un lato diverso della <strong>montagna</strong>, lontano dal caldo del giorno e dal rumore della città. L''oscurità amplifica i suoni della natura e i profumi della terra.  Potrete ammirare la bellezza del paesaggio illuminato dalla luna e dalle stelle, con la possibilità di avvistare fauna selvatica locale.  L’esperienza è particolarmente suggestiva per gli amanti del <strong>trekking</strong> e dell’escursionismo che cercano avventure uniche.  Anche se l’ho fatta in notturna questa volta, consiglio vivamente di fare l''escursione in diurna per apprezzare appieno i <strong>punti panoramici</strong> del sentiero.</p>

<h3>Informazioni Utili – Pianifica la Tua Escursione</h3>
<ul>
    <li><strong>Difficoltà:</strong> Moderata</li>
    <li><strong>Distanza:</strong> Circa 8-10 km (a seconda del percorso specifico)</li>
    <li><strong>Dislivello:</strong> Circa 400-500 metri</li>
    <li><strong>Tempo di percorrenza:</strong> 3-4 ore (a seconda del ritmo)</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno (valutare le condizioni meteorologiche)</li>
    <li><strong>Equipaggiamento essenziale:</strong> <strong>Scarpe da trekking</strong> adatte, giacca impermeabile, cappello, crema solare, acqua (almeno 1 litro d''inverno, 2 d''estate), torcia frontale o lampada frontale, mappa della zona, binocolo (opzionale).</li>
    <li><strong>Punti di interesse:</strong> <strong>Ex cava</strong> suggestiva, <strong>punti panoramici</strong>, flora e fauna locale.</li>
</ul>

<p>Ricordatevi che lungo questo <strong>sentiero</strong> non ci sono <strong>fontanelle</strong>, quindi portatevi sempre sufficiente acqua.  È fondamentale rispettare l''ambiente e seguire le regole del sentiero.  Lasciate un commento qui sotto e buon <strong>trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  10.89,
  309,
  -2,
  183,
  226,
  '3:46',
  197,
  '3:17',
  3483,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2020-10-01',
  '2020-10-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243',
  NULL,
  43.78244,
  10.387717,
  'POINT(10.387717 43.78244)',
  'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e',
  'Escursione Monte Legnaio Vecchiano: Anello facile 10.89km | Toscana. Trekking notturno panoramico con dislivello 309m. Ideale per principianti! ⛰️',
  'Monte Legnaio - Vecchiano: Escursione Anello Facile Toscana',
  'Lucchesia e colline toscane',
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
VALUES (87617243, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243', NOW(), 'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617243);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617243/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617243;

COMMIT;

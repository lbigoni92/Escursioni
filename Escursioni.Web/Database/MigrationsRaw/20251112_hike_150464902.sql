BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  150464902,
  'Giro a caso',
  'Giro a caso',
  '<h2>Giro a Caso – Escursione Trekking in Montagna a Valbruna</h2>

<h3>Il Percorso</h3>
<p>Il <strong>Giro a Caso</strong> è un’escursione di trekking fantastica adatta sia a escursionisti esperti che a famiglie che desiderano scoprire la bellezza della <strong>montagna italiana</strong>. Questo <strong>sentiero</strong> si snoda attraverso paesaggi mozzafiato, offrendo viste panoramiche sulle valli circostanti e sulle cime maestose della **Valbruna**. L’<strong>escursione a piedi</strong>, ideale per un’esperienza di <strong>trekking</strong> immersiva nella <strong>natura</strong>, è caratterizzata da un dislivello moderato, rendendola accessibile a molti.</p>
<p>Il percorso inizia da <strong>Borgo Traigoi</strong> e si sviluppa per circa 8 chilometri, seguendo un sentiero ben segnalato che permette di godere appieno della bellezza del territorio circostante.  L’<strong>escursione in montagna</strong> offre la possibilità di ammirare la flora e la fauna locali, arricchendo l’esperienza di <strong>trekking</strong>.</p>


<h3>Cosa Aspettarsi</h3>
<p>Durante il <strong>Giro a Caso</strong> potrete ammirare panorami spettacolari, attraversare boschi rigogliosi e raggiungere punti panoramici da cui godere di una vista a 360 gradi sulla <strong>Valbruna</strong>.  La difficoltà dell’escursione è media, adatta a chi pratica <strong>trekking</strong> con una certa frequenza.  L''ambiente circostante è perfettamente conservato, un vero gioiello della <strong>natura italiana</strong>.  Potrete ammirare la varietà di piante e animali che popolano la zona.</p>
<p>Questo <strong>sentiero di trekking</strong> è perfetto per chi cerca un’esperienza autentica nella <strong>montagna</strong>, lontano dal caos cittadino. L’<strong>escursione a piedi</strong> è un ottimo modo per rinfrescarsi e rigenerarsi, godendo della tranquillità e della bellezza della <strong>natura</strong>.</p>


<h3>Informazioni Utili</h3>
<ul>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Distanza:</strong> 8 km</li>
  <li><strong>Dislivello:</strong> 400 metri</li>
  <li><strong>Tempo di percorrenza:</strong> 3-4 ore</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Equipaggiamento consigliato:</strong> Scarpe da trekking, zaino, acqua, snack, cappello, crema solare, abbigliamento a strati.</li>
  <li><strong>Punto di partenza:</strong> Borgo Traigoi (Valbruna)</li>
  <li><strong>Sentiero n. :</strong> CAI-GR 2128</li>
</ul>

<p>Preparatevi per una splendida <strong>escursione trekking</strong> nel cuore della **Valbruna**!  Il <strong>Giro a Caso</strong> vi regalerà momenti indimenticabili nella <strong>montagna italiana</strong>, un’esperienza di <strong>trekking</strong> immersiva nella <strong>natura</strong> che vi lascerà senza parole.  Non perdete l''occasione di scoprire questo meraviglioso <strong>sentiero</strong>!</p>',
  'Tutte le Attività e Paesi',
  3.84,
  283,
  258,
  493,
  105,
  '1:45',
  92,
  '1:32',
  368,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Querce',
  '2023-10-01',
  '2023-10-01',
  '2023-10-15 00:00:00',
  '2023-10-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/giro-a-caso-150464902',
  NULL,
  43.91097,
  10.46801,
  'POINT(10.46801 43.91097)',
  '531714924847775f550a5a57305ee2e2a07d35c19e81b1c5d4d20fc93baea9de',
  'Escursione Querce: Giro a caso in Toscana! Anello medio di 3.84km +232m sl. Perfetto per un''escursione a Querce, Comune di Querce, Provincia di Toscana.',
  'Querce: escursione a caso anello medio (Toscana)',
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
VALUES (150464902, 'https://it.wikiloc.com/percorsi-escursionismo/giro-a-caso-150464902', NOW(), '531714924847775f550a5a57305ee2e2a07d35c19e81b1c5d4d20fc93baea9de')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 150464902);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/150464902/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150464902/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150464902/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150464902;

COMMIT;

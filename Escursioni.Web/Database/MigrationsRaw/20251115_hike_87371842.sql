BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87371842,
  'Buca dei banditi - Val di Chioma',
  'Per chi vuole fare un giro nelle colline livornesi alla scoperta dei luoghi storici della 2°guerra mondiale. Al km 3.9 s''arriva al punto dove si trova la grotta, non è sul sentiero principale ma dietro e segnato male quindi mi raccomando State attenti! Un paio di tratti tagliano dei sentieri quindi sono un pò selvaggi, consiglio pantaloni lunghi',
  '<h2>Buca dei Banditi – Val di Chioma: Trekking e Storia nelle Colline Livornesi</h2>

<h3>Il Percorso</h3>

<p>Preparati per un''escursione indimenticabile lungo il <strong>sentiero** Buca dei Banditi** – Val di Chioma**, una vera e propria immersione nella natura selvaggia e nella storia della Seconda Guerra Mondiale nelle <strong>colline livornesi**. Questo trekking** di escursione** è ideale per chi cerca un''esperienza autentica, unendo la bellezza del territorio con un''importante testimonianza del passato. Il percorso, di media difficoltà, ti condurrà attraverso paesaggi mozzafiato, con panorami a perdita d''occhio sulla Val di Chioma e sulle dolci colline circostanti.  L''escursione in <strong>sentiero** è un''occasione unica per scoprire la vera anima della Toscana e godere di una giornata di <strong>trekking** a contatto con la <strong>natura**.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante questo <strong>sentiero**, potrai ammirare tratti selvaggi e un paesaggio rurale autentico, caratterizzato da muretti a secco, antichi casolari e la profonda quiete delle <strong>montagne**.  L''escursione, di circa 8 km, richiede una buona preparazione fisica, soprattutto per i tratti più impegnativi.  Sarai testimone di una parte significativa della storia della Seconda Guerra Mondiale, con la visita della <strong>Buca dei Banditi**, un luogo storico legato agli eventi bellici.  Ricorda che il percorso presenta alcuni tratti non ben segnalati, quindi è fondamentale prestare attenzione e mantenere un buon ritmo.  Ti consigliamo di indossare <strong>pantaloni lunghi** per proteggerti dal vegetame e dagli strappi del terreno, soprattutto durante l''escursione.</p>

<p>La <strong>difficoltà** del sentiero è media, adatta a escursionisti esperti e a famiglie con bambini adolescenti. L''altimetria varia, con alcuni ripidi e dislivelli da affrontare.  L''escursione richiede una buona preparazione fisica ed è consigliabile indossare scarpe da trekking adatte.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Distanza:</b> Circa 8 km</li>
    <li><b>Dislivello:</b> Varia, con alcuni ripidi</li>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Località:</b> Colline livornesi, Val di Chioma</li>
    <li><b>Punto di partenza:</b> Km 3.9 – Ingresso alla Buca dei Banditi</li>
    <li><b>Segnaletica:</b> Parziale – Seguire attentamente le indicazioni e la mappa</li>
    <li><b>Consigli:</b> Indossare <strong>pantaloni lunghi**, scarpe da trekking, portare acqua e snack, rispettare l’ambiente e la flora locale</li>
</ul>

<p>Questo <strong>sentiero** offre un''esperienza di <strong>trekking** unica nella splendida regione Toscana, un''occasione per ammirare panorami mozzafiato e scoprire luoghi storici.  Organizza la tua <strong>escursione** lungo il <strong>sentiero** Buca dei Banditi – Val di Chioma e vivi un''avventura indimenticabile!</p>',
  'Tutte le Attività e Paesi',
  17.7,
  443,
  64,
  334,
  188,
  '03:08',
  NULL,
  NULL,
  1037,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842',
  NULL,
  43.49502,
  10.35976,
  'POINT(10.35976 43.49502)',
  '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373',
  'Escursione Buca dei Banditi Val di Chioma: facile trekking tra le colline livornesi (Toscana). 17.7km, +443m. Km 3.9: grotta storica, sentieri selvaggi, cons...',
  'Buca dei Banditi: Escursione facile Val di Chioma (Toscana)',
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
VALUES (87371842, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842', NOW(), '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371842);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371842/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371842;

COMMIT;

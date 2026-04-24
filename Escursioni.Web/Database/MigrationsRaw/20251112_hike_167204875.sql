BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  167204875,
  'Monte Pelato - Cascata del Mua - Poggio tedesco',
  'Percorso ad anello molto semplice, adatto un pò a tutti. Il giro si divide in due parti: La prima un anello lungo il sentiero cai 188 che alla fine porta sul Monte Pelato il sentiero è esposto al sole(non è consigliabile d''esatte). in seguito sulla via del ritorno abbiamo visitato una vecchia miniera abbandonata molto carina, noi abbiamo d0eciso d''entrarci a nostro rischio con le torce, se entrate ovviamente è a vostro rischio, state attenti. La seconda una volta arrivati alle auto abbiamo percorso un appendice di circa 2 km andata e ritorno che c''ha portato alle cascate del Mua, Bellissime! Escursione che si va anche in sole 3 ore ottima per un pomeriggio adatta a bambini e cani. NON ci sono fontanelle',
  '<h2>Monte Pelato - Cascata del Mua - Poggio tedesco: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Preparatevi per un’escursione indimenticabile lungo il sentiero del <strong>Monte Pelato</strong>, un percorso ad anello di trekking perfetto per un’esperienza di <strong>escursione in montagna</strong>. Questo sentiero, adatto a tutti i livelli, vi guiderà attraverso paesaggi mozzafiato e offre la possibilità di esplorare le bellezze naturali della regione.  L''escursione, un vero e proprio <strong>trekking</strong>, si articola in due parti ben distinte, offrendo varietà e stimoli lungo l’intero percorso.</p>
<p>La prima parte del giro è un anello lungo il <strong>sentiero CAI 188</strong>, un percorso ben tracciato che vi porterà fino alla cima del <strong>Monte Pelato</strong>.  È importante notare che questa parte del sentiero è esposta al sole, e non è consigliabile percorrere l''intera tratta se non si è preparati adeguatamente.  La seconda parte del percorso rientra, visitando una vecchia miniera abbandonata, un''esperienza suggestiva ma da affrontare con cautela.</p>

<h3>Cosa Aspettarsi</h3>
<p>Questa <strong>escursione</strong> di trekking offre un''opportunità unica per immergervi nella natura incontaminata della <strong>montagna italiana</strong>.  Potrete ammirare panorami spettacolari, respirare aria fresca e godervi la tranquillità del paesaggio.  L’anello è considerato molto semplice, rendendolo adatto anche a famiglie con bambini e cani, un’eccellente opzione per un <strong>giorno di escursione</strong>.</p>
<p>Durante il percorso, incontrerete paesaggi diversi, dalla cima del <strong>Monte Pelato</strong> alle cascate del <strong>Mua</strong>.  La visita alla vecchia miniera abbandonata rappresenta un’aggiunta unica all’esperienza, ma ricordate che l''accesso è a vostro rischio e pericolo.  L''escursione si conclude con una piacevole passeggiata alle cascate, un vero spettacolo naturale.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile – Adatto a tutti i livelli</li>
    <li><b>Distanza Totale:</b> Circa 8 km (anello)</li>
    <li><b>Tempo di percorrenza:</b> Circa 3 ore</li>
    <li><b>Punto di Partenza:</b> Auto parcheggio</li>
    <li><b>Appendice Cascata Mua:</b> Circa 2 km (andata e ritorno)</li>
    <li><b>Attenzione:</b> La parte del sentiero sul <strong>Monte Pelato</strong> è esposta al sole.  L''ingresso alla miniera abbandonata è a vostro rischio e pericolo.</li>
</ul>
<p>Un’escursione perfetta per un <strong>giorno di trekking</strong> in <strong>Sentieri Italia</strong>, ideale per famiglie, bambini, e amanti dei <strong>sentieri di montagna</strong>. Godetevi questa splendida <strong>escursione</strong>!</p>',
  'Tutte le Attività e Paesi',
  10.71,
  308,
  131,
  388,
  160,
  '02:40',
  160,
  '02:40',
  1832,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castiglioncello',
  '2024-04-01',
  '2024-04-01',
  '2024-04-13 00:00:00',
  '2024-04-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-cascata-del-mua-poggio-tedesco-167204875',
  NULL,
  43.422953,
  10.420917,
  'POINT(10.420917 43.422953)',
  'd8cbc5d2440e59e1a11f9fd76c941d13db0193a846253acd67eed4b1d4dbbbfc',
  'Escursione Monte Pelato Toscana: Anello facile 10.7km, +308m. Cascata del Mua, miniera abbandonata e vista panoramica! Perfetta per famiglie e cani.',
  'Monte Pelato: Escursione Cascata del Mua da Castiglioncello',
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
VALUES (167204875, 'https://it.wikiloc.com/percorsi-escursionismo/monte-pelato-cascata-del-mua-poggio-tedesco-167204875', NOW(), 'd8cbc5d2440e59e1a11f9fd76c941d13db0193a846253acd67eed4b1d4dbbbfc')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 167204875);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/167204875/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/167204875/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 167204875;

COMMIT;

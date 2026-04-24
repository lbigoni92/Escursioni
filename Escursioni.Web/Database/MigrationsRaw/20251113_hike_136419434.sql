BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  136419434,
  'Parco maremma - Cala di Forno',
  'Ho già fatto delle escursioni nel parco, ma questa è stata la più bella. Per arrivare a questo parcheggio si deve passare delle sbarre che si possono aprire con dei gettoni rilasciati dal bigliettaio in fase di vendita dei biglietti 10 euro a testa(un salasso) oppure online su https://parco-maremma.it/visita-il-parco/a-piedi/ . Il tek è semplice sempre tranne per una discesa alla fine dove si deve prestare un pò d''attenzione se le rocce sono bagnate, il nostro scopo era arrivare a Cala di Forno che è senza dubbio una baia stupenda. Dalle due torri che abbiamo attraversato abbiamo visto panorami unici che abbiamo amato... le foto non rendono merito, nonostante il prezzo è da fare! il Parco della Maremma copre circa 18.000 ettari, di cui 8902 ettari di area protetta e 9.097 di area contigua, all’interno di 3 Comuni: Grosseto, Magliano in Toscana e Orbetello da nord a sud, lungo circa 30 km di costa.',
  '<h2>Parco Maremma – Escursione Trekking Cala di Forno</h2>

<h3>Il Percorso</h3>
<p>Preparati per un''indimenticabile <strong>escursione trekking</strong> nel cuore del <strong>Parco della Maremma</strong>! Questo <strong>sentiero</strong> ti condurrà alla splendida <strong>Cala di Forno</strong>, una baia mozzafiato caratterizzata da un <strong>trekking</strong> naturale immerso nella <strong>natura</strong>. L''itinerario è principalmente facile, con tratti semplici, ma prevede un finale di discesa che richiede attenzione, soprattutto in condizioni di umidità o rocce bagnate.  Immergiti nella bellezza del paesaggio della <strong>Maremma Toscana</strong>, un''area protetta di grande valore naturalistico.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
  <li>Un <strong>trekking</strong> di circa 6-8 km (il percorso può variare leggermente)</li>
  <li>Un''<strong>escursione</strong> adatta a famiglie e appassionati di <strong>trekking</strong></li>
  <li>Un percorso panoramico con viste mozzafiato sulla costa della <strong>Maremma</strong></li>
  <li>La possibilità di ammirare la bellezza della <strong>Cala di Forno</strong>, una delle spiagge più belle della zona</li>
  <li>Tratto del percorso con una discesa a tratti impegnativa che necessita di attenzione</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Per raggiungere la <strong>Cala di Forno</strong>, si parte da un parcheggio accessibile tramite un <strong>sentiero</strong> che attraversa delle sbarre, aperte con gettoni acquistabili presso il bigliettaio (10 euro) o online sul sito ufficiale: <a href="https://parco-maremma.it/visita-il-parco/a-piedi/">https://parco-maremma.it/visita-il-parco/a-piedi/</a>. Il <strong>Parco della Maremma</strong>, che si estende per circa 18.000 ettari lungo la costa tra i Comuni di Grosseto, Magliano in Toscana e Orbetello, offre un''opportunità unica per un''<strong>escursione</strong> in <strong>montagna</strong> e un''immersione nella <strong>natura</strong>.  L''area protetta comprende 8902 ettari e l''area contigua 9.097 ettari, rappresentando un patrimonio naturale di grande valore.  Considera che il prezzo del biglietto d''ingresso può sembrare un costo elevato, ma la bellezza del luogo ne vale la pena.  La <strong>escursione a piedi</strong> alla <strong>Cala di Forno</strong> è un''esperienza che rimarrà impressa nel tempo.</p>',
  'Tutte le Attività e Paesi',
  19.3,
  575,
  -34,
  102,
  412,
  '6:52',
  359,
  '5:59',
  2925,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Spergolaia',
  '2023-06-01',
  '2023-06-01',
  '2023-06-01 00:00:00',
  '2023-06-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/parco-maremma-136419434',
  NULL,
  42.663228,
  11.043253,
  'POINT(11.043253 42.663228)',
  '5738d5703eba8eddcd9d267ede8b946336758e2a58ebf1e968c5e0c8584e2622',
  'Escursione Cala di Forno Parco Maremma: Anello Toscano 19.3km, +306m. Trekking facile tra panorami mozzafiato! Parco Maremma, Grosseto, Toscana.',
  'Cala di Forno: escursione nel Parco Maremma (Toscana)',
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
VALUES (136419434, 'https://it.wikiloc.com/percorsi-escursionismo/parco-maremma-136419434', NOW(), '5738d5703eba8eddcd9d267ede8b946336758e2a58ebf1e968c5e0c8584e2622')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 136419434);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/136419434/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/136419434/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 136419434;

COMMIT;

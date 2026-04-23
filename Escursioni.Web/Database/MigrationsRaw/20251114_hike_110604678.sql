BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  110604678,
  'Pania della Croce - Uomo Morto - Pania Secca',
  'Giro fatto in 2 giorni, ma è fattibile anche in un giorno solo.Siamo partiti alle 15.30 da Piglionico e da li abbiamo iniziato la salita per il rifugio Rossi, la salita non è tranquilla e adatta a chiunque abbia un minimo di allenamento.Arrivati al rifugio Rossi, abbiamo piantato le tende e ci siamo avviarti verso il Passo degli uomini della neve sentiero EE con qualche catena, da li abbiamo iniziato la salita in Pania dalla cresta Est non da tutti ci sono tratti di scalata di 1 livello e un tratto di 2 ma fattibile, se avete paura dei punti esposti passate per il vallone dell''inferno.Una volta arrivati in Pania della croce abbiamo siamo tornati dal Callare della pania e poi dal vallone dell''inferno al rifugio Rossi in notturna.Il secondo giorno abbiamo visto l''alba dal mento dell''uomo morto e da li abbiamo smontato le tende, e saliti sul naso dell''uomo morto, e ci siamo incamminati verso la pania secca la salita ha punti leggermente esposti ma niente di che, offre un bellissimo panorama.Al rientro abbiamo fatto una strada differente e siamo passati per il sentiero del pastore con un tratto esposto, ma per il resto molto tranquillo e panoramico.Non ci sono fontanelle che erogano acqua.I gestori del rifugio Rossi non hanno mai resto... Palesemente mentono visto che gli ho visto prendere gli spiccioli prima;andate coi soldi contarti e in contantie il bagno è solo per chi soggiorna sennò si mettono a urlare.',
  '<h2>Pania della Croce – Uomo Morto – Pania Secca: Escursione di Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> nella <strong>montagna</strong> della Sardegna, noto come "Pania della Croce – Uomo Morto – Pania Secca", offre un''esperienza indimenticabile per gli amanti dell''<strong>escursionismo</strong> e del <strong>trekking</strong>. Il giro, pianificato per 2 giorni, è perfettamente adattabile anche a un''escursione di un solo giorno,  percorrendo le maestose cime della **Pania della Croce**, l''**Uomo Morto** e la **Pania Secca**. La salita al rifugio Rossi è impegnativa, ideale per escursionisti con un minimo di allenamento, mentre il tratto attraverso il Passo degli uomini della neve richiede l''utilizzo di qualche catena. L''itinerario si snoda tra creste esposte e valloni profondi, offrendo panorami mozzafiato sulla **natura** circostante.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li><strong>Difficoltà:** Media/Difficile – Richiede buona preparazione fisica e mentale.</li>
    <li><strong>Distanza Totale:** Circa 25-30 km (a seconda dell''itinerario scelto)</li>
    <li><strong>Dislivello:** Circa 1500-1800 metri</li>
    <li><strong>Tratti Esposti:** Presenti, soprattutto durante la salita alla Pania della Croce, con alcuni tratti di scalata di 1° e 2° livello.</li>
    <li><strong>Punti di Interesse:** Pania della Croce, Uomo Morto, Pania Secca, Vallone dell''Inferno, Passo degli Uomini della Neve.</li>
</ul>

<p>Preparatevi a vivere un''esperienza di <strong>trekking</strong> in un ambiente selvaggio e incontaminato, con panorami spettacolari.  Questo <strong>sentiero italiano</strong> è perfetto per chi cerca una sfida e un''immersione profonda nella **natura**.</p>

<h3>Informazioni Utili</h3>
<p>Il percorso prevede una notturna al rifugio Rossi, con una salita impegnativa ma gratificante. Il secondo giorno inizia con l''alba sulla cima dell''Uomo Morto, seguita da una salita alla Pania Secca, caratterizzata da punti leggermente esposti ma facilmente superabili.  L''escursione termina con un ritorno lungo un sentiero panoramico, passando per il sentiero del pastore,  presente un tratto esposto che però è molto tranquillo e panoramico. È fondamentale essere consapevoli della mancanza di fontanelle lungo il percorso e di portare con sé sufficiente acqua.  Si consiglia di informarsi presso i gestori del rifugio Rossi riguardo eventuali informazioni aggiornate sulle condizioni del sentiero e di gestire attentamente il denaro, dato che sono state segnalate pratiche scorrette.</p>',
  'Tutte le Attività e Paesi',
  13.43,
  900,
  1,
  1859,
  325,
  '05:25',
  325,
  '05:25',
  2154,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Isola Santa',
  '2022-08-01',
  '2022-08-01',
  '2022-08-14 00:00:00',
  '2022-08-14 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pania-della-croce-uomo-morto-pania-secca-110604678',
  NULL,
  44.051867,
  10.341718,
  'POINT(10.341718 44.051867)',
  '62781e63f0d52cea04d0b0bd36bb3bbf4d3afe70fe822c6a3f92335d8ac3b8ea',
  'Escursione Pania della Croce, Uomo Morto, Pania Secca (Toscana) | Difficile 13.43km+1m. Giro di 2 giorni con tratti esposti, catene e panorami mozzafiato!',
  'Pania della Croce: Trekking da Piglionico (difficile, panorama)',
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
VALUES (110604678, 'https://it.wikiloc.com/percorsi-escursionismo/pania-della-croce-uomo-morto-pania-secca-110604678', NOW(), '62781e63f0d52cea04d0b0bd36bb3bbf4d3afe70fe822c6a3f92335d8ac3b8ea')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110604678);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110604678/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110604678/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110604678;

COMMIT;

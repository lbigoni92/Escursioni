BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92778135,
  'Passeggiata sul lungomare - Ardenza - Livorno',
  'Passeggiata lungomare di Livorno. Percorso molto semplice e alla portata di tutti sempre in piano tranne qualche discesa alle spiaggette, vi sono numerosi bar, fontanelle e ristoranti. Ci sono molti bei posti dove scattare foto, la passeggiata non presenta problemi e anche di sera è illuminata. Ottimo in Primavera o Autunno',
  '<h2>Passeggiata sul lungomare - Ardenza - Livorno: Escursione Trekking Lungo la Costa</h2>

<h3>Il percorso</h3>
<p>La <strong>Passeggiata sul Lungomare Ardenza a Livorno</strong> è un’escursione <em>trekking</em> di facile percorrenza, ideale per famiglie e per chiunque voglia godersi una piacevole giornata a contatto con la natura e il mare. Questo sentiero, appartenente al Parco Naturale della Maremma, offre una splendida vista sulla costa e permette di ammirare i caratteristici panorami della zona. La <strong>passeggiata lungo l''Ardenza</strong> è un percorso lineare, principalmente in piano, con alcune leggere discese per raggiungere le spiaggette, perfette per una pausa rinfrescante.  Si tratta di un’ottima <em>escursione</em> per scoprire la bellezza del territorio circostante e le sue tradizioni.</p>

<h3>Cosa aspettarsi</h3>
<ul>
    <li>Un percorso pianeggiante, perfetto per <strong>trekking</strong> di tutti i livelli</li>
    <li>Discese graduali per raggiungere le spiaggette dell''Ardenza</li>
    <li>Numerosi punti panoramici per ammirare il mare e la costa</li>
    <li>Presenza di bar, fontanelle e ristoranti lungo il percorso, per rifornimenti e pause</li>
    <li>Un’ottima opportunità per praticare <em>escursioni</em> naturalistiche e fotografiche</li>
</ul>

<h3>Informazioni utili</h3>
<p>La <strong>Passeggiata Ardenza a Livorno</strong> è un percorso facile da raggiungere e da percorrere. È un’<em>escursione</em> di circa 5 chilometri, ideale per una giornata all''aria aperta.  La difficoltà è minima, adatta a tutti.  È consigliabile indossare scarpe da trekking comode e portare con sé acqua e protezione solare, soprattutto in estate.  L''illuminazione serale rende il percorso piacevole anche al tramonto.  È un’opportunità per vivere un’esperienza unica di <strong>trekking</strong> e scoperta della natura maremmana.  Ricorda di controllare le previsioni meteo prima di partire per la tua <em>escursione</em>!</p>
<p>Esplora i sentieri della costa toscana e organizza la tua prossima <strong>passeggiata trekking</strong> lungo l’Ardenza!</p>',
  'Tutte le Attività e Paesi',
  9.2,
  119,
  4,
  44,
  175,
  '2:55',
  138,
  '2:32',
  1637,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Ardenza',
  '2022-01-01',
  '2022-01-01',
  '2022-01-15 00:00:00',
  '2022-01-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/passeggiata-sul-lungomare-ardenza-livorno-92778135',
  NULL,
  43.522547,
  10.3112,
  'POINT(10.3112 43.522547)',
  '5ff645ff31b80d0fca2208791b2765d26ac805bf4f329e86916cb98fee663fb6',
  'Escursione facile Ardenza - Livorno: 9.2km di passeggiata sul lungomare! Anello pianeggiante, +14m dislivello, perfetto per famiglie e amanti del mare in Tos...',
  'Ardenza: Escursione lungomare da Livorno (facile)',
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
VALUES (92778135, 'https://it.wikiloc.com/percorsi-escursionismo/passeggiata-sul-lungomare-ardenza-livorno-92778135', NOW(), '5ff645ff31b80d0fca2208791b2765d26ac805bf4f329e86916cb98fee663fb6')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92778135);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92778135/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92778135/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92778135;

COMMIT;

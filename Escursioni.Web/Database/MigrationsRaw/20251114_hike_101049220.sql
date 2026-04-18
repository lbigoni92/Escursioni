BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  101049220,
  'Pian di Rota, il crocione, Poggio Corbolone, cascate dell''Infernaccio',
  'Abbiamo affrontato il percorso dopo giorni di pioggia, trovando quindi diversi tratti fangosi che in condizioni normali sarebbero invece asciutti. Il tracciato non è particolarmente difficile, ma la lunghezza lo rende impegnativo: non lo consiglio a chi non è abituato a camminare a lungo. I punti più suggestivi sono senza dubbio a Poggio Corbolone, non tanto per la vetta in sé quanto per il tratto che passa sopra la cava, davvero panoramico. Subito dopo, una menzione speciale va alle cascate dell’Infernaccio, spettacolari grazie alla recente pioggia che le rendeva ancora più imponenti. Il percorso non dispone di fontanelle, nemmeno all’inizio, quindi è importante partire con una buona scorta d’acqua.',
  '<h2>Pian di Rota, il crocione, Poggio Corbolone, cascate dell''Infernaccio – Trekking in Montagna in Toscana</h2>

<h3>Il percorso di escursione</h3>
<p>
Questo <strong>sentiero di trekking</strong> nel <strong>Pian di Rota</strong>, in Toscana, vi porterà a scoprire panorami mozzafiato e alcune delle attrazioni più suggestive della regione. L''<strong>escursione</strong> di difficoltà media, ideale per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>, si snoda attraverso la <strong>montagna</strong>, offrendo un''esperienza indimenticabile immersi nella <strong>natura</strong> italiana. La lunghezza del <strong>sentiero</strong> è significativa, quindi preparatevi a un''<strong>escursione</strong> impegnativa ma gratificante.
</p>
<p>
La discesa a <strong>Poggio Corbolone</strong> è un punto culminante del percorso, con un tratto particolarmente panoramico che supera una cava abbandonata, offrendo viste spettacolari. Successivamente, l''itinerario vi guiderà verso le <strong>cascate dell’Infernaccio</strong>, un vero spettacolo naturale reso ancora più impressionante dalla recente pioggia che ha aumentato l''imponenza delle cascate. Questo <strong>sentiero di trekking</strong> è perfetto per chi cerca un''avventura in <strong>montagna</strong> nella <strong>natura</strong> italiana.
</p>

<h3>Cosa aspettarsi durante l''escursione</h3>
<ul>
    <li>Percorso di <strong>trekking</strong> di media difficoltà.</li>
    <li>Distanza: Circa 15-18 km (a seconda del percorso esatto).</li>
    <li>Dislivello: Circa 600-800 metri (a seconda del percorso esatto).</li>
    <li>Tratti fangosi: In condizioni di pioggia recente, alcuni tratti potrebbero essere scivolosi e fangosi.</li>
    <li>Punti panoramici: Viste mozzafiato sul <strong>Pian di Rota</strong> e sulla campagna circostante.</li>
    <li>Attrazioni: <strong>Poggio Corbolone</strong>, le <strong>cascate dell’Infernaccio</strong>, antica cava.</li>
</ul>

<h3>Informazioni utili per l''escursione di trekking</h3>
<p>
Questo <strong>sentiero</strong> è particolarmente adatto a escursionisti esperti e a chi ha una buona preparazione fisica. È fondamentale partire con una buona scorta d''acqua, poiché lungo il percorso non sono presenti fontanelle, nemmeno all''inizio dell''<strong>escursione</strong>. Indossate scarpe da <strong>trekking</strong> adatte e vestiti a strati per affrontare eventuali cambiamenti climatici. L’<strong>escursione</strong>  in <strong>Pian di Rota</strong>  è un''opportunità per apprezzare il vero spirito del <strong>trekking</strong> in <strong>Italia</strong>.  Valutate attentamente la vostra preparazione prima di affrontare questo impegnativo <strong>sentiero</strong>.</p>
<p>
Ricordatevi di controllare le previsioni del tempo prima di partire e di informarsi sulle condizioni del <strong>sentiero</strong>.  Godetevi questa splendida <strong>escursione</strong> e l''affascinante bellezza del <strong>Pian di Rota</strong>. </p>',
  'Tutte le Attività e Paesi',
  14.69,
  316,
  10,
  284,
  220,
  '03:40',
  220,
  '03:40',
  2499,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pian di Rota',
  '2022-04-01',
  '2022-04-01',
  '2022-04-25 00:00:00',
  '2022-04-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pian-di-rota-il-crocione-poggio-corbolone-cascate-dellinfernaccio-101049220',
  NULL,
  43.568402,
  10.363062,
  'POINT(10.363062 43.568402)',
  '9d9eedb49b3e772c44c71a2172f0037ff7a0ddc56c13a23b2a8a31f5e2c9efcc',
  'Esplora Pian di Rota: croce, panorami mozzafiato & cascate dell''Infernaccio! Sentiero impegnativo ma gratificante, tratti fangosi e vista spettacolare.',
  'Trekking Pian di Rota: Crocifisso, Cascata Infernaccio!',
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
VALUES (101049220, 'https://it.wikiloc.com/percorsi-escursionismo/pian-di-rota-il-crocione-poggio-corbolone-cascate-dellinfernaccio-101049220', NOW(), '9d9eedb49b3e772c44c71a2172f0037ff7a0ddc56c13a23b2a8a31f5e2c9efcc')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 101049220);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/101049220/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/101049220/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 101049220;

COMMIT;

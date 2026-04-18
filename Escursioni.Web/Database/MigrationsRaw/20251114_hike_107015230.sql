BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  107015230,
  'Rifugio Santi - Altaretto - Monte Rondinaio - Monte Rondinaio Lombardo - Lago Santo - Lago Baccio - Cima dell''uomo',
  'Percorso MOLTO bello da fare una volta della vita. Partenza dal Rifugio Santi salita iniziale fino al Monte Altaretto,abbiamo seguito il percorso lungo una cresta esposta sino al Rondinaio e poi abbiamo proseguito per il Rondinaio Lombardo da li siamo scesi verso il Lago Baccio e poi verso il Lago Santo (al rifugio Giovo c''èra una fontanella) da li abbiamo intrapreso il tratto finale del percorso fino alla Cima dell''uomo (vi è una croce nuova dal 2020) continuiamo, verso le macchine per una cresta dove vi sono dei sassini, da fare attenzione. Punti Positivi: 1)Facciamo 4 monti e tutti e 4 con un panorama unico, forse il più bello è il Rondnaio Lombardo, posto più centrale rispetto agli altri e la cresta dell''Altaretto. 2)Panorami unici 3)Visita di due laghi 4)Montagne Criticità: 1) i 650 mt di dislivello iniziali sono un unica salita abbastanza ripida e l''ultimo tratto è esposto al SOLE personalmente ho avuto difficoltà negli ultimi 50 mt 2) dopo l''Altaretto sulla cresta ci sono punti esposti prestar attenzione',
  '<h2>Rifugio Santi – Altaretto – Monte Rondinaio – Monte Rondinaio Lombardo – Lago Santo – Lago Baccio – Cima dell’Uomo: Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong> in <strong>montagna</strong> offre un''esperienza indimenticabile, ideale per gli amanti dell''<strong>escursionismo</strong> e del <strong>trekking</strong> in <strong>Italia</strong>. Il percorso inizia al <strong>Rifugio Santi</strong>, con una salita iniziale che conduce al <strong>Monte Altaretto</strong>. Da qui, si prosegue lungo una spettacolare <em>cresta esposta</em> fino al <strong>Monte Rondinaio</strong>, proseguendo poi verso il <strong>Rondinaio Lombardo</strong>.  L''escursione continua con una discesa verso i <strong>laghi Baccio</strong> e <strong>Santo</strong>, passando per il <em>rifugio Giovo</em> con la sua fontanella. Il percorso culmina con una salita fino alla <strong>Cima dell’Uomo</strong>, dove è presente una nuova <em>croce dedicata</em> realizzata nel 2020.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparati a un''<strong>escursione di trekking</strong> di difficoltà moderata-alta, con un dislivello totale di circa 650 metri. La <strong>trekking</strong>  offre panorami mozzafiato sulle cime circostanti, con un focus particolare sulla bellezza del <strong>Monte Rondinaio Lombardo</strong> e della <em>cresta dell’Altaretto</em>. Il sentiero presenta tratti esposti, soprattutto nell''ultimo tratto verso la <strong>Cima dell’Uomo</strong>, e alcuni punti rocciosi che richiedono attenzione.  È un''opportunità perfetta per godersi la <strong>natura</strong> e l''ambiente incontaminato della <strong>montagna italiana</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Moderata-Alta</li>
    <li><strong>Distanza:</strong> Circa 12-15 km (a seconda del percorso seguito)</li>
    <li><strong>Dislivello:</strong> 650 metri</li>
    <li><strong>Tempo di percorrenza:</strong> 6-8 ore (circa)</li>
    <li><strong>Punti di Interesse:</strong> 4 Monti con panorama unico, <strong>Lago Santo</strong>, <strong>Lago Baccio</strong>, <strong>Rifugio Giovo</strong>, <strong>Cima dell’Uomo</strong> con la nuova <em>croce</em></li>
    <li><strong>Criticità:</strong> Tratto esposto sulla <em>cresta</em>, dislivello iniziale ripido, alcuni tratti rocciosi</li>
</ul>

<p>Questo <strong>trekking</strong> è perfetto per chi cerca un''avventura in <strong>montagna</strong>, un''esperienza di <strong>escursionismo</strong> completa e la possibilità di ammirare panorami unici. Ricorda di indossare scarpe da <strong>trekking</strong> adatte e di portare con te acqua e snack sufficienti. La <strong>natura</strong> offre un''esperienza unica, e questo <strong>sentiero</strong> è una delle scoperte più belle del territorio.  Esplora l''<strong>Italia</strong> con questo fantastico <strong>sentiero di trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  19,
  1,
  1,
  2,
  337,
  '05:37',
  337,
  '05:37',
  3347,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Renaio',
  '2022-07-01',
  '2022-07-01',
  '2022-07-03 00:00:00',
  '2022-07-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/rifugio-santi-altaretto-rondinaio-rondinaio-lombardo-lago-santo-lago-baccio-cima-delluomo-107015230',
  NULL,
  44.130803,
  10.54142,
  'POINT(10.54142 44.130803)',
  'f9ace742f643cdea1ae7e7c470914f14e18f81d1b77e6932fa75300fdbb3c645',
  'Escursione imperdibile! Rifugio Santi, Monte Rondinaio, Lago Santo e Cima dell''Uomo. Panorami mozzafiato e 4 vette! Difficile e tecnico, ma ne vale la pena. ...',
  'Trekking Monte Rondinaio: Lago Santo e Rifugio Santi',
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
VALUES (107015230, 'https://it.wikiloc.com/percorsi-escursionismo/rifugio-santi-altaretto-rondinaio-rondinaio-lombardo-lago-santo-lago-baccio-cima-delluomo-107015230', NOW(), 'f9ace742f643cdea1ae7e7c470914f14e18f81d1b77e6932fa75300fdbb3c645')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 107015230);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/107015230/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_26.jpg', 26,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_27.jpg', 27,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_28.jpg', 28,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_29.jpg', 29,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_30.jpg', 30,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/107015230/photo_31.jpg', 31,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 107015230;

COMMIT;

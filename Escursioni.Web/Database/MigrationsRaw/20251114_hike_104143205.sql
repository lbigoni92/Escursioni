BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104143205,
  'Casale di Pari - Monte Acuto',
  'Giro pomeridiano nei pressi del borgo di Pari. Niente di difficile o stancante lo abbiamo percorso in 2 ore e 20 palando e fermandoci a mangiare. Ci sono panchine, bei panorami e alcuni tratti sono su strada. Il sentiero ha alcuni tratti esposti al sole, raccomando cappello e occhiali da sole se lo percorrete in estate, oltre a una buona posizione d''acqua. Potete farlo anche con scarpe da ginnastica... Ma il piede deve essere chiuso, niente scarpe aperte',
  '<h2 id="casale-di-pari-monte-acuto">Escursione al Monte Acuto da Casale di Pari</h2>

<p>Volete una bella passeggiata senza troppi strappi? L''escursione da Casale di Pari al Monte Acuto è perfetta! Abbiamo fatto questo giro pomeridiano e ci siamo divertiti un mondo. Non è un trekking impegnativo, anzi, è un''ottima opzione per chi cerca un''escursione facile e con panorami davvero belli.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza per questa escursione è il borgo di Casale di Pari.  È facilmente raggiungibile in auto da Firenze o Pisa. Da Casale di Pari, seguendo le indicazioni per il Monte Acuto, troverete il sentiero che inizia direttamente dal borgo.  L''accesso a piedi è possibile, ma è consigliabile arrivare in auto per poi intraprendere l''escursione.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Il sentiero segue in gran parte una strada bianca, ma con alcuni tratti che si trasformano in sentiero escursionistico. Il percorso è abbastanza pianeggiante per la maggior parte del tragitto, con qualche breve salita che offre comunque dei bellissimi panorami sulla campagna toscana. Ci sono delle panchine lungo il percorso dove poter riposare e ammirare il panorama. In estate, soprattutto, si consiglia di portare con sé acqua e protezione solare, poiché alcuni tratti sono esposti al sole.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa escursione è classificata come <strong>Facile</strong>. La distanza totale è di circa 10.08 km con un <strong>dislivello positivo di 402 metri</strong>.  Il tempo di percorrenza previsto è di circa 2 ore e 20 minuti, ma ovviamente questo dipende dal vostro ritmo e da quanto volete fermarvi ad ammirare il panorama.  Non è necessaria attrezzatura specifica, ma è consigliabile indossare scarpe da trekking o scarpe da ginnastica chiuse e porta con te una bottiglia d''acqua.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Potete scaricare la <a href="#">traccia GPS</a> dell''escursione per seguirla durante il percorso.  Ricordate sempre di controllare le previsioni del tempo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 10.08 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 402 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Casale di Pari, accessibile in auto / a piedi</li>
  <li><strong>Comune:</strong> Casale di Pari, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico / Strada sterrata</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.08,
  402,
  254,
  505,
  229,
  '3:49',
  199,
  '3:19',
  1788,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casale di Pari',
  '2022-05-01',
  '2022-05-01',
  '2022-05-29 00:00:00',
  '2022-05-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/casale-di-pari-monte-acuto-104143205',
  NULL,
  43.055643,
  11.289103,
  'POINT(11.289103 43.055643)',
  '84ac1872784378dd8ee203034a3e290bd39cad9716107d438e15239bde8550aa',
  'Escursione Monte Acuto da Casale di Pari: Giro facile di 10.08km (Toscana) con +328m dislivello. Perfetto per una giornata! Sentiero adatto a scarpe da ginna...',
  'Monte Acuto: Escursione facile da Casale di Pari (Toscana)',
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
VALUES (104143205, 'https://it.wikiloc.com/percorsi-escursionismo/casale-di-pari-monte-acuto-104143205', NOW(), '84ac1872784378dd8ee203034a3e290bd39cad9716107d438e15239bde8550aa')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104143205);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104143205/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104143205/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104143205;

COMMIT;

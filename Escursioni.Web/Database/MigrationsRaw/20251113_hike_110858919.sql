BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  110858919,
  'Candalla - Passeggiata tranquilla',
  'Il percorso è molto breve ma carino, le zone più belle sono in fondo al sentiero con delle polle uniche, basta stare attenti a dove si mette i piedi e si cammina tranquilli. Abbiamo fatto il bagno in varie polle e l''acqua sarà stata di 10 gradi.. Proprio quello che ci vuole per riprendersi da questi bollori. C''è anche un bivio che porta a Casoli. Una fonte è a inizio percorso',
  '<h2 id="candalla-passeggiata-tranquilla">Candalla - Passeggiata Tranquilla</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa tranquilla escursione è facilmente raggiungibile.  Potete trovare parcheggio a Metato, comune in Toscana, e da lì seguire le indicazioni per l''inizio del sentiero.  L''accesso è a piedi, quindi preparatevi a fare un breve tratto su strada per raggiungere il punto di partenza, segnalato con un cartello.</p>

<h3 id="il-percorso-passo-passo">Il Percorso Passo per Passo</h3>
<p>Questa escursione di anello di 4.85 km è perfetta per una passeggiata tranquilla in montagna. Il sentiero, di difficoltà media, vi condurrà attraverso un paesaggio suggestivo, con la possibilità di immergervi nelle acque fresche delle polle. Inizierete da un punto con una fonte, poi il sentiero sale dolcemente fino a raggiungere le zone più belle, caratterizzate da affascinanti polle dove potrete rinfrescarvi.  È un sentiero ben tenuto, ma bisogna fare attenzione ai piedi, soprattutto quando si cammina tra le rocce.  Il percorso termina rientrando al punto di partenza, passando anche da un bivio che conduce a Casoli.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è classificata come di difficoltà media. Il dislivello di 273 metri è graduale, quindi non è eccessivo, ma richiede comunque una buona preparazione fisica.  Il sentiero è adatto a escursionisti amatoriali e famiglie, purché siano in buona forma e abituati a camminare su terreni leggermente ripidi.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare la traccia GPS di questa escursione per seguirla durante la camminata.  La discesa è in gran parte a piedi, ma può essere utile avere un punto di riferimento in caso di necessità.  Ricordate di portare con voi acqua, snack e scarpe da trekking adatte.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> 4.85 km</li>
    <li><strong>Dislivello:</strong> 273 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Metato, Toscana, Italia</li>
    <li><strong>Comune:</strong> Metato</li>
    <li><strong>Regione:</strong> Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.85,
  273,
  97,
  293,
  123,
  '2:03',
  107,
  '1:47',
  797,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Metato',
  '2022-08-01',
  '2022-08-01',
  '2022-08-16 00:00:00',
  '2022-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/candalla-passeggiata-tranquilla-110858919',
  NULL,
  43.95223,
  10.318118,
  'POINT(10.318118 43.95223)',
  '9a6c000cd8caa590be51655ddc15799613fe6b0cbea50f0faf77dbca732c6e50',
  'Escursione Candalla Metato: Anello facile in Toscana (4.85km, +273m) | Scopri le polle e il bagno rinfrescante! Bivio Casoli. Perfetta per una giornata tranq...',
  'Candalla: Escursione Anello da Metato (Toscana)',
  'Alpi Apuane',
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
VALUES (110858919, 'https://it.wikiloc.com/percorsi-escursionismo/candalla-passeggiata-tranquilla-110858919', NOW(), '9a6c000cd8caa590be51655ddc15799613fe6b0cbea50f0faf77dbca732c6e50')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110858919);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110858919/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110858919/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110858919;

COMMIT;

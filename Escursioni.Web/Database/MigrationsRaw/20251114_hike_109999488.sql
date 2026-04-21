BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  109999488,
  'Gabbro anello serale Poggio D''arco',
  'Siamo partiti dal parcheggio Gabbro e da li abbiamo iniziato un anello improvvisato prima della sagra del Cinghiale. Il giro si è rivelato molto carino e facile da seguire, in un paio di punti c''era un po di erba alta, ma niente di che. Ci sono diversi punti dov''è possibile godere di un panorama Unico nel suo genere. Dopo il giro, Siamo andati alla sagra nel paese a cena, se passate da quelle parti possate anche sul monte Pelato. c''è un grandissimo parcheggio dove lasciare l''auto... e subito a inizio percorso c''è una fontanella, potete andare anche con le scarpe da tennis .',
  '<h2>Gabbro Anello Serale Poggio D''arco: Trekking e Escursione nella Montagna Toscana</h2>

<h3>Il Percorso</h3>

<p>Questo <strong>anello trekking</strong> a <strong>Poggio D''arco</strong>, in Toscana, è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>. Il percorso, di tipo <strong>sentiero</strong>, si snoda tra il <strong>Gabbro</strong>, una formazione geologica affascinante, offrendo panorami mozzafiato. L''escursione è stata concepita come un''improvvisata, perfetta per una giornata di <strong>trekking</strong> in <strong>montagna</strong>, immergendosi nella <strong>natura</strong> toscana. Il giro è caratterizzato da un facile sviluppo, rendendolo adatto a diversi livelli di esperienza. In alcuni punti, l''erba alta potrebbe richiedere un po'' di attenzione, ma nulla di particolarmente impegnativo. La distanza del <strong>sentiero</strong> è di circa 5 km, con un dislivello di 250 metri, garantendo una sfida piacevole per i più sportivi.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi ad un''<strong>escursione</strong> immersiva nella splendida <strong>montagna</strong> della Toscana. Potrete ammirare panorami unici, godervi la tranquillità della <strong>natura</strong> e respirare l''aria fresca e pulita. Il <strong>sentiero</strong> è ben battuto, ma in alcuni tratti potrebbe presentare leggerissimi dislivelli. La flora e la fauna locale vi sorprenderanno con la loro varietà.  È un''ottima opportunità per una giornata di <strong>trekking</strong> e scoperta del territorio, ideale per famiglie e gruppi di amici.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Località:</b> Poggio D''arco, Toscana</li>
    <li><b>Difficoltà:</b> Facile – Media</li>
    <li><b>Distanza:</b> Circa 5 km</li>
    <li><b>Dislivello:</b> 250 metri</li>
    <li><b>Tipo di Sentiero:</b> Anello </li>
    <li><b>Punti di Interesse:</b> Panorami mozzafiato,  formazione geologica <strong>Gabbro</strong>,  possibilità di ammirare la <strong>natura</strong> locale, vista sul monte Pelato.</li>
    <li><b>Accesso:</b> Partenza dal parcheggio <strong>Gabbro</strong>. Inizialmente un percorso improvvisato per la sagra del Cinghiale.</li>
    <li><b>Servizi:</b> Parcheggio disponibile vicino al punto di partenza. Fontanella all''inizio del <strong>sentiero</strong>; accessibile anche con <strong>scarpe da tennis</strong>.</li>
</ul>

<p>Non perdetevi la possibilità di partecipare alla tradizionale <strong>sagra del Cinghiale</strong> a <strong>Poggio D''arco</strong>! Dopo l''<strong>escursione</strong>, potrete gustare i piatti tipici locali.  Ricordatevi di controllare le previsioni meteo prima di partire e di indossare abbigliamento e calzature adatte al <strong>trekking</strong>.  Godetevi questa magnifica <strong>escursione</strong> nel cuore della <strong>montagna</strong> toscana, un vero gioiello per gli amanti del <strong>sentiero</strong> e del <strong>trekking</strong> in Italia!</p>',
  'Tutte le Attività e Paesi',
  6.3,
  174,
  178,
  416,
  NULL,
  NULL,
  NULL,
  NULL,
  1121,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Gabbro',
  '2022-08-01',
  '2022-08-01',
  '2022-08-07 00:00:00',
  '2022-08-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gabbro-anello-serale-poggio-darco-109999488',
  NULL,
  43.481497,
  10.443688,
  'POINT(10.443688 43.481497)',
  '125ea1d4b5611ba4a99c0d8a9fafedcdb17372d19eb6ca447fce28794a7e03eb',
  'Escursione Gabbro anello Poggio D''Arco (Toscana): Facile giro di 6.3km +174m. Percorso anello dal parcheggio Gabbro, ideale per una serata! Panorami unici e ...',
  'Gabbro: escursione anello serale da Poggio D''arco (Toscana)',
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
VALUES (109999488, 'https://it.wikiloc.com/percorsi-escursionismo/gabbro-anello-serale-poggio-darco-109999488', NOW(), '125ea1d4b5611ba4a99c0d8a9fafedcdb17372d19eb6ca447fce28794a7e03eb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 109999488);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/109999488/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

COMMIT;

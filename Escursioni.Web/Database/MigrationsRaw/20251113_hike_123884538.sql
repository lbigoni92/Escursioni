BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  123884538,
  'Cascatelle dell''infernaccio - Poggio corbolone - Villa Cristina',
  'Escursione mattutina molto bella specialmente per le cascate dell''infernaccio che erano belle rigogliose dopo delle piogge.Il percorso era abbastanza umido anche perché aveva piovuto i giorni precedenti, l''unica salita che sia degna di questo nome è quella a Poggio Corbolone dal quale è possibile avere una vista unica su Livorno.Un altro punto di particolare interesse è il punto panoramico sopra villa Cristiana, dal quale si ha una vita unica sui monti pisani e apuane.Il percorso è corto ed è adatto a una mezza giornata.Raccomando vivamente Scarponi viste le zone iniziali che sono umide specialmente dopo delle pioggie.',
  '<h2>Cascatelle dell''Infernaccio – Poggio Corbolone – Villa Cristina: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questa <strong>escursione trekking</strong> alla <strong>Cascatelle dell''Infernaccio</strong>, passando per <strong>Poggio Corbolone</strong> e raggiungendo <strong>Villa Cristina</strong>, offre un''esperienza indimenticabile nel cuore della natura toscana. Il sentiero è progettato per una <strong>mezza giornata di trekking</strong>, permettendo di ammirare paesaggi mozzafiato e godersi la tranquillità della <strong>montagna pisana</strong>. L''itinerario è prevalentemente in salita, con una sezione impegnativa verso <strong>Poggio Corbolone</strong>, ma le ricompense ne valgono ampiamente la pena. La <strong>sentiero</strong> permette di raggiungere punti panoramici unici e di immergersi nella bellezza selvaggia della regione.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparatevi a un''<strong>escursione in natura</strong> ricca di sorprese. Il sentiero vi condurrà attraverso boschi lussureggianti, cascate impetuose, e panorami spettacolari. L''umidità del terreno, dovuta alle recenti piogge, rende il percorso interessante e stimolante.  Non mancheranno le opportunità per ammirare la flora e la fauna locali, rendendo questa <strong>trekking</strong> un''esperienza educativa e rilassante. La vista da <strong>Poggio Corbolone</strong> e dal punto panoramico sopra <strong>Villa Cristina</strong> è semplicemente impagabile. È consigliabile prepararsi ad affrontare un''escursione in condizioni di umidità, soprattutto dopo piogge.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Medio</li>
    <li><strong>Distanza:</strong> Circa 8-10 km</li>
    <li><strong>Dislivello:</strong> Circa 400-500 metri</li>
    <li><strong>Durata:</strong> Mezza giornata (4-5 ore)</li>
    <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Equipaggiamento Consigliato:</strong> Scarponi da trekking, bastoncini da trekking, abbigliamento a strati, acqua, cibo, cappello, crema solare</li>
    <li><strong>Punto di Partenza:</strong>  A seconda del punto di partenza scelto, si raggiunge il sentiero attraverso diversi tratti, consultare mappe escursionistiche locali.</li>
    <li><strong>Informazioni aggiuntive:</strong> È consigliabile verificare le condizioni meteo prima di partire e informarsi sulle eventuali restrizioni o chiusure del sentiero.  La <strong>sentiero escursionistica</strong> è un''ottima opportunità per praticare <strong>trekking</strong> in <strong>Italia</strong>.</li>
</ul>

<p>Questa <strong>escursione sentiero</strong> è ideale per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>, offrendo un''esperienza autentica nella <strong>natura italiana</strong>. Non perdetevi la bellezza delle <strong>cascate dell''Infernaccio</strong> e i panorami mozzafiato sulla <strong>Montagna Pisana</strong> e sugli <strong>Apuani</strong>. Ricordate di rispettare l''ambiente e di lasciare i sentieri puliti.  La <strong>trekking</strong> è un ottimo modo per esplorare la <strong>Montagna</strong> e godersi un''esperienza unica. </p>',
  'Tutte le Attività e Paesi',
  7.99,
  325,
  51,
  311,
  NULL,
  NULL,
  NULL,
  NULL,
  1270,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Campo al Melo',
  '2023-01-01',
  '2023-01-01',
  '2023-01-21 00:00:00',
  '2023-01-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascatelle-dellinfernaccio-poggio-corbolone-villa-cristina-123884538',
  NULL,
  43.558868,
  10.400475,
  'POINT(10.400475 43.558868)',
  '809eaf9b1f33befd7aa2c14fc8ffe98042e9bc84e21ed0fb8190e0dc13d7c4ba',
  'Escursione Cascatelle dell’Infernaccio, Poggio Corbolone e Villa Cristina (Campo a Melo, Toscana). Facile giro di 7.9km +325m. Vista Livorno, cascate e punto...',
  'Cascatelle dell’Infernaccio: Escursione da Poggio Corbolo...',
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
VALUES (123884538, 'https://it.wikiloc.com/percorsi-escursionismo/cascatelle-dellinfernaccio-poggio-corbolone-villa-cristina-123884538', NOW(), '809eaf9b1f33befd7aa2c14fc8ffe98042e9bc84e21ed0fb8190e0dc13d7c4ba')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 123884538);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/123884538/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/123884538/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 123884538;

COMMIT;

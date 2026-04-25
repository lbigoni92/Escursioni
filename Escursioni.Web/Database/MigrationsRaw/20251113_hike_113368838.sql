BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  113368838,
  'La Culla -Monte Gabberi - Monte Lieto - Sant''Anna di Stazzema - Con Friends In trekking',
  'Siamo partiti dal paese "La Culla" (c''è poco parcheggio) da li abbiamo intrapreso il sentiero per arrivare al Monte Gabberi. Il sentiero presenta un buon dislivello ma si fa agilmente, in un tratto si trova anche un pennato inciso sulle rocce. Il monte Gabberi è il monte più panoramico delle apuane sulla costa, e possibile vedere da Piombino a la Spezia, e si intravede il foro del monte forato. Il tratto dopo fino a FOCE DI FARNOCCHIA è un tratto EE (poco esposto) ma vi è la variante facile; che passa sotto la cresta. Da FOCE DI FARNOCCHIA a Monte Lieto è molto tranquillo, un po in salita ma niente di mai troppo eccessivo. Anche da qua è possibile ammirare un panorama mozzafiato! il tratto che prosegue fino a Sant''anna di Stazzema è molto semplice e prevalentemente in discesa. Sant''anna di Stazzema abbiamo visitato il monumento ai caduti e il museo della città dopo di che siamo ripartiti in direzione "LaCulla" Sentiero non da tutti visto il dislivell , ma mooolto mooooooolto bello con un ottima compagnia!',
  '<h2 >La Culla - Monte Gabberi - Monte Lieto - Sant''Anna di Stazzema - Trekking in Toscana</h2>

<h3 >Il Percorso</h3>
<p>Questo <strong>sentiero di trekking</strong>, organizzato da <strong>Con Friends In trekking</strong>, vi condurrà attraverso un paesaggio mozzafiato lungo la costa toscana. Partiremo da <strong>La Culla</strong>, un piccolo paese con limitato parcheggio, e ci inoltreremo nel cuore delle <strong>Apuane</strong> per un''<strong>escursione</strong> indimenticabile. Il percorso è progettato per essere un''avventura <strong>trekking</strong>  sulla <strong>montagna</strong>, con un buon dislivello ma facilmente percorribile.  Ammirerete panorami spettacolari che spaziano da <strong>Piombino</strong> a <strong>La Spezia</strong>, con la possibilità di osservare il suggestivo <strong>foro del monte forato</strong>.</p>

<h3 >Cosa Aspettarsi</h3>
<p>Preparatevi a un''<strong>escursione</strong> di <strong>trekking</strong> attraverso la natura incontaminata delle <strong>Apuane</strong>. Il <strong>sentiero</strong> presenta un dislivello significativo, ma la sua agilità e la compagnia di altri appassionati di <strong>trekking</strong> renderanno l''esperienza ancora più piacevole. Potrete ammirare un <strong>pendio inciso sulle rocce</strong>, un dettaglio unico che arricchirà il vostro viaggio alla scoperta della <strong>montagna</strong>.  Il tratto a <strong>Foce di Farnocchia</strong> è particolarmente interessante, con la possibilità di scegliere una <strong>variante facile</strong> che evita le zone più esposte. Il <strong>sentiero</strong> si snoda poi con calma fino al <strong>Monte Lieto</strong>, offrendo viste panoramiche mozzafiato. L''ultimo tratto, fino a <strong>Sant''Anna di Stazzema</strong>, è prevalentemente in discesa e offre un''esperienza di <strong>trekking</strong> facile e accessibile a tutti.</p>

<h3 >Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media - Richiede una buona preparazione fisica</li>
    <li><strong>Distanza Totale:</strong> Circa 15-20 km (a seconda del percorso scelto)</li>
    <li><strong>Dislivello:</strong> Circa 800-1000 metri</li>
    <li><strong>Punto di Partenza:</strong> <strong>La Culla</strong> (parcheggio limitato)</li>
    <li><strong>Punto di Arrivo:</strong> <strong>Sant''Anna di Stazzema</strong></li>
    <li><strong>Tempi Previsti:</strong> 6-8 ore (a seconda del ritmo)</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarponi da <strong>trekking</strong>, zaino, acqua, cibo, cappello, crema solare</li>
</ul>

<p>Questo <strong>sentiero per trekking</strong> nelle <strong>Apuane</strong> è una fantastica opportunità per immergervi nella natura e godervi un''esperienza unica.  Riscoprite la bellezza dei <strong>sentieri</strong> e della <strong>montagna</strong> con <strong>Con Friends In trekking</strong>!  Organizza la tua prossima <strong>escursione</strong> e vivi l''emozione del <strong>trekking</strong> in <strong>Italia</strong>!</p>',
  'Tutte le Attività e Paesi',
  13.93,
  1115,
  219,
  1040,
  394,
  '6:34',
  343,
  '5:43',
  2248,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Culla',
  '2022-09-01',
  '2022-09-01',
  '2022-09-11 00:00:00',
  '2022-09-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/la-culla-monte-gabberi-monte-lieto-santanna-di-stazzema-con-friends-in-trekking-113368838',
  NULL,
  43.958427,
  10.276352,
  'POINT(10.276352 43.958427)',
  '6693d00b4b70e2494c6463e4dbe3410b01b5b1ccfbe2a38906ac29ecd7a15653',
  'Escursione Monte Gabberi, Monte Lieto e Sant''Anna di Stazzema (Toscana) - Anello 13.9km, +1m. Trekking facile-medio da La Culla con panorami mozzafiato!',
  'Monte Gabberi - Monte Lieto: Escursione da La Culla (Tosc...',
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
VALUES (113368838, 'https://it.wikiloc.com/percorsi-escursionismo/la-culla-monte-gabberi-monte-lieto-santanna-di-stazzema-con-friends-in-trekking-113368838', NOW(), '6693d00b4b70e2494c6463e4dbe3410b01b5b1ccfbe2a38906ac29ecd7a15653')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 113368838);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/113368838/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/113368838/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 113368838;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  113368838,
  'La Culla -Monte Gabberi - Monte Lieto - Sant''Anna di Stazzema - Con Friends In trekking',
  'Siamo partiti dal paese "La Culla" (c''è poco parcheggio) da li abbiamo intrapreso il sentiero per arrivare al Monte Gabberi. Il sentiero presenta un buon dislivello ma si fa agilmente, in un tratto si trova anche un pennato inciso sulle rocce. Il monte Gabberi è il monte più panoramico delle apuane sulla costa, e possibile vedere da Piombino a la Spezia, e si intravede il foro del monte forato. Il tratto dopo fino a FOCE DI FARNOCCHIA è un tratto EE (poco esposto) ma vi è la variante facile; che passa sotto la cresta. Da FOCE DI FARNOCCHIA a Monte Lieto è molto tranquillo, un po in salita ma niente di mai troppo eccessivo. Anche da qua è possibile ammirare un panorama mozzafiato! il tratto che prosegue fino a Sant''anna di Stazzema è molto semplice e prevalentemente in discesa. Sant''anna di Stazzema abbiamo visitato il monumento ai caduti e il museo della città dopo di che siamo ripartiti in direzione "LaCulla" Sentiero non da tutti visto il dislivell , ma mooolto mooooooolto bello con un ottima compagnia!',
  '<h2 id="escursione-la-culla-monte-gabberi-monte-lieto-sant-anna-di-stazzema">Escursione a La Culla, Monte Gabberi, Monte Lieto e Sant''Anna di Stazzema con Friends In trekking</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza è il piccolo paese di <strong id="punto-di-partenza">La Culla</strong>, nel comune di Culla, in provincia di Toscana.  È consigliabile arrivare in auto, ma attenzione perché il parcheggio è piuttosto limitato. Da qui inizia il sentiero che ci porterà alla cima!</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Iniziamo da La Culla e subito ci imbattiamo in un sentiero con un bel dislivello, ma ben aggredibile. Percorreremo il sentiero fino al <strong id="monte-gabberi">Monte Gabberi</strong>, il punto panoramico più bello delle Apuanes sulla costa.  Ammireremo il panorama che si estende da Piombino a La Spezia, e se il tempo lo permette, potremo scorgere il famoso <strong id="foro-monte-forato">foro del Monte Forato</strong>. Proseguiremo verso <strong id="focce-di-farnocchia">Foce di Farnocchia</strong>, dove troveremo una variante più facile che ci permette di evitare un tratto un po'' esposto.  Dall''altra parte del passo, il sentiero si fa più tranquillo, con qualche tratto in salita, ma niente di particolarmente impegnativo. Arriveremo a <strong id="sant-anna-di-stazzema">Sant''Anna di Stazzema</strong>, dove potremo visitare il monumento ai caduti e il museo della città. Il tratto finale è prevalentemente in discesa e ci riporterà a La Culla, per un''escursione davvero memorabile!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa <strong id="difficoltà">escursione di tipo anello</strong> di 13.93 km con un <strong id="dislivello">dislivello di 1115 metri</strong> è considerata di difficoltà <strong id="difficoltà-2">media</strong>. Richiede una buona preparazione fisica, soprattutto per affrontare i tratti più ripidi.  L''ambiente è suggestivo e offre panorami mozzafiato, ma è importante rispettare la natura e seguire attentamente il sentiero.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>La traccia GPS di questo percorso è disponibile a [inserire link alla traccia GPS].</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong id="distanza">Distanza:</strong> Circa 13.93 km (anello)</li>
  <li><strong id="dislivello-2">Dislivello:</strong> Circa 1115 metri</li>
  <li><strong id="difficoltà-2">Difficoltà:</strong> Medio</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> La Culla (accessibile in auto/a piedi)</li>
  <li><strong id="comune">Comune:</strong> Culla, Toscana, Italia</li>
  <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
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

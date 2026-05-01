BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104346383,
  'Talamone',
  'Talamone',
  '<h2 id="escursione-talamone">Escursione a Talamone: Un Anello di Storia e Panorama</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Per raggiungere il punto di partenza dell''escursione a Talamone, dovrete dirigervi verso il centro storico del paese. Parcheggiate l''auto nelle aree predisposte, facilmente raggiungibili in auto. Da qui, seguirete le indicazioni per il sentiero che conduce alla cima della collina, dove inizia l''anello.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo anello di 13,57 km vi condurrà attraverso un paesaggio variegato, ricco di storia e panorami mozzafiato. Inizialmente, il sentiero si snoda attraverso le pendici della **montagna** , offrendo una vista suggestiva sulla valle sottostante e sul borgo di **Talamone**. Il percorso è ben segnalato e presenta alcuni tratti in salita, ma niente di particolarmente impegnativo. Seguirete sentieri che si insinueranno tra la macchia mediterranea e i resti di antichi abitati, ammirando le rovine di un castello medievale. L''anello si chiude tornando al punto di partenza, offrendo un ultimo sguardo sulla maestosa **Talamone**. Questo è un’ottima **escursione** per godersi la natura e la storia.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>L''escursione a Talamone presenta una **difficoltà** media. La **distanza** di 13,57 km e il **dislivello** di 546 metri richiedono una buona preparazione fisica.  È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, cibo e un cappello. Aspettatevi un percorso in salita costante, ma non ripido, con alcuni tratti su terreno leggermente scosceso. L’**escursione** è ideale per chi cerca un’attività all’aria aperta ma non vuole affrontare percorsi troppo impegnativi. </p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Per facilitare il vostro percorso, vi allego una <strong >traccia GPS</strong> che potrete scaricare sul vostro dispositivo. Vi consiglio di consultare sempre la mappa escursionistica della zona e di verificare le condizioni del sentiero prima di partire.  Ecco alcune informazioni pratiche:</p>
<ul>
    <li><b>Distanza:</b> Circa 13.57 km (anello)</li>
    <li><b>Dislivello:</b> Circa 546 metri</li>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Periodo consigliato:</b> Primavera, Estate, Autunno</li>
    <li><b>Punto di partenza:</b> Centro storico di Talamone, accessibile in auto</li>
    <li><b>Comune:</b> Talamone, **Toscana**</li>
    <li><b>Tipo di sentiero:</b> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong >Distanza:</strong> Circa 13.57 km (anello)</li>
    <li><strong >Dislivello:</strong> Circa 546 metri</li>
    <li><strong >Difficoltà:</strong> Media</li>
    <li><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong >Punto di partenza:</strong> Centro storico di Talamone, accessibile in auto</li>
    <li><strong >Comune:</strong> Talamone, **Toscana**</li>
    <li><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  13.57,
  546,
  8,
  279,
  309,
  '5:09',
  269,
  '4:29',
  2320,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Talamone',
  '2022-06-01',
  '2022-06-01',
  '2022-06-01 00:00:00',
  '2022-06-01 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/talamone-104346383',
  NULL,
  42.553842,
  11.134698,
  'POINT(11.134698 42.553842)',
  'a95dc644ec879e5524518484d45049631a9c466cd6f8d49b3e2d520cfccb69f3',
  'Escursione Talamone: Anello nel Parco Naturale della Maremma Toscana. 13.57km, +454m, difficoltà media. Scopri il borgo medievale e il Monte Talamone!',
  'Talamone: Escursione Anello da Talamone (Toscana)',
  'Grosseto e Maremma',
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
VALUES (104346383, 'https://it.wikiloc.com/percorsi-escursionismo/talamone-104346383', NOW(), 'a95dc644ec879e5524518484d45049631a9c466cd6f8d49b3e2d520cfccb69f3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104346383);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104346383/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104346383/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104346383;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104515816,
  'Scarlino - Cala Violina',
  'Abbiamo parcheggiato a Scarlino dove il parcheggio era Gratuito e abbiamo proseguito a piedi fino ad arrivare a Cala violina la camminata è stata molto tranquilla e rilassante 10km tra andata e ritorno tutti in piano. Il percorso è ben segnalato, facile da seguire e non presenta alcuna criticità. La spiaggia di Cala violina è un Paradiso unico nel suo genere, spiaggia fine , mare cristallino e popolato da numerose specie d''animali acquatici. Abbiamo pagato 2 euro d''ingrasso.. anche se vi sono altri accessi gratuiti.... l''abbiamo scoperto dopo, abbiamo considerato la spesa di 2 euro un contributo al comune, ma ecco non è difficile aggirare i controlli.',
  '<h2 id="escursione-scarlino-cala-violin">Escursione a Cala Violina da Scarlino</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza dell''escursione a Cala Violina da Scarlino è il parcheggio gratuito di Scarlino. Da qui, si prosegue a piedi lungo il sentiero ben segnalato che conduce alla splendida baia di Cala Violina. È un percorso facilmente raggiungibile e perfetto per una giornata di escursione!</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Il sentiero che porta a Cala Violina è un percorso di circa 10.68 km, un anello che si snoda in gran parte in piano, con un leggero dislivello di circa 249 metri. La camminata è tranquilla e rilassante, ideale per un''escursione amatoriale. Il sentiero è ben segnalato, rendendo facile il ritorno.  Godrete di un panorama mozzafiato lungo il percorso, con la vista sul mare e sulla costa toscana. La spiaggia di Cala Violina, con la sua sabbia fine e il mare cristallino, vi aspetta alla fine di questa bellissima escursione!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di difficoltà media. Il sentiero è generalmente facile da seguire e non presenta ostacoli significativi.  Si consiglia di indossare scarpe da trekking adatte e di portare con sé acqua e snack. L''escursione richiede circa 3-4 ore, a seconda del ritmo e delle soste.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Potete scaricare una traccia GPS per questa escursione per seguirla durante il percorso.  Ecco alcune informazioni pratiche:</p>
<ul>
    <li><strong>Distanza:</strong> 10.68 km (anello)</li>
    <li><strong>Dislivello:</strong> 249 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parcheggio di Scarlino</li>
    <li><strong>Comune:</strong> Dogana</li>
    <li><strong>Regione:</strong> Toscana</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 10.68 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 249 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parcheggio di Scarlino, accessibile in auto</li>
    <li><strong>Comune:</strong> Dogana, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.68,
  249,
  3,
  62,
  219,
  '3:39',
  190,
  '3:10',
  1773,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Dogana',
  '2022-06-01',
  '2022-06-01',
  '2022-06-03 00:00:00',
  '2022-06-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cala-violina-104515816',
  NULL,
  42.884175,
  10.787528,
  'POINT(10.787528 42.884175)',
  'd855dbd4af07fb9679b0b34cfe6ebf84acfee361dd7fd108c24a542072635e12',
  'Escursione Scarlino Cala Violina: Trekking 10.68km facile in Toscana, +161m dislivello. Spiaggia paradisiaca e mare cristallino! Percorso segnalato, Dogana.',
  'Cala Violina: Escursione da Scarlino (10km, facile)',
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
VALUES (104515816, 'https://it.wikiloc.com/percorsi-escursionismo/cala-violina-104515816', NOW(), 'd855dbd4af07fb9679b0b34cfe6ebf84acfee361dd7fd108c24a542072635e12')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104515816);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104515816/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104515816/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104515816;

COMMIT;

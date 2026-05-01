BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  95854305,
  'Grotta dei banditi - Curva Nuvolari - Val di chioma - Evangelisti',
  'Giro non usuale per arrivare alla grotta dei banditi, abbiamo scelto questo percorso perchè volevamo fare un sentiero alternativo e un pò più lungo. Molto caratteristici sono i due piccoli guadi che abbiamo fatto, molto carini, il sentiro in val di chioma è molto largo e facile. Una volta arrivati alla grotta, è possibile visitarla, c''è qualche ragno ma ecco è molto bello vedere un distaccamento dei partigiani ha soggiornato. Non vi sono particolari problemi su questi sentieri se non un pò fi fango... ma ecco siamo in montagna. Portate scarpe adeguate e acqua, non ci sono fontanelle',
  '<h2 id="grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Escursione alla Grotta dei Banditi, Curva Nuvolari, Val di Chioma e Evangelisti</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza di questa escursione, consiglierei di parcheggiare l''auto a **Evangelisti**. Da qui, seguiamo il sentiero segnalato che ci conduce verso la valle.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia con un piacevole risalita attraverso il sentiero, caratterizzato da una discesa che ci porta alla **Grotta dei Banditi**. Il percorso si snoda attraverso la **Val di Chioma**, un ambiente naturale molto suggestivo, con un sentiero ampio e facilmente percorribile. Supereremo due piccoli guadi, un tratto divertente e un po'' fangoso, tipico della montagna! Raggiungeremo la **Curva Nuvolari** e infine la **Grotta dei Banditi**, dove potremo ammirare le tracce del passato e immaginare i partigiani che vi soggiornavano. La discesa completa il giro, riportandoci al punto di partenza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è considerata **Facile**, adatta anche a escursionisti meno esperti. Il dislivello di **651 metri** è distribuito su un percorso di circa 19 km, quindi è consigliabile avere una buona preparazione fisica. L''anello è molto bello e la traccia è in gran parte percorribile.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per facilitare l''escursione, ti consiglio di scaricare una <strong id="traccia-gps-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">traccia GPS</strong> della zona. Ricorda sempre di controllare le previsioni meteo prima di partire e di informare qualcuno del tuo itinerario.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong id="distanza-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Distanza:</strong> Circa 19.17 km (anello)</li>
    <li><strong id="dislivello-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Dislivello:</strong> Circa 651 metri</li>
    <li><strong id="difficoltà-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Difficoltà:</strong> Facile</li>
    <li><strong id="periodo-consigliato-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Punto di partenza:</strong> Evangelisti, accessibile in auto/a piedi</li>
    <li><strong id="comune-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Comune:</strong> Evangelisti, Toscana, Italia</li>
    <li><strong id="tipo-di-sentiero-grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  19.17,
  651,
  55,
  320,
  421,
  '7:01',
  366,
  '6:06',
  3139,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Evangelisti',
  '2022-02-01',
  '2022-02-01',
  '2022-02-20 00:00:00',
  '2022-02-20 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti-95854305',
  NULL,
  43.47966,
  10.369275,
  'POINT(10.369275 43.47966)',
  '5a06f679dadcf972b82ea0e36924fabe86378ffac8529c2c757b330df066184b',
  'Escursione Evangelisti: Grotta dei Banditi, Curva Nuvolari e Val di Chioma! Anello facile 19km, +470m. Sentiero alternativo, guadi e grotta partigiana. Toscana!',
  'Evangelisti – Grotta dei Banditi: Escursione Facile Val d...',
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
VALUES (95854305, 'https://it.wikiloc.com/percorsi-escursionismo/grotta-dei-banditi-curva-nuvolari-val-di-chioma-evangelisti-95854305', NOW(), '5a06f679dadcf972b82ea0e36924fabe86378ffac8529c2c757b330df066184b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 95854305);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/95854305/photo_08.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/95854305/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 95854305;

COMMIT;

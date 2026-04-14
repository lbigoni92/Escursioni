BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  95854305,
  'Grotta dei banditi - Curva Nuvolari - Val di chioma - Evangelisti',
  'Giro non usuale per arrivare alla grotta dei banditi, abbiamo scelto questo percorso perchè volevamo fare un sentiero alternativo e un pò più lungo. Molto caratteristici sono i due piccoli guadi che abbiamo fatto, molto carini, il sentiro in val di chioma è molto largo e facile. Una volta arrivati alla grotta, è possibile visitarla, c''è qualche ragno ma ecco è molto bello vedere un distaccamento dei partigiani ha soggiornato. Non vi sono particolari problemi su questi sentieri se non un pò fi fango... ma ecco siamo in montagna. Portate scarpe adeguate e acqua, non ci sono fontanelle',
  '<article class="hiking-detail">
    <h2 class="hiking-title">Grotta dei Banditi - Curva Nuvolari - Val di Chioma - Evangelisti</h2>
    <p>
        Questo giro non usuale per arrivare alla grotta dei banditi è stato scelto per vivere un sentiero alternativo e leggermente più lungo. Il percorso è caratterizzato da due piccoli guadi, un tratto piacevole nella Val di Chioma (molto largo e facile) e poi dall''arrivo alla grotta, dove è possibile visitarla ed ammirare i resti di un distaccamento di partigiani che vi soggiornava.
    </p>
    <p>
        <em>Non ci sono particolari difficoltà su questi sentieri, ma è importante tenere presente che siamo in montagna e che il terreno potrebbe essere un po'' fangoso.</em>
    </p>
    <h3>Dettagli del Percorso:</h3>
    <ul class="hiking-details-list">
        <li>
            <strong>Difficoltà:</strong> Facile/Media (a causa del terreno e dei guadi)
        </li>
        <li>
            <strong>Lunghezza:</strong> Circa 12-15 km (adattabile in base al punto di partenza)
        </li>
        <li>
            <strong>Dislivello:</strong> Circa 400-500 metri
        </li>
        <li>
            <strong>Tipo di Sentiero:</strong> Sentiero naturalistico, sentiero di bosco
        </li>
        <li>
            <strong>Caratteristiche Principali:</strong> Guadi, Val di Chioma, Grotta dei Banditi, area di interesse storico (distaccamento partigiani)
        </li>
    </ul>
    <p>
        <strong>Consigli:</strong> Portate scarpe adeguate e abbondante acqua. Non ci sono fontanelle lungo il percorso.  Tenete presente che il sentiero potrebbe essere fangoso a causa delle condizioni meteorologiche.
    </p>
</article>',
  'Tutte le Attività e Paesi',
  19.17,
  470,
  55,
  320,
  260,
  '04:20',
  260,
  '04:20',
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
  'Escursione "Grotta dei Banditi": Val di Chioma, Curva Nuvolari e Evangelisti! Sentiero alternativo, guadi e grotta storica. Impara a percorrere questo percorso!',
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

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  106910190,
  'Orrido di Botri',
  'Percorso molto bello, la traccia.. m''ero scordato di chiuderla e quindi bhe... ha registrato fino a metà tragitto per casa, il percorso per il suo totale sono 8 KM. Molto facile lo consiglio a chiunque abbia una buona mobilitazione. La. Senzazione più bella mi è stata data dal fatto che l''ho fatto di Luglio, c''erano 18 gradi e il fresco dell'' acqua ai piedi faceva tornare in forze. Il percorso è lungo un fiume e ci si bagna i piedi fino ai polpacci o fino alla vita dipende da quanto è in piena il fiume, quando sono andato io era abbastanza in secca. E'' possibile farlo con visite guidate(22 a testa) o in autonomia (GRATUITO ma prenotate). Lo consiglio anche se ora hanno interrotto l''ultimo tratto "la piscina"',
  '<h2 id="escursione-orrido-di-botri">Escursione all''Orrido di Botri</h2>

<p>Amici escursionisti, volevo raccontarvi una delle mie ultime avventure: un''escursione davvero speciale all''Orrido di Botri, un luogo incantevole nel cuore della Toscana! Questo sentiero è perfetto per chi cerca un''esperienza facile e immersiva nella natura, con la possibilità di rinfrescarsi con un tuffo rinfrescante.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza per l''escursione all''Orrido di Botri si trova a Pracchi, un piccolo comune nella provincia di Pisa.  È facilmente raggiungibile in auto e poi si prosegue a piedi per circa 2 km lungo un sentiero sterrato.  L''ultimo tratto è percorribile anche con mezzi pubblici, ma controllate gli orari degli autobus.  Il parcheggio vicino al punto di partenza è limitato, quindi meglio arrivare in anticipo o con mezzi pubblici.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Il sentiero che conduce all''Orrido di Botri segue il corso del fiume Cecina, un affascinante percorso lungo circa 8 km (solo una parte, il percorso completo è di 66.44 km). Il sentiero è prevalentemente pianeggiante e facile, adatto a persone con una buona mobilità. Il tratto più suggestivo è quello dove si affaccia sull''orrido, con le sue pareti rocciose e la cascata.  Preparatevi a bagnare i piedi o le ginocchia, a seconda del livello dell''acqua!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>Questa escursione è classificata come di difficoltà MEDIA. La distanza è di circa 6 km (solo andata) e il dislivello è di +786 metri.  È un percorso ben segnalato, adatto a escursionisti di livello base e famiglie.  L''orografia del percorso è in gran parte pianeggiante, ma ci sono alcuni tratti in salita e discesa.  È importante indossare scarpe da trekking adatte e portare con sé acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per scaricare la traccia GPS di questo sentiero, potete utilizzare le app di navigazione outdoor.  Ecco alcune informazioni pratiche utili per la vostra escursione:</p>
<ul>
    <li><strong>Distanza:</</strong> 6 km (solo andata)</li>
    <li><strong>Dislivello:</</strong> 786 metri</li>
    <li><strong>Difficoltà:</</strong> Media</li>
    <li><strong>Periodo consigliato:</</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</</strong> Pracchi, raggiungibile in auto o con mezzi pubblici</li>
    <li><strong>Comune:</</strong> Pracchi, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong>Distanza:</</strong> Circa 6 km (andata e ritorno)</li>
  <li><strong>Dislivello:</strong> Circa 786 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Pracchi, raggiungibile in auto o a piedi</li>
  <li><strong>Comune:</strong> Pracchi, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  66.44,
  786,
  50,
  827,
  1255,
  '20:55',
  1091,
  '18:11',
  3594,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Pracchi',
  '2022-07-01',
  '2022-07-01',
  '2022-07-02 00:00:00',
  '2022-07-02 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/orrido-di-botri-106910190',
  NULL,
  44.083557,
  10.601293,
  'POINT(10.601293 44.083557)',
  'e778b1857cdd616a8f02edc29fac5f22ce4baff6e06d7e738f6078b06adecf7c',
  'Escursione Orrido di Botri, Pracchi (Toscana): percorso facile 8km, +2m dislivello. Bagno nei piedi, freschezza e vista sull''orrido. Ideale per tutti! Gratui...',
  'Orrido di Botri: Escursione da Pracchi (Toscana)',
  'Appennino Tosco-Emiliano',
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
VALUES (106910190, 'https://it.wikiloc.com/percorsi-escursionismo/orrido-di-botri-106910190', NOW(), 'e778b1857cdd616a8f02edc29fac5f22ce4baff6e06d7e738f6078b06adecf7c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 106910190);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/106910190/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106910190/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106910190;

COMMIT;

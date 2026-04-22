BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  106910190,
  'Orrido di Botri',
  'Percorso molto bello, la traccia.. m''ero scordato di chiuderla e quindi bhe... ha registrato fino a metà tragitto per casa, il percorso per il suo totale sono 8 KM. Molto facile lo consiglio a chiunque abbia una buona mobilitazione. La. Senzazione più bella mi è stata data dal fatto che l''ho fatto di Luglio, c''erano 18 gradi e il fresco dell'' acqua ai piedi faceva tornare in forze. Il percorso è lungo un fiume e ci si bagna i piedi fino ai polpacci o fino alla vita dipende da quanto è in piena il fiume, quando sono andato io era abbastanza in secca. E'' possibile farlo con visite guidate(22 a testa) o in autonomia (GRATUITO ma prenotate). Lo consiglio anche se ora hanno interrotto l''ultimo tratto "la piscina"',
  '<h2>Orrido di Botri: Trekking e Escursione nel Cuore del Parco Nazionale d''Abruzzo, Lazio e Molise</h2>

<h3>Il Percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> nel <strong>Orrido di Botri</strong>, situato nel cuore del <strong>Parco Nazionale d''Abruzzo, Lazio e Molise</strong>, è un''esperienza indimenticabile per gli amanti della <strong>natura</strong> e del <strong>trekking</strong>. Il percorso di circa <strong>8 km</strong> segue il corso del fiume, offrendo panorami mozzafiato e la possibilità di immergersi nella frescura dell''acqua. L''escursione, accessibile a tutti, è ideale per una giornata di <strong>escursione</strong> in <strong>montagna</strong>, perfetta per chi cerca un''esperienza di <strong>trekking</strong> facile e piacevole.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un percorso di circa <strong>8 km</strong>, adatto a tutti i livelli di preparazione fisica.</li>
    <li>Un''esperienza di <strong>trekking</strong> immersa nella natura selvaggia del <strong>Parco Nazionale d''Abruzzo, Lazio e Molise</strong>.</li>
    <li>La possibilità di <strong>fare il bagno nei piedi</strong>, godendo della frescura dell''acqua e della natura incontaminata.</li>
    <li>Un''escursione di <strong>trekking</strong> con panorami spettacolari sull''<strong>orrido</strong> e sulle montagne circostanti.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Il <strong>sentiero dell''Orrido di Botri</strong> è un''ottima opzione per un''<strong>escursione</strong> di un giorno. È possibile affrontarlo in autonomia, gratuitamente, ma è consigliabile prenotare la visita guidata a <strong>22€ a persona</strong>. Il percorso è lungo un fiume e, a seconda del livello dell''acqua, si possono bagnare i piedi fino alla vita.  È importante verificare le condizioni del fiume prima di intraprendere l''<strong>escursione di trekking</strong>, in quanto il fiume può essere in piena durante i periodi di pioggia.  L''accesso all''ultimo tratto "la piscina" è stato interrotto, ma il percorso fino a questo punto rimane comunque una bellissima esperienza di <strong>trekking</strong> in <strong>montagna</strong>.</p>
<p>Questo <strong>sentiero di trekking</strong> nel <strong>Orrido di Botri</strong> offre un''opportunità unica per esplorare la bellezza del <strong>Parco Nazionale d''Abruzzo, Lazio e Molise</strong> e godere di un''esperienza di <strong>natura</strong> e relax in <strong>montagna</strong>.  Preparatevi per una splendida giornata di <strong>trekking</strong>!</p>',
  'Tutte le Attività e Paesi',
  66.44,
  2,
  50,
  827,
  126,
  '02:06',
  126,
  '02:06',
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

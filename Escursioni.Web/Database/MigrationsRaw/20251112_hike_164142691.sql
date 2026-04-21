BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  164142691,
  'Via Mauro Gordato ~ Monte rotondo ~ Cascate',
  'Partenza da Villa Mauro Gordato direzione cascatelle. Dopo aver trovato facilmente il parcheggio mi incammino in solitaria per il percorso 136 percorso molto bello che inizia come una strada sterrata per poi diventare un vero e proprio sentiero; sentiero molto bello dove in diversi tratti si costeggia un fiumiciattolo cristallino al quale ho fatto numerose foto. Al km2.4 ho lasciato il sentiero ufficiale per dirigermi in un sentiero secondario fino a raggiungere delle cascate molto belle che era da tempo che volevo raggiungere, per arrivare a vederle si deve fare 100/150 mt di fuori sentiero. Il rientro l''ho fatto per il sentiero 130p dove a parte un pò di fango non presenta problemi di percorrenza . Alla fine sono riuscito ad allungar il trek per arrivare in vetta al monte rotondo per sentieri non molto ben tenuti, mi ha stupito il rudere che si presenta in cima, molto bello anche se abbandonato. Il rientro è stato fatto percorrendo strade di campagna. Consiglio di visitare le cascatelle.',
  '<h2>Via Mauro Gordato ~ Monte Rotondo ~ Cascate: Escursione Trekking in Montagna</h2>

<h3>Il Percorso - Un Sentiero da Trekking Attraverso la Natura</h3>
<p>Questo fantastico <strong>sentiero da trekking</strong> in <strong>Montagna</strong>, chiamato Via Mauro Gordato, offre un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Italia</strong>. Il percorso inizia da <strong>Villa Mauro Gordato</strong> e si snoda attraverso paesaggi mozzafiato, passando per le suggestive <strong>cascate</strong>. Inizialmente, il percorso segue una strada sterrata, per poi trasformarsi in un autentico <strong>sentiero</strong> che si inoltra nel cuore della natura. Preparatevi a percorrere un anello di circa 10-12 km, un''ottima opportunità per una giornata di <strong>trekking</strong> e scoperta.</p>

<h3>Cosa Aspettarsi - Un''Escursione Ricca di Scoperte</h3>
<p>Durante questa <strong>escursione</strong>, potrete ammirare un <strong>fiumiciattolo</strong> cristallino che costeggia il <strong>sentiero</strong> in diversi tratti, un vero spettacolo per gli occhi.  Il percorso è ricco di punti di interesse, tra cui le spettacolari <strong>cascate</strong> che richiedono un breve tratto fuori sentiero di circa 100-150 metri per essere raggiunte.  Non mancate di esplorare il suggestivo <strong>rudere</strong> in cima al <strong>Monte Rotondo</strong>, un luogo abbandonato ma carico di storia.  Questo <strong>sentiero da trekking</strong> è perfetto per chi cerca un''esperienza immersiva nella natura e un''escursione fuori dai sentieri battuti.</p>

<h3>Informazioni Utili - Dettagli per il Vostro Trekking</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media - Alcuni tratti possono essere impervi.</li>
    <li><strong>Distanza Totale:</strong> Circa 10-12 km</li>
    <li><strong>Dislivello:</strong> Circa 300-400 metri</li>
    <li><strong>Punto di Partenza:</strong> Villa Mauro Gordato</li>
    <li><strong>Punto di Arrivo:</strong> Monte Rotondo (con possibilità di estendere il percorso)</li>
    <li><strong>Tipo di Sentiero:</strong> Sentiero escursionistico, con tratti sterrati e alcuni tratti fuori sentiero.</li>
    <li><strong>Consigli:</strong> Indossate scarpe da trekking adatte, portate con voi acqua e snack, e rispettate l''ambiente circostante. La visita alle <strong>cascate</strong> è altamente consigliata.</li>
</ul>

<p>Esplorate le meraviglie della natura con un''<strong>escursione</strong> indimenticabile lungo il <strong>sentiero</strong> Via Mauro Gordato, un vero gioiello per gli appassionati di <strong>trekking</strong> e <strong>escursionismo</strong> in <strong>Italia</strong>.  Scoprite le <strong>cascate</strong>, il <strong>Monte Rotondo</strong> e i suoi ruderi.  Pianificate la vostra avventura oggi stesso!</p>',
  'Tutte le Attività e Paesi',
  8.68,
  177,
  32,
  160,
  NULL,
  NULL,
  NULL,
  NULL,
  1418,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Villa Maria',
  '2024-03-01',
  '2024-03-01',
  '2024-03-17 00:00:00',
  '2024-03-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/via-mauro-gordato-monte-rotondo-cascate-164142691',
  NULL,
  43.512967,
  10.347712,
  'POINT(10.347712 43.512967)',
  '1d0d7e2de454ff95a7ce6f553557ae558a5c1d05c04fce780f7d8f0879f54456',
  'Escursione Monte Rotondo Villa Maria: sentiero 136 & 130p, cascatelle & ruderi! Anello facile 8.68km, +177m. Perfetta per famiglie! Toscana.',
  'Monte Rotondo: escursione da Villa Mauro Gordato (cascate, ane...',
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
VALUES (164142691, 'https://it.wikiloc.com/percorsi-escursionismo/via-mauro-gordato-monte-rotondo-cascate-164142691', NOW(), '1d0d7e2de454ff95a7ce6f553557ae558a5c1d05c04fce780f7d8f0879f54456')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 164142691);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/164142691/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164142691/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164142691;

COMMIT;

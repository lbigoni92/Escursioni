BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92978992,
  'Dalle Parole d''oro al Monte Zano',
  'Parole d''oro - Sono un acquedotto molto caratteristico del panorama Lucchese l''opera fu deliberata dalla duchessa di Lucca Maria Luisa Borbone, l''opera fu realizzata dal regio architetto Lorenzo Nottolini a cavallo fra il 1823 ed 1858, contestualmente al lungo acquedotto ad archi che collega questa località (tempietto di Guamo) con San Concordio (tempietto di San Concordio). Alle Parole d''Oro, meta di frequenti passeggiate dei Lucchesi, è tutt''ora visibile ed in perfetto stato di conservazione un monumentale e bellissimo insieme di opere che servono a captare quanta più acqua possibile nel migliore modo possibile. Monte Zano Ha una delle poche croci presenti sul monte pisano ed è visibile di notte da lucca. Sul sentiero non ci sono fontanlle, è molto poetica la parte iniziale dell''acquedotto.',
  '<h2>Trekking Dalle Parole d''Oro al Monte Zano: Escursione in Toscana tra Acque e Montagna</h2>

<h3>Il Percorso: Un Sentiero per Ammirare l''Acquedotto e il Monte Zano</h3>
<p>Questo percorso di <strong>trekking</strong> in <strong>Toscana</strong> vi porterà attraverso un paesaggio mozzafiato, combinando la bellezza di un antico <strong>acquedotto</strong> con le maestose cime del <strong>Monte Zano</strong>.  L''escursione, adatta a <strong>escursionisti</strong> esperti, offre la possibilità di scoprire un angolo di <strong>natura</strong> incontaminata, perfetto per una giornata all''aria aperta e un''immersione nella storia e nell''ingegneria del territorio lucchese.  Il sentiero, di media difficoltà, si snoda tra le colline, permettendovi di ammirare da vicino le opere di Lorenzo Nottolini, l''architetto regio che realizzò l''acquedotto.</p>

<h3>Cosa Aspettarsi: Un''Escursione Ricca di Scenari e Storia</h3>
<p>Preparatevi a un''<strong>escursione</strong> indimenticabile! Potrete ammirare l''imponente <strong>Parole d''Oro</strong>, un acquedotto storico di grande bellezza, e il suo funzionamento. La salita al <strong>Monte Zano</strong> vi ricompenserà con una vista panoramica sulla città di Lucca e sulla campagna circostante.  Il sentiero, lungo circa 8 km, è caratterizzato da un dislivello di circa 400 metri, quindi è consigliabile indossare scarpe da <strong>trekking</strong> adatte e portare con sé acqua e snack.  La parte iniziale del sentiero è particolarmente suggestiva, attraversando le vestigia dell''acquedotto, un''esperienza unica per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>.</p>

<h3>Informazioni Utili: Dettagli per un Trekking Sicuro e Rilassante</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 8 km</li>
    <li><strong>Dislivello:</strong> 400 metri</li>
    <li><strong>Punto di Partenza:</strong> Parole d''Oro (Lucchesca)</li>
    <li><strong>Punto di Arrivo:</strong> Monte Zano</li>
    <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno (verificare le condizioni meteorologiche)</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarpe da trekking, zaino, acqua, snack, cappello, crema solare, mappa del sentiero</li>
</ul>

<p>Questo <strong>sentiero</strong> rappresenta un''ottima opportunità per chi cerca un''<strong>escursione</strong> in <strong>montagna</strong> nella <strong>Toscana</strong>, combinando la bellezza del paesaggio con la storia e l''ingegneria del territorio.  Un''occasione imperdibile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>!</p>',
  'Tutte le Attività e Paesi',
  12.09,
  502,
  19,
  496,
  193,
  '03:13',
  193,
  '03:13',
  2072,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Guamo',
  '2022-01-01',
  '2022-01-01',
  '2022-01-16 00:00:00',
  '2022-01-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/dalle-parole-doro-al-monte-zano-92978992',
  NULL,
  43.80778,
  10.520628,
  'POINT(10.520628 43.80778)',
  '5d394b583aa140f9b98b61f69cde4545aa283bdf8d2f8574e2f316be1de5b33b',
  'Escursione Monte Zano Guamo: Trek facile Lucca, 12km, 502m dislivello. Visita le Parole d''Oro, antiche opere per captare l''acqua, e ammira la croce sul monte!',
  'Parole d''Oro al Monte Zano: Escursione Guamo (Toscana)',
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
VALUES (92978992, 'https://it.wikiloc.com/percorsi-escursionismo/dalle-parole-doro-al-monte-zano-92978992', NOW(), '5d394b583aa140f9b98b61f69cde4545aa283bdf8d2f8574e2f316be1de5b33b')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92978992);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92978992/photo_10.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92978992/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92978992;

COMMIT;

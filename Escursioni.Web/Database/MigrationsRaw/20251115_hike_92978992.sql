BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, created_at, updated_at
)
VALUES (
  92978992,
  'Dalle Parole d''oro al Monte Zano',
  'Parole d''oro - Sono un acquedotto molto caratteristico del panorama Lucchese l''opera fu deliberata dalla duchessa di Lucca Maria Luisa Borbone, l''opera fu realizzata dal regio architetto Lorenzo Nottolini a cavallo fra il 1823 ed 1858, contestualmente al lungo acquedotto ad archi che collega questa località (tempietto di Guamo) con San Concordio (tempietto di San Concordio). Alle Parole d''Oro, meta di frequenti passeggiate dei Lucchesi, è tutt''ora visibile ed in perfetto stato di conservazione un monumentale e bellissimo insieme di opere che servono a captare quanta più acqua possibile nel migliore modo possibile. Monte Zano Ha una delle poche croci presenti sul monte pisano ed è visibile di notte da lucca. Sul sentiero non ci sono fontanlle, è molto poetica la parte iniziale dell''acquedotto.',
  '<article class="hiking-detail">
  <h2 data-aos="fade-left">Dalle Parole d''Oro al Monte Zano</h2>
  <p data-aos="fade-right">
    Immergiti in un''escursione unica che ti conduce attraverso il suggestivo acquedotto delle Parole d''Oro e verso la cima del Monte Zano. Questa avventura combina storia, arte e la bellezza selvaggia della campagna pisana.
  </p>

  <h3>Parole d''Oro: Un Capolavoro Ingegneristico</h3>
  <p data-aos="fade-up">
    Le Parole d''Oro sono un acquedotto straordinario, un''opera realizzata tra il 1823 e il 1858 dall''architetto regio Lorenzo Nottolini su commissione della Duchessa di Lucca, Maria Luisa Borbone.  Costruito per raccogliere l''acqua e collegare i tempietti di Guamo e San Concordio, questo complesso sistema di archi e opere è ancora oggi visibile in condizioni impeccabili. Ammira la sua maestosità e immagina la vita del lucchese che vi passava ogni giorno.
  </p>
  <p data-aos="fade-down">
    La parte iniziale dell''acquedotto è particolarmente poetica, un luogo suggestivo dove potrai immergerti nella storia e nella bellezza naturale.
  </p>

  <h3>Monte Zano: Una Vista Mozzafiato</h3>
  <p data-aos="fade-left">
    L''escursione culmina con la salita al Monte Zano, una vetta che offre una vista panoramica mozzafiato sulla città di Lucca e sulla campagna circostante.
  </p>
  <p data-aos="fade-right">
    In cima al monte, potrai ammirare una delle poche croci presenti sul monte, un simbolo di speranza e fede, visibile anche di notte da Lucca.
  </p>

  <h4>Dettagli dell''Escursione</h4>
  <ul data-aos="fade-up">
    <li>
      <strong>Durata:</strong> Circa 3-4 ore
    </li>
    <li>
      <strong>Difficoltà:</strong> Facile/Media (sentiero non asfaltato)
    </li>
    <li>
      <strong>Dislivello:</strong> Circa 300 metri
    </li>
    <li>
      <strong>Punto di Partenza:</strong> Parole d''Oro
    </li>
    <li>
      <strong>Punto di Arrivo:</strong> Monte Zano
    </li>
    <li>
      <strong>Note:</strong> Non sono presenti fontanelle lungo il sentiero.  Consigliati scarpe da trekking e acqua.
    </li>
  </ul>
</article>',
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
  'Escursioni Lucca: Monte Zano & Parole d''Oro! Ammira l''acquedotto storico e la croce illuminata. Trek facile e suggestivo!',
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

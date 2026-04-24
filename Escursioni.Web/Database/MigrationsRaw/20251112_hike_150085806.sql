BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  150085806,
  'Massaciuccoli -villa di Puccini - Tempio Buddista Shintoista galleggiante',
  'Percorso molto semplice in piano che si fa easy in 2/3ore, non ci sono difficoltà tecniche se non un ponte di barche da superare il ponte di barche. il percorso arriva al Tempio Buddista Shintoista. Il lago di Massaciuccoli (in provincia di Lucca, con il lembo meridionale appartenente alla provincia di Pisa, vicino all''omonima frazione di Massarosa in provincia di Lucca) è un lago costiero della Toscana. Il lago e l''area palustre intorno fanno parte del Parco naturale di Migliarino, San Rossore, Massaciuccoli e di un''oasi LIPU, viste le numerose specie di uccelli presenti. La Riserva Naturale del Chiarone fu istituita nel 1979 con la nascita del Parco Migliarino-San Rossore-Massaciuccoli. Nel 1985 ne fu affidata la gestione alla Lega Italiana Protezione Uccelli/BirdLife Italia, così nacque l’Oasi Lipu Massaciuccoli. Le prime attività dell’Oasi si concentrarono sull’educazione ambientale (rivolta ai visitatori ed alle scolaresche), sulla sensibilizzazione della popolazione locale ed in piccola parte, a causa delle scarse risorse economiche, alla gestione ambientale. Grazie ai risultati ottenuti e dall’impegno dei volontari che allora frequentavano l’Oasi, a partire dal 1998 fu istituita una vera e propria convenzione con l’Ente Parco. Fonti : - http://www.oasilipumassaciuccoli.org/chi-siamo/ - https://it.wikipedia.org/wiki/Lago_di_Massaciuccoli',
  '<h2>Massaciuccoli - Villa di Puccini - Tempio Buddista Shintoista: Trekking e Escursioni sul Lago Toscano</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>trekking</strong> lungo il <strong>lago di Massaciuccoli</strong> è un''esperienza unica, un''occasione per immergersi nella <strong>natura toscana</strong> e scoprire un paesaggio incantevole. Il <strong>sentiero</strong> si snoda facilmente, offrendo una <strong>escursione</strong> di circa 2/3 ore, ideale per famiglie e principianti. Non ci sono ostacoli tecnici significativi, se non un breve e pittoresco <strong>ponte di barche</strong> da superare per raggiungere la destinazione finale.</p>
<p>Il percorso permette di ammirare l''atmosfera suggestiva del <strong>lago di Massaciuccoli</strong>, un gioiello naturale della Toscana, con il suo lembo meridionale che si estende tra le province di Lucca e Pisa. La possibilità di avvistare diverse specie di uccelli grazie alla sua posizione all''interno del <strong>Parco naturale di Migliarino, San Rossore, Massaciuccoli</strong> e dell''<strong>oasi LIPU</strong> ne aumenta il fascino. Un''escursione a piedi è il modo perfetto per connettersi con la natura e godere della tranquillità di questo luogo.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Una <strong>escursione facile</strong>, adatta a tutti i livelli di preparazione fisica.</li>
    <li>Un''opportunità per ammirare il <strong>lago di Massaciuccoli</strong> e le sue acque cristalline.</li>
    <li>La possibilità di avvistare numerose specie di uccelli, grazie alla ricca avifauna del <strong>Parco naturale</strong> e dell''<strong>oasi LIPU</strong>.</li>
    <li>Un incontro con la <strong>Villa di Puccini</strong>, un''icona della musica italiana.</li>
    <li>La visita al <strong>Tempio Buddista Shintoista</strong>, un luogo di pace e spiritualità.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>La <strong>distanza del sentiero</strong> è di circa 5 km e il dislivello è minimo. La durata dell''<strong>trekking</strong> è di circa 2-3 ore, a seconda del passo e delle soste. È consigliabile indossare scarpe da trekking comode e portare con sé acqua, protezione solare e un cappello. L''<strong>escursione</strong> è facilmente accessibile e offre scorci panoramici mozzafiato sul <strong>lago</strong> e sulle montagne circostanti.  Il sentiero si trova in provincia di Lucca, in Toscana,  e rappresenta un''ottima opzione per chi cerca una giornata all''aria aperta nel cuore della natura italiana. Ricorda che l''area fa parte del <strong>Parco Naturale Migliarino, San Rossore, Massaciuccoli</strong>, quindi è importante rispettare l''ambiente e le normative locali. Questo <strong>sentiero per trekking</strong> è un''occasione unica per scoprire le meraviglie del lago di Massaciuccoli e della sua biodiversità.</p>',
  'Tutte le Attività e Paesi',
  6.14,
  0,
  -5,
  6,
  106,
  '1:46',
  92,
  '1:32',
  49,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Massaciuccoli',
  '2023-10-01',
  '2023-10-01',
  '2023-10-13 00:00:00',
  '2023-10-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-villa-di-puccini-tempio-buddista-shintoista-galleggiante-150085806',
  NULL,
  43.836135,
  10.356403,
  'POINT(10.356403 43.836135)',
  '2063de56a515415b0acc08ba6c3d0db57beec28cfd67201cc4da2482172c648c',
  'Escursione Lago Massaciuccoli: percorso facile 6.1km, visita al Tempio Buddista e Villa di Puccini! Toscana, +50m dislivello. Ideale per famiglie.',
  'Massaciuccoli: Escursione al Tempio Buddista (Toscana)',
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
VALUES (150085806, 'https://it.wikiloc.com/percorsi-escursionismo/massaciuccoli-villa-di-puccini-tempio-buddista-shintoista-galleggiante-150085806', NOW(), '2063de56a515415b0acc08ba6c3d0db57beec28cfd67201cc4da2482172c648c')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 150085806);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/150085806/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/150085806/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 150085806;

COMMIT;

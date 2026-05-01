BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  150085806,
  'Massaciuccoli -villa di Puccini - Tempio Buddista Shintoista galleggiante',
  'Percorso molto semplice in piano che si fa easy in 2/3ore, non ci sono difficoltà tecniche se non un ponte di barche da superare il ponte di barche. il percorso arriva al Tempio Buddista Shintoista. Il lago di Massaciuccoli (in provincia di Lucca, con il lembo meridionale appartenente alla provincia di Pisa, vicino all''omonima frazione di Massarosa in provincia di Lucca) è un lago costiero della Toscana. Il lago e l''area palustre intorno fanno parte del Parco naturale di Migliarino, San Rossore, Massaciuccoli e di un''oasi LIPU, viste le numerose specie di uccelli presenti. La Riserva Naturale del Chiarone fu istituita nel 1979 con la nascita del Parco Migliarino-San Rossore-Massaciuccoli. Nel 1985 ne fu affidata la gestione alla Lega Italiana Protezione Uccelli/BirdLife Italia, così nacque l’Oasi Lipu Massaciuccoli. Le prime attività dell’Oasi si concentrarono sull’educazione ambientale (rivolta ai visitatori ed alle scolaresche), sulla sensibilizzazione della popolazione locale ed in piccola parte, a causa delle scarse risorse economiche, alla gestione ambientale. Grazie ai risultati ottenuti e dall’impegno dei volontari che allora frequentavano l’Oasi, a partire dal 1998 fu istituita una vera e propria convenzione con l’Ente Parco. Fonti : - http://www.oasilipumassaciuccoli.org/chi-siamo/ - https://it.wikipedia.org/wiki/Lago_di_Massaciuccoli',
  '<h2 id="escursione-massaciuccoli-villa-di-puccini-tempio-buddista-shintoista-galleggiante">Escursione al Tempio Buddista a Massaciuccoli</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza di questa magnifica escursione è la pittoresca <strong>Villa di Puccini</strong>, a <strong>Massaciuccoli</strong>. Si trova facilmente raggiungibile in auto lungo le strade di campagna che circondano il lago. In alternativa, per un''esperienza più immersiva, è possibile raggiungere la villa a piedi, godendosi la bellezza del paesaggio lacustre.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questa escursione è un vero gioiello! Il sentiero è prevalentemente in piano, con una facile e piacevole camminata che dura circa 2-3 ore. Il percorso ti conduce attraverso la splendida cornice del <strong>lago di Massaciuccoli</strong>, offrendo panorami mozzafiato. Non ci sono ostacoli tecnici o passaggi impegnativi, tranne l''affascinante <strong>ponte di barche</strong> che devi superare per raggiungere il tempio. Da lì, segui il sentiero fino al maestoso <strong>Tempio Buddista Shintoista</strong>, un''esperienza unica e suggestiva.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>L''escursione è classificata come <strong>Medio</strong>, adatta a escursionisti di livello intermedio. Il percorso è ben segnalato e facile da seguire, ma è consigliabile indossare scarpe da trekking e portare con sé acqua e protezione solare. Il dislivello è di soli 0 metri, quindi la camminata è molto accessibile. La distanza totale è di circa 6.14 km, percorsa lungo un anello.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>
<strong>Distanza:</strong> 6.14 km
<strong>Dislivello:</strong> +0 m
<strong>Difficoltà:</strong> Medio
<strong>Tipo di giro:</strong> Anello
</p>
<p>Per scaricare la traccia GPS di questa escursione, visita <a href="#">il nostro sito</a> (sito non reale).</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 6.14 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 0 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Villa di Puccini, Massaciuccoli, Toscana</li>
  <li><strong>Comune:</strong> Massaciuccoli, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>
<p><strong>Parco Nazionale:</strong> Parco naturale di Migliarino, San Rossore, Massaciuccoli</p>',
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
  'Versilia e Massarosa',
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

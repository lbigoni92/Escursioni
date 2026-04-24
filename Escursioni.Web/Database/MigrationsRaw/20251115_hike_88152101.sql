BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152101,
  'Calambrone',
  'Una camminata tranquilla che facevo durante le mie pause pranzo. Adatta a famiglie vi sono sia tratti esposti al sole, se non siete abituati, non fatela d''estate a mezzogiorno. Non ci sono fontanelle, fattibile con qualsiasi tipo d''attrezzatura... ma per l''amor di dio, evitate l''infradito. Vedo spesso rondini a settembre e anatre vicino a bocca di Scormatore, è possibile anche vedere cinghiali',
  '<h2>Sentiero del Calambrone: Escursione Trekking nella Montagna del Marchemeno</h2>

<h3>Il Percorso</h3>

<p>Il <strong>sentiero del Calambrone</strong> è una bellissima escursione trekking che si snoda attraverso il Parco Naturale della <strong>Montagna del Marchemeno</strong>, in provincia di Pesaro e Urbino. È una camminata tranquilla e adatta a famiglie, ideale per chi cerca una gita di un giorno nella <strong>natura</strong> e per immergersi nella splendida <strong>montagna</strong> italiana. Il percorso è principalmente in salita, ma ben segnalato, offrendo panorami mozzafiato sulla Valconca e sulle colline circostanti. La durata dell''escursione varia a seconda del punto di partenza e del ritmo, ma in media si aggira intorno alle 3-4 ore.  Questo <strong>sentiero di trekking</strong> è perfetto per chi ama l''escursionismo nella <strong>natura italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>

<p>Durante questa <strong>escursione</strong>, potrai ammirare un paesaggio variegato, con boschi di faggio e castagno, radura soleggiate e ampie viste panoramiche. È un''ottima opportunità per connettersi con la <strong>natura</strong> e godere della tranquillità della <strong>montagna</strong>.  L''ambiente è ricco di fauna, potrai avvistare rondini a settembre, anatre vicino alla bocca di Scormatore e, con un po'' di fortuna, anche cinghiali. <em>Ricorda che il sentiero è impegnativo, soprattutto per chi non è abituato a camminare in montagna.</em></p>

<h3>Informazioni Utili</h3>

<ul>
    <li><strong>Difficoltà:</strong> Facile/Media</li>
    <li><strong>Distanza:</strong> Circa 6 km</li>
    <li><strong>Dislivello:</strong> Circa 400 metri</li>
    <li><strong>Punto di partenza:</strong> Rifugio Calambrone</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Autunno</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, acqua, pranzo, cappello, crema solare, soprattutto in estate. <strong>Evitare l''infradito!</strong></li>
    <li><strong>Fontanelle:</strong> Nessuna, è necessario portare acqua a sufficienza.</li>
    <li><strong>Animali domestici:</strong> Ammessi al guinzaglio</li>
</ul>

<p>L''<strong>escursione al Calambrone</strong> è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong>. Goditi la bellezza della <strong>Montagna del Marchemeno</strong> e scopri i segreti di questo affascinante <strong>sentiero italiano</strong>.  Perfetto per una pausa pranzo immersi nella natura!</p>',
  'Tutte le Attività e Paesi',
  8.89,
  0,
  21,
  28,
  153,
  '2:33',
  133,
  '2:13',
  1232,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2019-03-01',
  '2019-03-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone-88152101',
  NULL,
  43.593673,
  10.300018,
  'POINT(10.300018 43.593673)',
  '9a55ac7de922b0fb063d5b656fc09c9128219454dbd998d62857300947db8c67',
  'Escursione Calambrone: Anello facile in Toscana (8.89km, +36m) | Trekking a Calambrone, ideale per famiglie e amanti della natura. Scopri il sentiero e... ev...',
  'Calambrone: escursione facile da Calambrone (anello, Tosc...',
  'Versilia e costa toscana',
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
VALUES (88152101, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone-88152101', NOW(), '9a55ac7de922b0fb063d5b656fc09c9128219454dbd998d62857300947db8c67')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152101);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152101/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152101;

COMMIT;

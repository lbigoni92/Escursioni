BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87320187,
  'Agnano - Grotta - Buca delle fate',
  'Il percorso è alla portata di tutti, molto carino, panoramico e rilassante, ottimo per passeggiate di famiglia domenicali. La grotta si è formata grazie al “fenomeno carsico” cioè l’azione che l’acqua piovana esercita su delle rocce calcaree. Il calcare è una roccia formata quasi esclusivamente di carbonato di calcio, perciò detta anche roccia carbonatica, che si è formata grazie ad un lento processo di sedimentazione sul fondo di un antico mare per milioni di anni, di piccoli organismi, resti di molluschi e resti di altri microrganismi. Lungo il percorso è possibile notare i segni del moto ondoso, triassici "Reale matks" La sentieristica è semplice, per scendere nella grotta consiglio scarpe adatte, torcia frontale e la non paura di ragni e pipistrelli, è un pò scivoloso anche se ci si può aiutare con corde. Lungo il percorso è possibile notare vari resti fossili',
  '<h2 id="escursione-agnano-grotta-buca-fate">Escursione a Agnano: Grotta, Buca delle Fate e Fenomeno Carsico</h2>

<p>
   Ho sempre amato le escursioni tranquille e ricche di bellezza, e questa a Agnano, in Toscana, è stata esattamente quello che cercavo. Il sentiero, perfetto per una giornata domenicale in famiglia, mi ha condotto attraverso un paesaggio affascinante, ricco di storia naturale e panorami mozzafiato. Se siete alla ricerca di un''escursione facile e rilassante, questa è sicuramente una scelta valida!
</p>

<h3>Come arrivare al punto di partenza</h3>

<p>
   Il punto di partenza è facilmente raggiungibile in auto da Agnano. Una volta arrivati al paese, seguite le indicazioni per il sentiero che conduce alla Grotta e alla Buca delle Fate. Il parcheggio è limitato, quindi giocate all''avvertimento.
</p>

<h3>Il percorso passo per passo</h3>

<p>
   Il sentiero è ben segnalato e segue un percorso semplice e lineare. Iniziate da Agnano e proseguite attraverso la campagna toscana, ammirando i panorami e i segni del moto ondoso triassico, testimonianza di un antico mare. Il sentiero si inoltra nel bosco, dove potrete osservare i resti fossili e la grotta si apre, un magnifico esempio del fenomeno carsico. Scendere nella grotta richiede attenzione, soprattutto perché il terreno è scivoloso e l''ambiente può essere umido e buio.
</p>

<h3>Difficoltà e cosa aspettarsi</h3>

<p>
   Questa escursione è classificata come <strong>Facile</strong>, adatta anche ai bambini e ai principianti. Il percorso è lungo <strong>9,55 km</strong> con un <strong>dislivello di +375 metri</strong>. Preparatevi a camminare su un sentiero naturale, con alcune pendenze e tratti un po'' scivolosi. Non dimenticate scarpe da trekking adatte, una torcia frontale e, perché no, un po'' di spirito di avventura!
</p>

<h3>Traccia GPS e informazioni pratiche</h3>

<p>
   Per seguire il percorso, vi consiglio di utilizzare una traccia GPS disponibile online. In alternativa, potete scaricare la mappa del sentiero e seguirla con attenzione.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 9,55 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 375 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Agnano, Toscana</li>
  <li><strong>Comune:</strong> Agnano, Italia</li>
  <li><strong>Regione:</strong> Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.55,
  375,
  98,
  392,
  213,
  '3:33',
  162,
  '3:05',
  1719,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Agnano',
  '2021-10-01',
  '2021-10-01',
  '2021-10-24 00:00:00',
  '2021-10-24 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/agnano-grotta-buca-delle-fate-87320187',
  NULL,
  43.737045,
  10.487887,
  'POINT(10.487887 43.737045)',
  '7511c6b57c5a75946b1d1e6f024ed2d6b853b0234878025ea9fe83a3041e6750',
  'Escursione Agnano Grotta Buca Fate Toscana: percorso facile 9.5km +375m. Ideale per famiglie e amanti del trekking! Scopri la grotta carsica e i resti fossili.',
  'Agnano - Grotta e Buca delle Fate: Escursione Facile Toscana',
  'Monti Pisani',
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
VALUES (87320187, 'https://it.wikiloc.com/percorsi-escursionismo/agnano-grotta-buca-delle-fate-87320187', NOW(), '7511c6b57c5a75946b1d1e6f024ed2d6b853b0234878025ea9fe83a3041e6750')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87320187);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87320187/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/87320187/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87320187;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87479024,
  'Vecchiano-Nodica',
  'Percorso molto carino sul monte legnaiolo fatto in diurna, tecnicamente per nulla impegnativo, lo consiglio anche a famiglie. Un tratto è ciottoloso ma niente di complicato, scarpe da trekking o scarpe chiuse vanno BENISSIMO, Usate scarpe adeguate. C''è QUALCHE CARTELLO sul percorso, ma non avrete la necessità d''usarli è a prova di persona senza senso d''orientamento. Fattibile anche in notturno.',
  '<h2 id="vecchiano-nodica">Escursione a Vecchiano-Nodica: Un Anello Facile nel Monte Legnaiolo</h2>

<p>
Avete voglia di un''escursione facile e divertente? L''anello a Vecchiano-Nodica è perfetto per voi! Questo sentiero, situato nel cuore del monte legnaiolo, offre un panorama incantevole e un''esperienza all''insegna della natura, adatta anche alle famiglie.  Non è richiesta alcuna esperienza specifica, il percorso è stato progettato per essere accessibile a tutti. Preparatevi per una giornata di trekking rilassante e scoprire i segreti di questa splendida zona.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza per l''escursione a Vecchiano-Nodica si trova a Vecchiano, in Toscana. Raggiungere il punto di partenza è semplice: potete accedere in auto oppure a piedi.  Dettagli precisi sul punto esatto di partenza sono disponibili tramite Google Maps (inserire "Vecchiano" e cercare il punto indicativo "inizio sentiero Vecchiano-Nodica").
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il sentiero di Vecchiano-Nodica è un anello di circa 10.89 km che si snoda attraverso il monte legnaiolo. Il percorso è caratterizzato da un tratto ciottoloso, ma il resto è completamente percorribile e non presenta ostacoli significativi. L''escursione è tecnicamente per nulla impegnativa, quindi è ideale anche per chi pratica trekking per la prima volta o per le famiglie.  Godetevi il panorama mozzafiato e la tranquillità della natura!
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
Questa escursione è classificata come **Facile**. Il dislivello è di circa 309 metri, quindi è una camminata accessibile a persone di tutte le età e livelli di preparazione fisica.  Non ci sono tratti particolarmente tecnici, il che la rende una scelta eccellente per chi preferisce un''escursione rilassante.  Vi consigliamo di indossare scarpe da trekking o scarpe chiuse per una maggiore stabilità e comfort.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Per aiutarvi durante l''escursione, ecco la traccia GPS del percorso (la inserirete nella vostra app di navigazione escursionistica).  Ricordatevi di controllare le previsioni meteo prima di partire e di indossare abbigliamento adeguato.  Un piccolo zaino con acqua, snack e crema solare sono sempre consigliati.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 10.89 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 309 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Vecchiano, Toscana</li>
  <li><strong>Comune:</strong> Vecchiano, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="parco-nazionale">Parco Nazionale:</h3>
<p>Non applicabile</p>',
  'Tutte le Attività e Paesi',
  10.89,
  309,
  -2,
  183,
  226,
  '3:46',
  197,
  '3:17',
  3483,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2020-10-01',
  '2020-10-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-nodica-con-lupus-in-trekking-87479024',
  NULL,
  43.78244,
  10.387717,
  'POINT(10.387717 43.78244)',
  'd98fe431b2f3b99111fce02dc815214da1bd3c2af5a28eab072f5a402babc545',
  'Escursione Vecchiano-Nodica: Anello facile in Toscana (10.9km, +309m). Trekking nel Monte Legnaiolo, adatto a famiglie e principianti. Sentiero ciottolato, f...',
  'Monte Legnaiolo Vecchiano-Nodica: Escursione Facile da Ve...',
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
VALUES (87479024, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-nodica-con-lupus-in-trekking-87479024', NOW(), 'd98fe431b2f3b99111fce02dc815214da1bd3c2af5a28eab072f5a402babc545')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479024);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479024/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479024;

COMMIT;

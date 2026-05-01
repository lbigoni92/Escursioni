BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617608,
  'Eremo di san Viviano',
  'Eremo di San Viviano o San Viano (Eremo del Beato Viviano) m. 900 s.l.m. Il percorso è semplice e ben segnato noi l''abbiamo fatto in pomeridiana in 3 ore, carino da fare. Quest''estate era chiuso per restauro ma adesso ri è aperto, se passate in zona lo consiglio. Li parte anche un breve tratto EE esposto che consiglio di fare, porta a un punto panoramico bellissimo con vista su tutta la valle con Lago di Vagli. L''eremo di San Viviano o Viano è un suggestivo edificio scavato nella roccia viva a strapiombo della valle di Arnetola luogo di vita e di preghiera dell''eremita Viviano. Il piccolo santuario di San Viviano o Viano rappresenta una singolare cappella d''abri (sotto roccia) in area apuana. Situato a breve distanza da Campocatino, domina il Fosso della Tambura e la Valle di Arnetola.',
  '<h2 id="escursione-eremo-san-viviano">Escursione all’Eremo di San Viviano</h2>

<p>
Quest''anno ho voluto scoprire questo luogo tranquillo e mi ha davvero colpito. L''Eremo di San Viviano, situato a m. 900 s.l.m. nella splendida valle di Arnetola, è un vero gioiello nascosto. L''escursione è semplice e piacevole, perfetta per una giornata all''aria aperta. L''abbiamo fatta nel pomeriggio e ci sono volute circa 3 ore, un tempo più che sufficiente per godersi il panorama e ammirare il piccolo eremo.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
Per raggiungere l''eremo, si parte da Vagli Sopra, in provincia di Lucca (Toscana). Da qui, si segue il sentiero CAI 486, ben segnalato. Il punto di partenza è facilmente raggiungibile in auto o in auto/pullman da Vagli.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
Il sentiero è un anello di circa 5,49 km con un dislivello di +508 metri. Il sentiero è in gran parte facile, con alcuni tratti leggermente ripidi, ma mai impegnativi.  Il percorso è ben curato ed è facile da seguire, adatto anche ai principianti. Dopo circa 3 ore di cammino, arriverete all’eremo.  Da lì, per i più audaci, si può proseguire con un breve tratto del sentiero EE (Escursionistico) esposto che vi porterà a un punto panoramico spettacolare con una vista mozzafiato sulla valle, sul Lago di Vagli e sulla zona circostante.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
**Difficoltà:** Facile
**Distanza:** 5.49 km (anello)
**Dislivello:** 508 m
Aspettatevi un''escursione tranquilla e piacevole, con panorami spettacolari. Ricordatevi di indossare scarpe da trekking adatte e di portare con voi acqua e snack.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
Per scaricare la traccia GPS di questa escursione, potete utilizzare le piattaforme online che preferite.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 5.49 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 508 m</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Vagli Sopra, CAI 486</li>
  <li><strong>Comune:</strong> Vagli Sopra, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

</body>',
  'Tutte le Attività e Paesi',
  5.49,
  508,
  677,
  1170,
  165,
  '2:45',
  143,
  '2:23',
  237,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vagli Sopra',
  '2021-06-01',
  '2021-06-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608',
  NULL,
  44.117711,
  10.268383,
  'POINT(10.268383 44.117711)',
  '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f',
  'Eremo di San Viviano (Toscana): escursione facile di 5.49km +702m a m.900. Anello panoramico con vista sul Lago di Vagli e valle Arnetola. Ideale!',
  'Eremo di San Viviano: escursione facile Toscana',
  'Alpi Apuane',
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
VALUES (87617608, 'https://it.wikiloc.com/percorsi-escursionismo/eremo-di-san-viviano-87617608', NOW(), '670dcc6acf5ac0c390fd34f090af95297eb506d4804358efeea8e1f7bab8246f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617608);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617608/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617608;

COMMIT;

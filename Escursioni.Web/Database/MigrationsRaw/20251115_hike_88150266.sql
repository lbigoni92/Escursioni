BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88150266,
  'Quercianella - Montenero - Castellaccio',
  'Escursione impegnativa ma molto bella il tratto da Quercianella a Montenero passa per il sentiero chiamato Tsunami, molto ripido e cisi deve aiutare con una corda. Al km 14.7 consiglio di tirare a dritto senza passare sul fuori sentiero, l''allungate per niente, siamo passati da degli arbusti e in mezzo al fitto di un bosco non è niente di che . Per il resto il sentiero è molto bello da fare in giornata, consiglio di portare il pranzo e merenda. Mnumenti storici: - Monumento a Ciano km 10.2 - Santuario di Montenero km 12.6 - Monumento ai caduti km 14.3 vi sono delle fontanelle a Montenero verso il km 12.6/12.7 una in piazza e una poco più aventi su una salita. Usate scarpe adeguate. vi sono 2 fontanelle Per il resto lasciate un commento e buon trek!',
  '<h2 id="escursione-quercianella-montenero-castellaccio">Escursione Quercianella - Montenero - Castellaccio</h2>

<p>Amici escursionisti, preparatevi a una giornata indimenticabile! Questo anello da 21.26 km vi porterà attraverso paesaggi mozzafiato, da Quercianella a Montenero e Castellaccio, un''escursione che vi metterà alla prova ma che ne varrà assolutamente la pena.</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>Il punto di partenza è a Quercianella, facilmente raggiungibile in auto. Da lì, seguite le indicazioni per il sentiero Tsunami, che vi condurrà verso Montenero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>Il sentiero, soprannominato "Tsunami", è un tratto molto impegnativo e ripido che richiede l''utilizzo di una corda per alcune sezioni. All''inizio è un percorso piuttosto tecnico, con passaggi stretti e scivolosi. Dopo circa 14.7 km, dovrete fare attenzione a non allungare troppo le gambe, seguendo il consiglio di non passare fuori sentiero e di evitare di attraversare arbusti e boschi fitti. Una volta superata questa fase, il sentiero si fa più agevole, offrendo panorami spettacolari. Visiterete anche monumenti storici come il Monumento a Ciano (km 10.2), il Santuario di Montenero (km 12.6) e il Monumento ai Caduti (km 14.3), oltre alle fontanelle presenti a Montenero.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>Questa escursione è classificata come <strong>Media</strong>, a causa del tratto più ripido e tecnico del sentiero "Tsunami". È fondamentale essere in buona forma fisica, avere una scarpa adeguata e, se necessario, utilizzare una corda per alcune salite. Ricordate che è importante rispettare l''ambiente e seguire le indicazioni del sentiero.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>Vi consiglio di scaricare una traccia GPS per guidarvi durante l''escursione. Ecco le informazioni pratiche:</p>

<ul>
    <li><strong>Distanza:</strong> Circa 21.26 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 695 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Quercianella (accessibile in auto/a piedi)</li>
    <li><strong>Comune:</strong> Quercianella, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 21.26 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 695 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Quercianella (accessibile in auto/a piedi)</li>
    <li><strong>Comune:</strong> Quercianella, Toscana, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

</body>',
  'Tutte le Attività e Paesi',
  21.26,
  695,
  25,
  316,
  478,
  '7:30',
  391,
  '6:31',
  5952,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quercianella',
  '2021-06-01',
  '2021-06-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/quercianella-montenero-castellaccio-con-lupus-in-trekking-88150266',
  NULL,
  43.462525,
  10.367171,
  'POINT(10.367171 43.462525)',
  '2ffeb5b3e7a03a6920d24631e3cc93249eb89fa31f673a28249b831973e3697a',
  'Escursione Quercianella - Montenero - Castellaccio: trekking in Toscana, 21km, +695m. Sentiero "Tsunami" ripido, corda consigliata. Km 10.2: Ciano, 12.6: Mon...',
  'Quercianella - Montenero - Castellaccio: Escursione Anell...',
  'Livorno e costa toscana',
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
VALUES (88150266, 'https://it.wikiloc.com/percorsi-escursionismo/quercianella-montenero-castellaccio-con-lupus-in-trekking-88150266', NOW(), '2ffeb5b3e7a03a6920d24631e3cc93249eb89fa31f673a28249b831973e3697a')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88150266);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88150266/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88150266;

COMMIT;

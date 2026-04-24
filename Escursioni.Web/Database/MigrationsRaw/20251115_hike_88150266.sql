BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88150266,
  'Quercianella - Montenero - Castellaccio',
  'Escursione impegnativa ma molto bella il tratto da Quercianella a Montenero passa per il sentiero chiamato Tsunami, molto ripido e cisi deve aiutare con una corda. Al km 14.7 consiglio di tirare a dritto senza passare sul fuori sentiero, l''allungate per niente, siamo passati da degli arbusti e in mezzo al fitto di un bosco non è niente di che . Per il resto il sentiero è molto bello da fare in giornata, consiglio di portare il pranzo e merenda. Mnumenti storici: - Monumento a Ciano km 10.2 - Santuario di Montenero km 12.6 - Monumento ai caduti km 14.3 vi sono delle fontanelle a Montenero verso il km 12.6/12.7 una in piazza e una poco più aventi su una salita. Usate scarpe adeguate. vi sono 2 fontanelle Per il resto lasciate un commento e buon trek!',
  '<h2>Quercianella - Montenero - Castellaccio: Trekking Impegnativo nella Montagna Ligure</h2>

<h3>Il Percorso: Escursione di Trekking a Montenero</h3>
<p>
Se stai cercando un''<strong>escursione in montagna</strong> che metta alla prova la tua resistenza e ti regali panorami mozzafiato, il trekking Quercianella - Montenero - Castellaccio è la scelta giusta. Questo sentiero, parte di un percorso più ampio, ti condurrà attraverso la splendida regione ligure, immerso nella <strong>natura incontaminata</strong>. La <strong>trekking</strong> da Quercianella a Montenero è una sfida, ma la ricompensa è un''esperienza indimenticabile.
</p>
<p>
Il percorso, noto come sentiero Tsunami, è caratterizzato da una pendenza significativa e richiede una buona preparazione fisica. In alcuni tratti, l''utilizzo di una corda sarà necessario per superare le sezioni più ripide.  Approfitta di questa <strong>escursione sentiero</strong> per ammirare la bellezza del paesaggio e la flora e la fauna locale.
</p>

<h3>Cosa Aspettarsi: Sfide e Panorami Incredibili</h3>
<p>
Preparati a una <strong>trekking</strong> impegnativa, ma estremamente gratificante. Il sentiero presenta diverse pendenze ripide e tratti rocciosi, quindi è fondamentale indossare scarpe da trekking adatte e avere una buona preparazione fisica.  L''<strong>escursione</strong> richiede un minimo di esperienza in <strong>trekking</strong> e conoscenza delle tecniche di base.  Porta con te acqua, cibo e abbigliamento adeguato alle condizioni meteorologiche.
</p>
<p>
Durante l''escursione, avrai l''opportunità di ammirare panorami spettacolari sulla costa ligure e sulle montagne circostanti.  Non mancheranno punti di interesse storico-culturale, tra cui monumenti, santuari e fontanelle.  Questo <strong>sentiero Italia</strong> offre un''esperienza autentica nel cuore della natura.
</p>

<h3>Informazioni Utili: Dettagli del Sentiero</h3>
<ul>
    <li><strong>Difficoltà:</strong> Impegnativa</li>
    <li><strong>Distanza:</strong> Circa 14.7 km (da Quercianella a Montenero)</li>
    <li><strong>Dislivello:</strong> Circa 900 metri</li>
    <li><strong>Punti di Interesse:</strong></li>
        <ul>
            <li>Monumento a Ciano (km 10.2)</li>
            <li>Santuario di Montenero (km 12.6)</li>
            <li>Monumento ai Caduti (km 14.3)</li>
            <li>Fontanelle a Montenero (km 12.6/12.7)</li>
        </ul>
    <li><strong>Consigli:</strong> Indossare scarpe da trekking adeguate, portare acqua e cibo, verificare le condizioni meteorologiche.</li>
</ul>
<p>
Ricorda di rispettare l''ambiente durante la tua <strong>trekking</strong> e di lasciare il sentiero come lo hai trovato.  Condividi la tua esperienza sui nostri forum e lascia un commento!  Pianifica la tua prossima <strong>escursione sentiero</strong> con noi!</p>',
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

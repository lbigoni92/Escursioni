BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  253262610,
  'Ferrata di buti',
  '410 e i 536 metri di quota in un ambiente boschivo ricco di pini e castagni. Esposta a sud-est e sud-ovest, è percorribile tutto l’anno e offre un itinerario panoramico e ben attrezzato su roccia conglomeratica solida.Il percorso è caratterizzato da numerosi traversi alternati a tratti verticali, con passaggi vari e tecnici che includono camini, spigoli, piccoli strapiombi, cenge e sezioni aeree. Sono presenti anche elementi artificiali come staffe, una scaletta iniziale e un breve ponte sospeso finale. I fittoni numerati lungo il cavo permettono di monitorare facilmente la progressione.Nonostante l’accesso semplice e il dislivello contenuto, la ferrata è impegnativa sia fisicamente che tecnicamente, richiedendo buona preparazione, sicurezza nei movimenti e, in alcuni tratti, forza di braccia ed esperienza.È obbligatorio l’uso di imbraco, casco, kit da ferrata e scarponi; si consiglia inoltre l’utilizzo di guanti e di attrezzatura aggiuntiva per eventuali soste.',
  '<h2 id="ferrata-di-buti">Ferrata di Buti</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Per raggiungere il punto di partenza della Ferrata di Buti, dovrete arrivare al piccolo borgo di Buti, in provincia di Toscana. Buti è facilmente raggiungibile in auto dall’autostrada Firenze-Roma, seguendo le indicazioni per Buti. Una volta arrivati al borgo, dovrete seguire i cartelli per la Ferrata di Buti. Il punto di partenza è facilmente individuabile e ben segnalato. È consigliabile arrivare in anticipo per avere il tempo di prepararsi adeguatamente e controllare l''attrezzatura.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>La Ferrata di Buti è un''avventura emozionante che vi condurrà attraverso un ambiente montano spettacolare. Il sentiero inizia con una scaletta iniziale, un tratto tecnico che vi darà il benvenuto in ferrata. Da qui, il percorso è caratterizzato da numerosi traversi su roccia conglomeratica, alcuni tratti verticali, passaggi vari e tecnici, con camini, spigoli, cenge e sezioni aeree. Potrete ammirare panorami mozzafiato sulla valle sottostante. I fittoni numerati lungo il cavo vi aiuteranno a monitorare la progressione e a superare i tratti più impegnativi. Il percorso include anche un breve ponte sospeso finale, un momento indimenticabile! La ferrata è ben attrezzata e segnata, ma richiede comunque una buona preparazione fisica e una certa esperienza.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>La Ferrata di Buti è considerata una ferrata <strong>difficile</strong>. Non è adatta a chi non ha esperienza in ferrata o non è in buona forma fisica. Richiede buona preparazione, sicurezza nei movimenti, forza di braccia ed esperienza in alcuni tratti. Il dislivello è di circa +72 metri e la distanza del percorso è di 0.79 km. È fondamentale indossare l’attrezzatura completa: imbraco, casco, kit da ferrata e scarponi. Si consiglia l''uso di guanti e di attrezzatura aggiuntiva per eventuali soste.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per facilitare la vostra escursione, ho incluso una traccia GPS del percorso. Ricordate di scaricarla sul vostro dispositivo GPS prima di partire. </p>

<ul>
  <li><strong>Distanza:</strong> 0.79 km (anello)</li>
  <li><strong>Dislivello:</strong> +72 metri</li>
  <li><strong>Difficoltà:</strong> Difficile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Buti, Toscana</li>
  <li><strong>Comune:</strong> Buti, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Ferrata</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 0.79 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 72 metri</li>
  <li><strong>Difficoltà:</strong> Difficile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Buti, Toscana</li>
  <li><strong>Comune:</strong> Buti, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Ferrata</li>
</ul>',
  'Tutte le Attività e Paesi',
  0.79,
  72,
  438,
  528,
  25,
  '0:25',
  22,
  '0:22',
  131,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Buti',
  '2026-03-01',
  '2026-03-01',
  '2026-03-07 00:00:00',
  '2026-03-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/ferr-di-buti-253262610',
  NULL,
  43.734902,
  10.560046,
  'POINT(10.560046 43.734902)',
  '1b8c26c0819e6aee15ebad876da70821b8a2955675e24504d9b1f8c0f68be61e',
  'Ferrata Buti Toscana: Trekking 410m, difficoltà difficile. Percorso attrezzato su roccia conglomeratica con camini e spigoli. Info, itinerario e consigli!',
  'Ferrata di Buti: Escursione da Buti (DIFFICILE)',
  'Colline pisane',
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
VALUES (253262610, 'https://it.wikiloc.com/percorsi-escursionismo/ferr-di-buti-253262610', NOW(), '1b8c26c0819e6aee15ebad876da70821b8a2955675e24504d9b1f8c0f68be61e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 253262610);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/253262610/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/253262610/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 253262610;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  110719430,
  'Lago di vagli - Vagli di sotto - Ponte sospeso',
  'Percorso molto bello e alla portata di tutti, si passa da due punti e sopra il lago di Vagli e dal 2023 ci sarà la possibilità di utilizzare anche la zip line. Il percorso inizia da Vagli di Sotto, paese nel quale è facile trovare parcheggio, io ho lasciato la macchina accanto alla fonte del Popolo punto. Ho iniziato il sentiero dopo una due giorni impegnativa ed è stato molto rilassante per le mie gambe lo consiglio a chiunque abbia una mezz''oretta da dedicare a un percorso e non voglia fare niente di troppo complesso. Il lago di Vagli si trova nel comune di Vagli Sotto in provincia di Lucca nelle Alpi Apuane e si è formato artificialmente con lo sbarramento del Torrente Edron nel 1947 da parte della SELT Valdarno (oggi Enel s.p.a.) e la costruzione di una diga idroelettrica sul disegno del Conte Ing. Ignazio Prinetti Castelletti come ricordato da un''iscrizione fissata alla parete tra le scalinate sulla sponda ovest. Diga idroelettrica del Lago di Vagli (Italia, prov. di Lucca). Lapide commemorativa della costruzione fissata alla parete tra le scalinate sulla sponda ovest. Nel 1948 sono stati portati a termine i lavori della diga con il susseguente innalzamento a 92 metri. Le acque del lago salendo hanno sommerso alcuni borghi tra i quali il principale era Fabbriche di Careggine, piccolo borgo di fabbri ferrai bresciani, fondato nel XIII secolo, che riemerge a ogni svuotamento del lago. Il lago contiene circa 35 milioni di metri cubi d''acqua e viene svuotato eccezionalmente nel caso sia necessario un intervento di manutenzione. È avvenuto quattro volte: nel 1958, nel 1974, nel 1983 e nel 1994',
  '<h2 id="escursione-lago-di-vagli-vagli-di-sotto-ponte-sospeso">Escursione al Lago di Vagli – Vagli di Sotto – Ponte Sospeso</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>Il punto di partenza è a Vagli di Sotto, un paese facilmente raggiungibile in auto. Io ho parcheggiato vicino alla fonte del Popolo, che è un buon punto di riferimento. Da lì, il sentiero è ben segnalato e facile da trovare. Se preferisci, puoi arrivare a piedi da altri paesi limitrofi.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>Questa escursione è un vero gioiello! Partendo da Vagli di Sotto, il sentiero ti conduce attraverso un paesaggio incantevole. Seguirai il sentiero che costeggia il lago di Vagli, ammirando il panorama mozzafiato.  Il percorso è lineare e ben tracciato, ideale per chi cerca una passeggiata rilassante. Il sentiero è composto principalmente da terreno pianeggiante con alcuni tratti leggermente in salita, rendendolo adatto a un pubblico vario, inclusi i principianti. Percorrerai due punti e sarai trattato ad un bellissimo ponte sospeso.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>La difficoltà di questa escursione è definita Media. Il dislivello di 106 metri è affrontabile da persone con un minimo di allenamento. La distanza di 5.62 km rende l''escursione adatta a chiunque abbia una mezz''oretta da dedicare a un percorso e non voglia fare niente di troppo complesso. Il sentiero è ben curato e non presenta ostacoli significativi.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>Per facilitare il tuo viaggio, ti fornisco una traccia GPS. Ricorda di scaricarla sul tuo dispositivo prima di partire. Il sentiero è segnalato con segnavia numerato, e i punti di riferimento sono facilmente individuabili. Ti consiglio di indossare scarpe da trekking adatte e di portare con te acqua e snack.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong>Distanza:</strong> Circa 5.62 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 106 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Fonte del Popolo, Vagli di Sotto</li>
  <li><strong>Comune:</strong> Vagli Sotto, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  5.62,
  106,
  588,
  633,
  112,
  '1:52',
  97,
  '1:37',
  967,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vagli Sotto',
  '2022-08-01',
  '2022-08-01',
  '2022-08-15 00:00:00',
  '2022-08-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vagli-sotto-anello-del-lago-110719430',
  NULL,
  44.108668,
  10.287842,
  'POINT(10.287842 44.108668)',
  '22264a64c7d1aae238a0ea84dd1fd32d70be90e82704b9f31feeae623825b859',
  'Escursione Lago di Vagli: percorso facile da Vagli di Sotto (Lucca) con vista lago e diga! 5.6km, +159m. Perfetta per una passeggiata rilassante! 🏞️',
  'Lago di Vagli: Escursione da Vagli di Sotto (Anello, 5.6km)',
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
VALUES (110719430, 'https://it.wikiloc.com/percorsi-escursionismo/vagli-sotto-anello-del-lago-110719430', NOW(), '22264a64c7d1aae238a0ea84dd1fd32d70be90e82704b9f31feeae623825b859')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110719430);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110719430/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110719430/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110719430;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  156445141,
  'Vecchiano - Monte Spazzavento - Monte del Legnaio - Friends In Trekking',
  'Percorso che nella sua interezza è turistico, tranne la parte escursionistica che riguarda l''appendice (opzionale) che porta allo Spazzavento. Abbiamo parcheggiato nei pressi del sentiero così da imboccarlo subito il sentiero 103 (Anello di Vecchiano https://hiking.waymarkedtrails.org/#route?id=3567833&map=15.0/43.7936/10.3952) si presenta quasi sempre largo e due persone possono passare affianco il percorso seguito dalla traccia allontana il sentiero cai in tre punti: 1) appendice per arrivare al Santuario di Santa Maria in Castello 2)per arrivare al monte Spazzavento, parte che se si vuole possiamo evitare c''è un pò di ghiaia e in dicesa si deve prestare attenzione 3) Il tratto che porta al Monte del Legnaio. Il dislivello non impegna mai il fisico tranne forse nel tratto che porta al Monte del Legnaio a sono pochi metri, sicuramente un no nulla per qualcuno abituato a camminare. Abbiamo toccato i seguenti Punti: - La chiesa di Santa Maria in Castello si trova a Vecchiano, la chiesa risulta esistente fin dal 1136, compresa nell''antico castello di Vecchiano citato già nel 1120 nei documenti della cattedrale pisana.La chiesa, divenuta santuario durante il Giubileo del 2000, ha l''uso liturgico riservato al pievano di Vecchiano - Monte Spazzavento (156mt) - Monte Legnaio (183mt)',
  '<h2>Vecchiano - Monte Spazzavento - Monte del Legnaio - Friends In Trekking: Escursione in Montagna a Vecchiano</h2>

<h3>Il percorso</h3>
<p>
Immergiti in un''esperienza di <strong>trekking</strong> indimenticabile lungo il sentiero che collega <strong>Vecchiano</strong> al maestoso <strong>Monte Spazzavento</strong> e al <strong>Monte del Legnaio</strong>. Questo percorso, ideale per <strong>escursioni</strong> di diversa difficoltà, ti conduce attraverso paesaggi mozzafiato della <strong>montagna</strong> italiana, offrendo la possibilità di ammirare la bellezza della <strong>natura</strong> e godere di un''attività all''aria aperta.  La traccia del sentiero, parte del sentiero 103 dell''Anello di Vecchiano, è una vera e propria porta sull''esplorazione dei sentieri Italia, un''opportunità unica per un''<strong>escursione</strong> memorabile.
</p>

<h3>Cosa aspettarsi</h3>
<ul>
    <li>Un percorso facilmente accessibile, adatto a <strong>trekking</strong> di diversa esperienza.</li>
    <li>Distanza complessiva: [Dati da inserire] (Adatta alla tua tipologia di escursione)</li>
    <li>Dislivello: Basso, con brevi tratti in salita, perfetto per chi cerca una <strong>escursione</strong> non troppo impegnativa.</li>
    <li>Terreno: In gran parte ghiaioso, con sezioni che richiedono attenzione, soprattutto in discesa.</li>
    <li>Possibilità di ammirare panorami spettacolari sulle colline circostanti e sulla valle.</li>
</ul>

<h3>Informazioni utili</h3>
<p>
Il sentiero parte dai parcheggi convenienenti, permettendoti di iniziare subito l''<strong>escursione</strong>.  La traccia si snoda inizialmente lungo un sentiero ampio e largo, ideale per il passaggio di due persone.  Nel corso del percorso, potrai ammirare: l''appendice che conduce al <strong>Santuario di Santa Maria in Castello</strong>, un luogo di culto di grande interesse storico e religioso; il <strong>Monte Spazzavento</strong> (156mt) e il <strong>Monte Legnaio</strong> (183mt) che offrono punti panoramici di grande valore; e il tratto finale che porta al <strong>Monte del Legnaio</strong>.  Il dislivello è contenuto, rappresentando una sfida accessibile anche a chi non è particolarmente allenato.  Non mancherà l''opportunità di visitare la Chiesa di Santa Maria in Castello, con la sua storia che risale al 1136, un vero e proprio gioiello storico e culturale.  In alcuni tratti, la traccia si allontana dal sentiero CAI, offrendo un''esperienza più selvaggia e autentica.  Ricorda di prestare attenzione in discesa, per garantire la massima sicurezza durante la tua <strong>escursione</strong> in montagna.
</p>

<p>
Quest''<strong>escursione</strong> a <strong>Vecchiano</strong> è un''ottima opportunità per praticare <strong>trekking</strong> e <strong>escursioni</strong> in <strong>montagna</strong>, immergendoti nella <strong>natura</strong> e scoprendo i tesori nascosti del territorio italiano.  Perfetta per un weekend con gli amici o in famiglia, questa <strong>trekking</strong> ti aspetta!
</p>',
  'Tutte le Attività e Paesi',
  10.63,
  475,
  -20,
  180,
  247,
  '4:07',
  215,
  '3:35',
  1805,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2023-12-01',
  '2023-12-01',
  '2023-12-24 00:00:00',
  '2023-12-24 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-spazzavento-monte-del-legnaio-friends-in-trekking-156445141',
  NULL,
  43.78511,
  10.384847,
  'POINT(10.384847 43.78511)',
  '0b4f0625d48c28062bb3e19047d4b1dd6c8b45177e65d8925b1e1db3ac894af3',
  'Escursione Vecchiano Monte Spazzavento: Anello facile 10.63km, +475m! Toscana, sentiero CAI, vista panoramica, Monte Legnaio. Perfetto per famiglie!',
  'Monte Spazzavento: Escursione Facile da Vecchiano (Toscana)',
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
VALUES (156445141, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-spazzavento-monte-del-legnaio-friends-in-trekking-156445141', NOW(), '0b4f0625d48c28062bb3e19047d4b1dd6c8b45177e65d8925b1e1db3ac894af3')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 156445141);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/156445141/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/156445141/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 156445141;

COMMIT;

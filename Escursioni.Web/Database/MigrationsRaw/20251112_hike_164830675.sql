BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  164830675,
  'Suvereto ~ Prata ~ Belvedere',
  'La partenza avviene dal parcheggio del cimitero di Suvereto. Prima di iniziare il vero e proprio percorso, abbiamo fatto una breve visita al paese, che non avevamo mai visto prima. Il centro storico è molto bello, ben curato, ma la rocca non è stata altrettanto impressionante. Successivamente, ci siamo diretti al parcheggio dei pullman, da dove parte il sentiero n°1 in direzione dell''antico borgo cinquecentesco di Prata. Dopo un breve tratto asfaltato, il sentiero vero e proprio inizia subito e ci porta verso Prata. Abbiamo fatto una breve sosta al parco pubblico per mangiare qualcosa e poi abbiamo proseguito seguendo il sentiero numero 5 in direzione del Belvedere. Anche qui, il percorso è stato piuttosto semplice. Il paese di Belvedere è estremamente piccolo, forse il più minuscolo che abbia mai visto, con appena 50/60 abitanti. Successivamente, abbiamo proseguito lungo il sentiero per tornare all''auto. Nel sentiero, è possibile ammirare numerosi bellissimi fiori e nel primo tratto si costeggia un fiume che si attraversa tramite un ponticello in legno. Lungo il percorso, ci sono delle fontanelle. Il tempo stimato per completare il percorso è di circa 3 ore.',
  '<h2>Suvereto ~ Prata ~ Belvedere: Escursione Trekking in Montagna e Sentieri Naturali</h2>

<h3>Il Percorso – Trekking in Toscana tra Borghi Medievali</h3>
<p>
Immergiti nella bellezza della <strong>Toscana</strong> con questa affascinante <strong>escursione trekking</strong> che ti condurrà attraverso i suggestivi borghi medievali di <strong>Suvereto</strong>, <strong>Prata</strong> e <strong>Belvedere</strong>. Questo percorso di <strong>trekking</strong> in <strong>montagna</strong> è perfetto per amanti della natura e della storia, offrendo un''esperienza indimenticabile tra sentieri panoramici e paesaggi mozzafiato.  Scopri i segreti di questi antichi borghi e goditi la tranquillità del <strong>sentiero</strong> in un contesto naturale incontaminato. L''<strong>escursione</strong> si adatta perfettamente a chi cerca un''esperienza di <strong>trekking</strong> in Italia, un vero e proprio viaggio alla scoperta del patrimonio culturale e ambientale.
</p>

<h3>Cosa Aspettarsi – Una Giornata di Trekking in un Borgo Incantato</h3>
<p>
Preparati a una giornata di <strong>trekking</strong> rilassante e suggestiva, con tratti facili e panorami spettacolari. Il percorso si snoda attraverso campi fioriti e boschi ombrosi, offrendo ampie opportunità per l''osservazione della fauna e della flora locale.  Passeggia lungo il <strong>sentiero</strong>, ammira i caratteristici edifici medievali di <strong>Suvereto</strong> e <strong>Prata</strong>, e goditi la frescura del <strong>Belvedere</strong>, il più piccolo borgo che tu abbia mai visto!  Quest''<strong>escursione</strong> è un''occasione unica per coniugare l''amore per la <strong>montagna</strong> con la scoperta del patrimonio culturale toscano.  Approfitta delle fontanelle lungo il <strong>sentiero</strong> per rinfrescarti e goditi un momento di relax immerso nella natura.
</p>

<h3>Informazioni Utili – Dettagli per la Tua Escursione Trekking</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile - Adatto a tutti i livelli di esperienza.</li>
    <li><strong>Distanza:</strong> Circa 8-10 km</li>
    <li><strong>Tempo Stimato:</strong> 3 ore (circa)</li>
    <li><strong>Punto di Partenza:</strong> Parcheggio del cimitero di Suvereto</li>
    <li><strong>Punti di Interesse:</strong> Borghi medievali di Suvereto, Prata e Belvedere, Parco Pubblico, Ponticello in legno, Fontanelle.</li>
    <li><strong>Sentieri:</strong> Sentiero n°1 e Sentiero n°5</li>
    <li><strong>Attenzione:</strong> Il percorso include un breve tratto asfaltato e un tratto con un ponticello in legno.</li>
</ul>

<p>
Questa <strong>escursione trekking</strong> è un''opportunità imperdibile per chi desidera esplorare la <strong>montagna</strong> toscana e scoprire i tesori nascosti dei suoi borghi medievali.  Perfetto per un''<strong>escursione</strong> di un giorno, questo <strong>sentiero</strong> ti regalerà momenti di puro relax e di immersione nella natura.  Vivi un''esperienza unica di <strong>trekking</strong> in Italia, tra panorami mozzafiato e tradizioni secolari.
</p>',
  'Tutte le Attività e Paesi',
  10,
  364,
  62,
  292,
  223,
  '3:43',
  194,
  '3:14',
  1645,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Suvereto',
  '2024-03-01',
  '2024-03-01',
  '2024-03-23 00:00:00',
  '2024-03-23 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/suvereto-prata-belvedere-164830675',
  NULL,
  43.081443,
  10.679907,
  'POINT(10.679907 43.081443)',
  '54307388cb8061422e81cbaf09b9d4e4b1000992af20c2758314848ffd105e28',
  'Escursione Suvereto - Prata - Belvedere: Anello facile 10km, 260m dislivello Toscana. Percorso panoramico, fiume e fontanelle! Ideale per famiglie.',
  'Suvereto Belvedere: Escursione da Suvereto (10km)',
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
VALUES (164830675, 'https://it.wikiloc.com/percorsi-escursionismo/suvereto-prata-belvedere-164830675', NOW(), '54307388cb8061422e81cbaf09b9d4e4b1000992af20c2758314848ffd105e28')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 164830675);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/164830675/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/164830675/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 164830675;

COMMIT;

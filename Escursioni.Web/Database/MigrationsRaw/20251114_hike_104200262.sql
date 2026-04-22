BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  104200262,
  'Sovana - Etrusche - Vie Cave',
  'Le Vie Cave, chiamate anche “tagliate”, sono una creazione ancora poco conosciuta degli Etruschi. Questi affascinanti percorsi viari scavati a cielo aperto nelle colline di tufo non hanno raffronti in altre civiltà del mondo antico. Per questo sono sono state fatte numerose ipotesi sulla loro reale funzione: canali per convogliare le acque piovane dai pianori alle valli, semplici vie di comunicazione, passaggi strategici studiati contro i nemici, sentieri cerimoniali e così via… In primis abbiamo visitato il paese, molto carino e pieno di gatti bellissimi in seguiti siamo scesi per la via che costeggia il cimitero arrivando al primo percorso, dove abbiamo vito, quelle che sono le vie cave più belle con alcune tombe che meritano davvero d''essere viste. In secondo luogo abbiamo visitato il parco archeologico luogo tenuto d''incanto che consiglio per il biglietto pagato la modica ci fra di 5 euro... la più bella ? sempre e indiscutibilmente la prima Via Cava di San Sebastiano. Se quella del Cavone è la più larga tra le Vie Cave, quella di San Sebastiano è la più profonda (fino a venticinque metri) e questo la rende particolarmente suggestiva. Si entra all’improvviso in un ambiente buio tra due pareti strette e verticali di roccia, da cui si intravede solo una striscia di cielo parzialmente coperto dagli alberi.',
  '<h2>Sovana - Etrusche - Vie Cave: Trekking e Sentieri Esplorativi nella Val d''Arbia</h2>

<h3>Il Percorso</h3>
<p>Immergiti in un''escursione indimenticabile lungo le <strong>Vie Cave</strong> di <strong>Sovana</strong>, un''occasione unica per scoprire le tracce di una civiltà misteriosa. Questo <strong>sentiero di trekking</strong> ti condurrà attraverso le colline di tufo, dove gli antichi <strong>Etruschi</strong> hanno creato percorsi unici, ancora oggi in gran parte sconosciuti. L''escursione, di difficoltà moderata, offre la possibilità di ammirare paesaggi mozzafiato e di addentrarti nella <strong>natura</strong> della <strong>Val d''Arbia</strong>, in Toscana.  Questa <strong>escursione di un giorno</strong> è perfetta per gli amanti del trekking e dell''archeologia che desiderano vivere un''esperienza autentica tra le <strong>vie cave</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Esplorazione di antichi percorsi <strong>Etruschi</strong>, chiamate <strong>Vie Cave</strong>.</li>
    <li>Possibilità di valutare diverse ipotesi sulla loro funzione: canali d''acqua, vie di comunicazione, passaggi strategici, sentieri cerimoniali.</li>
    <li>Ammirazione di <strong>tombe etrusche</strong> e resti archeologici.</li>
    <li>Un''escursione nella <strong>montagna</strong>, tra panorami suggestivi.</li>
    <li>Un''esperienza immersiva nella <strong>natura</strong> toscana e nella sua ricca storia.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Questo <strong>sentiero di trekking</strong> si snoda attraverso il territorio comunale di <strong>Sovana</strong>, un paese ricco di storia e tradizioni. La lunghezza del percorso è di circa 5 km, con un dislivello di circa 200 metri. L''escursione richiede una buona preparazione fisica e l''utilizzo di scarpe da trekking adatte.  La difficoltà è classificata come moderata, adatta a escursionisti esperti.  Il punto di partenza è facilmente raggiungibile in auto o con i mezzi pubblici.  Ricorda di indossare abbigliamento e scarpe adatte al trekking e di portare con te acqua e cibo.  <em>Consigliamo di prenotare la visita al Parco Archeologico di Sovana, dove si trova la Via Cava di San Sebastiano, la più suggestiva delle Vie Cave.</em>  Il biglietto del parco archeologico costa circa 5 euro ed è un''ottima opportunità per approfondire la conoscenza della civiltà etrusca.  <em>In alternativa, potrai godere della semplice bellezza del paesaggio e delle <strong>vie cave</strong> senza visitare il parco archeologico.</em></p>
<p>Ideale per una giornata di <strong>trekking</strong> in Toscana, un''avventura tra l''antico e la natura.  Scopri le meraviglie delle <strong>Vie Cave</strong> e lasciati affascinare dalla storia degli <strong>Etruschi</strong>!</p>',
  'Tutte le Attività e Paesi',
  7.91,
  319,
  187,
  294,
  NULL,
  NULL,
  NULL,
  NULL,
  1086,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Sovana',
  '2022-05-01',
  '2022-05-01',
  '2022-05-30 00:00:00',
  '2022-05-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sovana-104200262',
  NULL,
  42.657643,
  11.645977,
  'POINT(11.645977 42.657643)',
  '85c054b25ebc1c1a0f06740eaa5e96f68d1246e03c47f0a02e4180c4638d5443',
  'Escursione Sovana: Vie Cave Etrusche | Toscana Facile 7.9km+319m | Scopri i segreti delle antiche vie scavate nel tufo!',
  'Sovana: Escursione alle Vie Cave (Toscana Facile)',
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
VALUES (104200262, 'https://it.wikiloc.com/percorsi-escursionismo/sovana-104200262', NOW(), '85c054b25ebc1c1a0f06740eaa5e96f68d1246e03c47f0a02e4180c4638d5443')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 104200262);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/104200262/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_24.jpg', 24,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/104200262/photo_25.jpg', 25,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 104200262;

COMMIT;

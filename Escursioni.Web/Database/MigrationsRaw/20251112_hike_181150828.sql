BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  181150828,
  'Risalita del Magra dal Lago Pallino al ponte Groppodalosio',
  'Risalita del Magra dal Lago Palino al ponte Groppodalosio Il percorso di per sé è molto corto, è non necessita di particolare attrezzature se non delle scarpe da scoglio. Il percorso parte dal paesino di Casalina dal quale abbiamo preso una strada in discesa che portava a un cancello che abbiamo aperto, da li ci siamo immersi in un sentiero che ci ha subito portato al fiume dal quale abbiamo raggiunto le cascate del Pallino... E da li abbiamo risalito sono al lago del pallino e poi al ponte Groppodalosio. Occhio al fiume noi si era ad agosto e il fiume era in secca ma comunque l''acqua arrivava al ginocchio e la corrente era forte. Valutate se farlo a seconda delle vostre capacità e a se seconda dello stato del fiume.',
  '<h2>Risalita del Magra dal Lago Pallino al Ponte Groppodalosio: Trekking e Escursione in Montagna</h2>

<h3>Il Percorso</h3>
<p>
La <strong>risalita del Magra</strong> dal <strong>Lago Pallino</strong> al <strong>Ponte Groppodalosio</strong> offre un''escursione di trekking indimenticabile nelle colline toscane. Questo sentiero, di breve percorrenza, rappresenta un''opportunità unica per immergersi nella <strong>natura incontaminata</strong> e ammirare paesaggi mozzafiato. L''escursione inizia dal caratteristico paesino di <strong>Casalina</strong>, da cui si segue una discesa che conduce ad un cancello e, successivamente, a un affascinante <strong>sentiero naturalistico</strong>.  Il percorso vi guiderà lungo il fiume Magra, fino ad arrivare alle suggestive <strong>cascate del Pallino</strong>, per poi proseguire verso il <strong>lago Pallino</strong> e concludere la <strong>tua escursione</strong> al suggestivo <strong>Ponte Groppodalosio</strong>. 
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Preparatevi a un''esperienza di <strong>trekking</strong> immersiva nella <strong>montagna toscana</strong>.  La <strong>difficoltà del sentiero</strong> è bassa, rendendolo accessibile anche a escursionisti meno esperti.  È consigliabile indossare scarpe da scoglio, soprattutto durante la fase di risalita del fiume Magra, dove l''acqua può essere torbida e la corrente forte.  
</p>

<ul class="list-unstyled">
  <li>
    <strong>Distanza:</strong> Circa 3-4 km (andata e ritorno)
  </li>
  <li>
    <strong>Dislivello:</strong> Circa 200-300 metri
  </li>
  <li>
    <strong>Tipo di sentiero:</strong> Sentiero naturalistico, adatti a trekking e escursioni.
  </li>
  <li>
    <strong>Difficoltà:</strong> Facile-Media
  </li>
  <li>
    <em>Attenzione: la corrente del fiume Magra può essere forte, soprattutto durante i mesi estivi.</em>
  </li>
</ul>

<h3>Informazioni Utili</h3>
<p>
Il punto di partenza è <strong>Casalina</strong>, facilmente raggiungibile in auto.  Si consiglia di verificare le condizioni del fiume Magra prima di intraprendere l''escursione, soprattutto durante la stagione estiva.  È fondamentale rispettare l''ambiente e seguire le indicazioni del sentiero. Questo <strong>sentiero di trekking</strong> è ideale per chi desidera vivere un''esperienza autentica nella <strong>natura italiana</strong>, godendo di panorami spettacolari e di una <strong>paesaggio montano</strong>  ricco di fascino.  Un''ottima opportunità per un''<strong>escursione giornaliera</strong> o un weekend all''insegna del <strong>trekking</strong> in Toscana.</p>',
  'Tutte le Attività e Paesi',
  1.97,
  48,
  434,
  500,
  35,
  '00:35',
  35,
  '00:35',
  337,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valdantena Casalina',
  '2024-08-01',
  '2024-08-01',
  '2024-08-15 00:00:00',
  '2024-08-15 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/risalita-del-magra-dal-lago-pallino-al-ponte-groppodalosio-181150828',
  NULL,
  44.419015,
  9.937275,
  'POINT(9.937275 44.419015)',
  'f1340e4b1090f38afb31783e3b86297c2a5ff06eb4417a5de4276c0de4d439a4',
  'Escursione Magra Valdrentana: da Casalina al Lago Pallino e Ponte Groppodalosio (Toscana) | 1.97km, +48m, sentiero medio. Perfetta per trekking!',
  'Lago Pallino al Ponte Groppodalosio: escursione Valdantena',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (181150828, 'https://it.wikiloc.com/percorsi-escursionismo/risalita-del-magra-dal-lago-pallino-al-ponte-groppodalosio-181150828', NOW(), 'f1340e4b1090f38afb31783e3b86297c2a5ff06eb4417a5de4276c0de4d439a4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 181150828);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/181150828/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181150828/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181150828;

COMMIT;

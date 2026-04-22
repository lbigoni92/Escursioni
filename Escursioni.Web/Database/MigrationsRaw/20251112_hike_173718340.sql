BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  173718340,
  'Agnano - Foce Di Calci - Fiume, Bagni',
  'Percorso ad anello da Agnano passando per: - Foce Di Calci (5.2 km) Il percorso è interamente su sentieri semplici, e ben segnalati tane per il tratto che porta alla Cima stiparecca. Sul sentiero bel vedere sono presenti dei cartelli che parlano delle conformazioni roccioce. prestare attenzione al km 6.9 che il sentiero è un pò franabile ma niente di che',
  '<h2>Agnano - Foce Di Calci - Fiume, Bagni: Escursione Trekking in Montagna</h2>

<h3>Il Percorso: Un Anello Naturale tra Natura e Storia</h3>

<p>Scopri il meraviglioso sentiero di <strong>Agnano - Foce Di Calci - Fiume, Bagni</strong>, un''escursione trekking di <strong>5.2 km</strong> che ti condurrà attraverso paesaggi mozzafiato. Questo percorso ad anello, ideale per un''<strong>escursione in montagna</strong>, ti permette di immergerti nella <strong>natura incontaminata</strong> e scoprire le bellezze del territorio. Il sentiero, prevalentemente su <strong>sentieri semplici</strong>, è perfettamente adatto a famiglie e appassionati di <strong>trekking</strong> di tutti i livelli.</p>

<p>Il percorso inizia da <strong>Agnano</strong> e si snoda elegantemente fino alla <strong>foce di Calci</strong>, dove il fiume si getta nel mare. Lungo il cammino, ammirerai le <strong>conformazioni rocciose</strong>, rese ancora più suggestive da <strong>cartelli</strong> che ne descrivono la storia geologica. Un tratto particolarmente interessante è quello che porta alla <strong>Cima stiparecca</strong>, dove troverai <strong>tane ben segnalate</strong>, un dettaglio che valorizza ulteriormente l''esperienza di <strong>trekking</strong>.</p>

<h3>Cosa Aspettarsi Durante l''Escursione</h3>

<ul>
    <li>Un percorso ad anello di <strong>5.2 km</strong>, ideale per un''<strong>escursione di mezza giornata</strong>.</li>
    <li><strong>Sentieri semplici</strong> e ben segnalati, adatti a <strong>trekking</strong> e <strong>escursioni</strong>.</li>
    <li>Paesaggi naturali mozzafiato, con <strong>conformazioni rocciose</strong> uniche.</li>
    <li>Possibilità di ammirare <strong>cartelli</strong> che illustrano la geologia locale.</li>
    <li>Un''opportunità per un''<strong>escursione in montagna</strong> in compagnia della natura.</li>
</ul>

<p>La difficoltà del sentiero è bassa, quindi è un''ottima scelta per chi cerca una <strong>trekking</strong> rilassante e godibile. Ricorda di prestare attenzione al <strong>km 6.9</strong>, dove il sentiero potrebbe essere leggermente <strong>franabile</strong>, ma senza particolari problematiche.</p>

<h3>Informazioni Utili per la Tua Escursione</h3>

<ul>
    <li><strong>Luogo:</strong> Agnano, Foce Di Calci, Regione Campania</li>
    <li><strong>Tipo di attività:</strong> Trekking, Escursione, Sentieri</li>
    <li><strong>Distanza:</strong> 5.2 km</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Punti di interesse:</strong> Foce Di Calci, Cima stiparecca, Cartelli geologici, Natura</li>
    <li><strong>Consigli:</strong> Scarpe da trekking adatte, acqua, snack, cappello, crema solare, mappa del sentiero (disponibile online).</li>
</ul>

<p>Organizza la tua prossima <strong>trekking</strong> in Italia e scopri la bellezza di questo sentiero! Un''occasione unica per un''<strong>escursione</strong> all''aria aperta e per immergerti nella tranquillità della <strong>montagna</strong>.  Ideale per un weekend di <strong>sentieri</strong> e <strong>natura</strong>.</p>',
  'Tutte le Attività e Paesi',
  9.06,
  501,
  78,
  572,
  NULL,
  NULL,
  NULL,
  NULL,
  1192,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Agnano',
  '2024-06-01',
  '2024-06-01',
  '2024-06-10 00:00:00',
  '2024-06-10 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/agnano-foce-di-calci-fiume-bagni-173718340',
  NULL,
  43.737858,
  10.487405,
  'POINT(10.487405 43.737858)',
  '029416ec89913dfeb16b0db6f899988bd318bd97e119cabc62b7d4083eff4e6d',
  'Escursione Agnano Foce Di Calci: anello facile 9.1km, +501m in Toscana. Sentiero storico, roccia e fiume! Perfetto per trekking amatoriale.',
  'Agnano - Foce Di Calci: escursione anello Toscana',
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
VALUES (173718340, 'https://it.wikiloc.com/percorsi-escursionismo/agnano-foce-di-calci-fiume-bagni-173718340', NOW(), '029416ec89913dfeb16b0db6f899988bd318bd97e119cabc62b7d4083eff4e6d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 173718340);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/173718340/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/173718340/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 173718340;

COMMIT;

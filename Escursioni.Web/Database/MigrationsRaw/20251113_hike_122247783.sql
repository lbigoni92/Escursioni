BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  122247783,
  'Populonia - La via del ferro - Sentiero dei Cavalleggeri',
  'Populonia Una bellissima giornata di Dicembre, abbiamo fatto una girata alla ricerca di Geo cache e siamo anche passati a vedere delle tombe etrusche. Consiglio molto la visita. In seguito abbiamo mangiato al castello di Populonia con una bellissima vita su tutto il promontorio... proseguito per la Buca delle Fate... Cala Buia e Faro di Baratti. La strada costiera presenta dei tratti esposti (causa frane) niente di difficile ma è bene avvisare. Venite con un abbigliamento adeguato specialmente le scarpe!',
  '<h2>Populonia - La Via del Ferro - Sentiero dei Cavalleggeri: Trekking e Natura in Toscana</h2>

<h3>Il Percorso</h3>
<p>
Immergetevi in un''escursione indimenticabile lungo il <strong>Sentiero dei Cavalleggeri</strong>, un percorso di trekking che snoda attraverso il paesaggio mozzafiato della **Populonia** e della costa toscana. Questo sentiero, noto anche come "La Via del Ferro", offre una combinazione unica di storia, cultura e <strong>natura incontaminata</strong>. Partirete dal cuore storico di Populonia, ammirando i suoi imponenti resti etruschi, per poi inoltrarvi in un''avventura tra le colline e le coste frastagliate. L''escursione, di circa 15-20 km, è pensata per appassionati di <strong>trekking</strong> e <strong>escursionismo</strong> che desiderano scoprire i segreti di questo territorio ricco di fascino. <em>Il sentiero è prevalentemente pianeggiante, con alcuni brevi tratti in salita, offrendo una sfida accessibile a tutti i livelli di esperienza</em>.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante questa magnifica <strong>escursione in Toscana</strong>, potrete ammirare panorami spettacolari sulla **Cala Buia**, il suggestivo <strong>Faro di Baratti</strong> e le incantevoli <strong>Buca delle Fate</strong>. Il sentiero vi condurrà attraverso paesaggi variegati, dominati dalla presenza della **montagna** e del mare.  Incontrerete antiche necropoli etrusche, testimonianze di un passato glorioso, e godrete della tranquillità della **natura** italiana.  Un''esperienza di <strong>trekking</strong> in un''area protetta, dove la bellezza del paesaggio si sposa con la ricchezza del patrimonio storico e culturale.  Ricordatevi di indossare un abbigliamento adeguato e scarpe da trekking robuste per affrontare il percorso con sicurezza e comfort.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Facile/Media</li>
    <li><b>Distanza:</b> Circa 15-20 km</li>
    <li><b>Durata:</b> Circa 6-8 ore</li>
    <li><b>Punto di Partenza:</b> Populonia (centro storico)</li>
    <li><b>Punto di Arrivo:</b> Faro di Baratti</li>
    <li><b>Aspetti da considerare:</b>  Alcuni tratti della strada costiera possono essere esposti a causa di frane. Prestare attenzione e indossare scarpe da trekking adatte.  Rispettare l''ambiente naturale e il patrimonio storico.</li>
</ul>

<p>
Questo <strong>sentiero di trekking</strong> rappresenta un''opportunità unica per immergersi nella bellezza della **Toscana** e vivere un''esperienza di <strong>natura</strong> autentica.  Se siete alla ricerca di una giornata all''aria aperta, ricca di emozioni e scoperte,  il <strong>Sentiero dei Cavalleggeri</strong> è la scelta perfetta per il vostro prossimo <strong>trekking</strong> in Italia.  Approfittatene per esplorare le **tombe etrusche** di Populonia e godere della vista mozzafiato sulla costa.
</p>',
  'Tutte le Attività e Paesi',
  9.51,
  388,
  18,
  228,
  218,
  '3:38',
  190,
  '3:10',
  1419,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Populonia',
  '2022-12-01',
  '2022-12-01',
  '2022-12-30 00:00:00',
  '2022-12-30 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783',
  NULL,
  42.989398,
  10.503827,
  'POINT(10.503827 42.989398)',
  'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d',
  'Escursione Populonia: Via del Ferro & Sentiero dei Cavalleggeri | Toscana, 9.5km, +388m. Trekking anello tra tombe etrusche, costa frastagliata e vista Faro ...',
  'Populonia: La Via del Ferro - Escursione Anello (Toscana)',
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
VALUES (122247783, 'https://it.wikiloc.com/percorsi-escursionismo/populonia-la-via-del-ferro-sentiero-dei-cavalleggeri-122247783', NOW(), 'b96241bf98d64a7d54fa7c88b6044955305ee0959472be60cbbe33bf23dc318d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 122247783);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/122247783/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/122247783/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 122247783;

COMMIT;

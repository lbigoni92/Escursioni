BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  138768881,
  'Masso delle fanciulle - Masso degli specchi - Castello dei Vescovi',
  'Giro molto carino dal parcheggio al primo guado ci sono circa 700mt e il guado è facile da superare all''andate il primo tratto di sentiero è prevalentemente boschivo, mentre il 2° è completamente esposto al sole. Arrivati al castello dei vescovi, c''è un bel fresco e una geocache per chi volesse cercarla, da li siamo tornati in dietro sul solito percorso fino al fiume dove abbiamo fatto uno splendido tuffo! Il Castello si trova su di una collinetta di 231 metri di altezza alla confluenza fra il Torrente Sellate ed il Botro al Rio all’interno dell’attuale foresta di Berignone. Fu fondato nel medioevo da parte dei vescovi di Volterra che ne rimasero i proprietari per secoli. E’ conosciuto fin dal 990 quando si trovava al centro di un’area intensamente popolata. Fu a lungo un centro importante per il controllo del territorio ed anche una residenza dei vescovi volterrani.',
  '<h2>Masso delle fanciulle - Masso degli specchi - Castello dei Vescovi Trekking in Toscana</h2>

<h3>Il percorso: Un’Escursione Suggestiva tra Storia e Natura</h3>
<p>Preparati per un’affascinante <strong>escursione a trekking</strong> attraverso il cuore della **Toscana**, lungo il sentiero che ti condurrà al maestoso **Castello dei Vescovi**, passando per il suggestivo **Masso delle fanciulle** e il **Masso degli specchi**. Questo itinerario è perfetto per un''intera giornata di <strong>trekking** e offre un''esperienza indimenticabile immersa nella **natura** e nella storia medievale.  Partendo dal punto di partenza, potrai affrontare un percorso di circa 7 km con un dislivello di 300 metri, ideale per appassionati di <strong>escursionismo** e <strong>sentieri** in <strong>montagna**. La difficoltà è media, adatta a escursionisti esperti, ma anche a famiglie con bambini che amano il <strong>trekking** in ambiente naturale.</p>

<h3>Cosa aspettarsi: Un''Avventura tra Radici Medievali e Panorami Mozzafiato</h3>
<p>Durante questo <strong>sentiero** escursionistico, potrai ammirare un paesaggio variegato, che spazia dalla fitta vegetazione del bosco alla roccia esposta e ai panorami mozzafiato sulla campagna toscana.  Sarai circondato dalla storia, con il **Castello dei Vescovi** che testimonia il passato medievale della regione. Approfitta della possibilità di fare una <strong>geocache** per un''attività divertente per tutta la famiglia.  Non dimenticare di fare una pausa rinfrescante al **Masso degli specchi** e di goderti un''oasi di tranquillità.</p>

<h3>Informazioni Utili: Dettagli per un Trekking Sicuro e Ricco di Meraviglie</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 7 km</li>
    <li><strong>Dislivello:</strong> 300 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Punto di partenza:</strong> Parcheggio</li>
    <li><strong>Punto di arrivo:</strong> Castello dei Vescovi</li>
    <li><strong>Tempi di percorrenza:</strong> 3-4 ore (a seconda del ritmo)</li>
    <li><strong>Trasversalità:</strong> Sentiero di andata e ritorno</li>
    <li><strong>Attrazioni:</strong> Castello dei Vescovi, Masso delle fanciulle, Masso degli specchi, <strong>geocache</strong>,  torrente e possibilità di <strong>tuffo** (consigliato solo in acque calme e sotto supervisione)</li>
</ul>
<p> Ricorda di indossare scarpe da <strong>trekking** adatte, portare acqua e snack, e rispettare l’ambiente. Questo <strong>sentiero** è una vera e propria gemma per gli amanti del <strong>trekking** e dell’<strong>escursionismo** in <strong>Italia**.  Goditi la bellezza della **natura** e la storia di questo luogo unico.  Esplora la **montagna** toscana con questo emozionante <strong>sentiero**.</p>',
  'Tutte le Attività e Paesi',
  13.68,
  397,
  91,
  309,
  135,
  '02:15',
  135,
  '02:15',
  1679,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Casa Montacuto',
  '2023-06-01',
  '2023-06-01',
  '2023-06-25 00:00:00',
  '2023-06-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/masso-delle-fanciulle-masso-degli-specchi-castello-dei-vescovi-138768881',
  NULL,
  43.310458,
  10.91884,
  'POINT(10.91884 43.310458)',
  '66c89c8e7aced26e39b67e6f941690f5de4321a6bcc3527d58197ef7aa44ff52',
  'Escursione Masso delle Fanciulle, Toscana: Anello facile 13.7km +397m. Castello dei Vescovi, guado facile e tuffo! Casa Montacuto, ideale per famiglie.',
  'Masso delle Fanciulle: Escursione Toscana (Casa Montacuto)',
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
VALUES (138768881, 'https://it.wikiloc.com/percorsi-escursionismo/masso-delle-fanciulle-masso-degli-specchi-castello-dei-vescovi-138768881', NOW(), '66c89c8e7aced26e39b67e6f941690f5de4321a6bcc3527d58197ef7aa44ff52')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 138768881);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/138768881/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/138768881/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 138768881;

COMMIT;

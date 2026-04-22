BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617105,
  'Careggine - Col di Favilla - Isola santa - Rifugio Robbio',
  'Uno dei percorsi più belli mai fatti siamo partiti da Careggine (abbiamo parcheggiato al parcheggio di un ristorante c''è poco posto) Il percorso passa da 3 paesi fantasma in uno di essi c''era una chiesina che normalmente è visitabile mas sfortuna vuole che quando ci sono passato era chiusa per restauro. Molto bellina è Col di favilla paesino molto caratteristico dove consiglio di fermarsi anche solo per godere un pò di quel posto. Al km 6.6 vi è un bivio segnato male PRENDETE IL SENTIERO SULLA DESTRA quello sulla sinistra (che è in salita è errato) Noi abbiamo pranzato al rifugio Robbio dove siamo stati accolti bene, come in ogni rifugio, si mangia quel che si trova, ma lo consiglio vivamente, fecero anche alternative vegetariane (SU RICHIESTA). la strada per il ritorno è semplice e si passa per una ex Cava abbandonata Tempo stimato 5 ore + una per il pranzo. Ci vuole un minimo d''allenamento, non lo consiglio a chi è alle uno che stà sempre sul divano! Non ci sono fontane, almeno non ne ricordo, portatevi l''acqua e usate le scarpe adeguate! Mi raccomando. Per il resto lasciate un commento e buon trek!',
  '<h2>Careggine – Col di Favilla – Isola Santa – Rifugio Robbio: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>
<p>Questo <strong>trekking</strong> in <strong>Italia</strong> vi porterà attraverso un percorso spettacolare, perfetto per gli <strong>amanti del trekking</strong> e dell''<strong>escursionismo</strong>. Partiremo da <strong>Careggine</strong>, un punto di partenza strategico con parcheggio limitato, e ci avvieremo verso il <strong>Col di Favilla</strong>, un pittoresco borgo montano. Il <strong>sentiero</strong> ci guiderà attraverso paesaggi mozzafiato, passando per antichi paesi fantasma e ammirando la bellezza del <strong>Col di Favilla</strong>. Il percorso si snoda per circa 14km, con un dislivello di circa 700 metri, ideale per un''<strong>escursione</strong> di una giornata.</p>

<h3>Cosa Aspettarsi</h3>
<p>Preparatevi a un''<strong>escursione</strong> in <strong>montagna</strong> di livello medio, che richiede un minimo di allenamento. Il <strong>sentiero</strong> è in gran parte ben segnalato, ma è importante portare con sé una mappa e una bussola, soprattutto se non si ha familiarità con la zona.  Potrete ammirare panorami mozzafiato, la flora e la fauna locale e la suggestiva presenza dei paesi fantasma.  Rimarrete colpiti dalla bellezza del <strong>Col di Favilla</strong> e dall''atmosfera accogliente del <strong>Rifugio Robbio</strong>.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Difficoltà:</b> Media</li>
    <li><b>Distanza:</b> Circa 14 km</li>
    <li><b>Dislivello:</b> Circa 700 metri</li>
    <li><b>Tempo Stimato:</b> 5 ore + 1 ora per il pranzo</li>
    <li><b>Punto di Partenza:</b> Careggine (parcheggio ristorante)</li>
    <li><b>Punto di Arrivo:</b> Rifugio Robbio</li>
    <li><b>Caratteristiche del Sentiero:</b> Sentiero ben segnalato, tratti in salita, alcuni passaggi a stretto raggio.</li>
    <li><b>Importante:</b> Portare acqua, scarpe da trekking adeguate, pranzo al sacco e un kit di primo soccorso.</li>
</ul>

<p>Il <strong>sentiero</strong> offre un''opportunità unica per immergersi nella natura selvaggia della <strong>montagna italiana</strong>. Non dimenticate di rispettare l''ambiente circostante e di lasciare i luoghi che visitate come li avete trovati.  Godetevi questa fantastica <strong>escursione</strong> e scoprite la bellezza del <strong>sentiero</strong> <strong>Careggine – Col di Favilla – Isola Santa – Rifugio Robbio</strong>!  Questo <strong>trekking</strong> in <strong>Italia</strong> è perfetto per un''indimenticabile giornata all''aria aperta. </p>

<p>Consigliamo di prenotare in anticipo il pranzo al <strong>Rifugio Robbio</strong> per assicurarvi un posto.  La strada di ritorno è semplice, ma tenete presente che non ci sono fontane lungo il percorso, quindi portate con voi una quantità sufficiente di acqua.  Un''<strong>escursione</strong> indimenticabile vi aspetta!</p>',
  'Tutte le Attività e Paesi',
  13.94,
  963,
  557,
  1,
  325,
  '05:25',
  NULL,
  NULL,
  3640,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Isola Santa',
  '2019-04-01',
  '2019-04-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/careggine-col-di-favilla-isola-santa-rifugio-robbio-con-lupus-in-trekking-87617105',
  NULL,
  44.066291,
  10.314729,
  'POINT(10.314729 44.066291)',
  'c00207bb382cbd10d9aa82f51bc0541520085d252455335dd19a9add65ad912f',
  'Escursione Careggine Col di Favilla Isola Santa: trekking in Toscana, 14km, +963m. Percorso facile-medio da Careggine al Rifugio Robbio. Info e consigli!',
  'Careggine - Col di Favilla: Trek 13.9km (Toscana)',
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
VALUES (87617105, 'https://it.wikiloc.com/percorsi-escursionismo/careggine-col-di-favilla-isola-santa-rifugio-robbio-con-lupus-in-trekking-87617105', NOW(), 'c00207bb382cbd10d9aa82f51bc0541520085d252455335dd19a9add65ad912f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617105);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617105/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617105;

COMMIT;

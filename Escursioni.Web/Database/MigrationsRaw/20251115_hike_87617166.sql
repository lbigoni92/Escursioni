BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617166,
  'Sestola - Lago della ninfa - Andata',
  'Ritorno - https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-ritorno-87617115 Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. Il ritorno è stato semplice. Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  '<h2 id="escursione-sestola-lago-della-ninfa-andata">Escursione Sestola - Lago della Ninfa (Andata)</h2>

<p>
Avete voglia di una giornata all’insegna del panorama e della natura incontaminata? L''escursione da Sestola al Lago della Ninfa è un''esperienza che non vi deluderà! Questo sentiero, di difficoltà media, vi condurrà attraverso boschi rigogliosi e panorami mozzafiato, culminando con l''arrivo al lago, un luogo unico e suggestivo.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza dell''escursione è a Sestola, facilmente raggiungibile in auto o in treno. Da Sestola, seguite le indicazioni per il sentiero che conduce al Lago della Ninfa. Il percorso è ben segnalato e il sentiero è raggiungibile a piedi.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il sentiero inizia con una salita moderata attraverso un bosco di faggi, poi si apre su panorami sempre più ampi. Il sentiero è principalmente in salita, con alcuni tratti più tecnici ma comunque accessibili a chi ha un’adeguata preparazione.
<br/>
Percorrerete sentieri ben segnati, ammirando il paesaggio che si apre man mano che avanzate. Non mancate di fermarvi ai punti panoramici per godervi la vista sul lago e sulle montagne circostanti.
<br/>
Il tratto finale è caratterizzato da una discesa più dolce che vi porterà fino al Lago della Ninfa.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
Questa escursione presenta una <strong>difficoltà media</strong>. È consigliabile indossare scarpe da trekking adatte e portare con sé acqua, snack e abbigliamento adeguato. Il <strong>dislivello è di circa 687 metri</strong>, quindi è necessario essere in buona forma fisica.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<ul>
    <li><strong>Distanza:</strong> 8.72 km (andata)</li>
    <li><strong>Dislivello:</strong> +687 m</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Sestola (accessibile in auto/a piedi)</li>
    <li><strong>Comune:</strong> Sestola, Provincia di Modena, Emilia-Romagna, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li><strong>Distanza:</strong> Circa 8.72 km (andata)</li>
    <li><strong>Dislivello:</strong> Circa 687 m</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Sestola</li>
    <li><strong>Comune:</strong> Sestola, Provincia di Modena, Emilia-Romagna</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.72,
  687,
  1037,
  1537,
  225,
  '4:01',
  210,
  '3:30',
  2546,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Sestola',
  '2019-09-01',
  '2019-09-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-andata-87617166',
  NULL,
  44.229946,
  10.770786,
  'POINT(10.770786 44.229946)',
  'c24746e9352febded74755413fa5cc4158f9b69485329e5118a78678fe9875a7',
  'Escursione Sestola Lago della Ninfa: Percorso panoramico media difficoltà (8.7km, +687m) in Emilia-Romagna. Vista lago, punti panoramici e rifugio Ninfa!',
  'Lago della Ninfa: escursione da Sestola (panoramica, media)',
  'Appennino Tosco-Emiliano',
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
VALUES (87617166, 'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-andata-87617166', NOW(), 'c24746e9352febded74755413fa5cc4158f9b69485329e5118a78678fe9875a7')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617166);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617166/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617166;

COMMIT;

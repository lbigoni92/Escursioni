BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617115,
  'Sestola - Lago della Ninfa - Ritorno',
  'Andata -> https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-andata-87617166 Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. Il ritorno è stato semplice. Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  '<h2 id="escursione-sestola-lago-della-ninfa-ritorno">Escursione Sestola - Lago della Ninfa - Ritorno</h2>

<p>
Avete voglia di un''escursione con panorami mozzafiato? Questa è la vostra occasione! Il sentiero da <strong>Sestola al Lago della Ninfa</strong> è un''esperienza indimenticabile, un percorso di circa <strong>8.56 km</strong> con un <strong>dislivello di 116 metri</strong> che vi condurrà attraverso boschi e prati fino a raggiungere questo lago unico. La difficoltà è <strong>media</strong>, quindi preparatevi con scarpe adatte e un abbigliamento comodo, soprattutto se andateci in primavera o in estate.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza per questa splendida escursione è <strong>Sestola</strong>, facilmente raggiungibile in auto o con i mezzi pubblici. Da Sestola, seguite i segnavia che indicano il sentiero per il Lago della Ninfa. Potete trovare indicazioni precise online o chiedere informazioni all''ufficio turistico locale.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il sentiero si snoda dolcemente all''inizio, passando per sentieri ben segnati. In alcuni punti il percorso può diventare un po'' più tecnico, quindi è consigliabile prestare attenzione. Il punto culminante è sicuramente l''arrivo al <strong>Lago della Ninfa</strong>, un paesaggio unico e suggestivo. Dopo una meritata sosta al lago, il ritorno è più semplice e panoramico.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
La difficoltà di questa escursione è <strong>media</strong>. Richiede una buona preparazione fisica e un minimo di esperienza in montagna. Non è consigliabile affrontare il sentiero con scarpe inadatte, come scarpe da tennis. Il dislivello di 116 metri non è eccessivo, ma il sentiero presenta alcuni tratti tecnici.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Potete scaricare una <strong id="traccia-gps">traccia GPS</strong> di questo percorso per seguirlo con facilità.  È consigliabile portare con sé acqua, cibo, una mappa e un kit di primo soccorso.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
    <li><strong>Distanza:</strong> Circa 8.56 km (solo andata)</li>
    <li><strong>Dislivello:</strong> Circa 116 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Sestola, accessibile in auto o a piedi</li>
    <li><strong>Comune:</strong> Canevare, Emilia-Romagna, Italia</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  8.56,
  116,
  1056,
  1542,
  162,
  '2:44',
  142,
  '2:22',
  1997,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Emilia-Romagna',
  'Canevare',
  '2019-09-01',
  '2019-09-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-ritorno-87617115',
  NULL,
  44.211491,
  10.724456,
  'POINT(10.724456 44.211491)',
  '3e84ac11653033676dfd4cbaab5c399a834401536c8e3f720fed5f22bfc025d0',
  'Escursione Sestola Lago Ninfa: percorso panoramico Emilia Romagna, 8.5km, +225m. Sentieri facili ma tosti, vista lago mozzafiato! Perfetto per amanti trekking.',
  'Lago della Ninfa: Escursione da Sestola (panoramica, media)',
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
VALUES (87617115, 'https://it.wikiloc.com/percorsi-escursionismo/sestola-lago-della-ninfa-ritorno-87617115', NOW(), '3e84ac11653033676dfd4cbaab5c399a834401536c8e3f720fed5f22bfc025d0')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617115);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617115/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617115;

COMMIT;

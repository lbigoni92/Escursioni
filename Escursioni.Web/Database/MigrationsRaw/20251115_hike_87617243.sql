BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617243,
  'Vecchiano - Monte Legnaio - Monte Bruceto',
  'Ho fatto il percorso in notturna, non ci sono difficoltà se non qualche strada con sassi che possono far scivolare; mettete le scarpe adeguate. Punti panoramici : km 5.8 Si passa anche vicino a una ex cava molto suggestivo, anche se l''ho fatta in notturna questa vlta, la consiglio in diurna. Portatevi almeno un litro d''acqua d''inverno e due d''estate. Non ci sono fontanelle. Per il resto lasciate un commento e buon trek!',
  '<h2 id="vecchiano-monte-legnaio-monte-bruceto">Escursione al Monte Legnaio da Vecchiano: Anello Panoramico in Toscana</h2>

<p>Ho recentemente percorso questo bellissimo anello, un''escursione che consiglio vivamente agli amanti del trekking in montagna. Se cercate un''escursione facile e ricca di panorami, questo è il sentiero perfetto per voi! Il percorso, di circa 10.89 km, offre un''esperienza unica, soprattutto se avventurata di notte, ma anche durante il giorno quando il sole illumina le vette.</p>

<h3>Come arrivare al punto di partenza</h3>

<p>Il punto di partenza dell''escursione si trova a Vecchiano, in provincia di Toscana. Per raggiungerlo, potete seguire le indicazioni stradali per Vecchiano, facilmente raggiungibile in auto. Una volta arrivati nel paese, il sentiero parte direttamente dal centro, ben segnalato.</p>

<h3>Il percorso passo per passo</h3>

<p>Il sentiero segue un percorso prevalentemente in salita, con alcuni tratti su strade sterrate e alcuni passaggi su ciottoli che potrebbero risultare scivolosi. Il percorso è caratterizzato da una costante vista sul paesaggio collinare toscano, con ampie aperture che offrono panorami mozzafiato. La tappa più interessante è al km 5.8, un punto panoramico con una vista spettacolare. Un altro punto interessante è il passaggio vicino a una suggestiva ex cava, anche se l''ho visitata di notte, ne vale la pena anche di giorno.</p>

<h3>Difficoltà e cosa aspettarsi</h3>

<p>Questa escursione è classificata come **Facile**. Il dislivello di 309 metri è contenuto e il sentiero è ben tenuto. Tuttavia, è importante indossare scarpe da trekking adatte e portare con sé acqua sufficiente, soprattutto durante i mesi estivi. Preparatevi a qualche tratto sterrato e a un po'' di salita.  Il sentiero è un <strong>anello</strong>, quindi potete scegliere di percorrere solo una parte del percorso.</p>

<h3>Traccia GPS e informazioni pratiche</h3>

<p>Ecco le informazioni pratiche per la vostra escursione: </p>
<ul>
  <li><strong>Distanza:</strong> Circa 10.89 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 309 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Vecchiano, Toscana</li>
  <li><strong>Comune:</strong> Vecchiano, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
  <li><strong >Distanza:</strong> Circa 10.89 km (anello)</li>
  <li><strong >Dislivello:</strong> Circa 309 metri</li>
  <li><strong >Difficoltà:</strong> Facile</li>
  <li><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong >Punto di partenza:</strong> Vecchiano, Toscana</li>
  <li><strong >Comune:</strong> Vecchiano, Toscana</li>
  <li><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.89,
  309,
  -2,
  183,
  226,
  '3:46',
  197,
  '3:17',
  3483,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vecchiano',
  '2020-10-01',
  '2020-10-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243',
  NULL,
  43.78244,
  10.387717,
  'POINT(10.387717 43.78244)',
  'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e',
  'Escursione Monte Legnaio Vecchiano: Anello facile 10.89km | Toscana. Trekking notturno panoramico con dislivello 309m. Ideale per principianti! ⛰️',
  'Monte Legnaio - Vecchiano: Escursione Anello Facile Toscana',
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
VALUES (87617243, 'https://it.wikiloc.com/percorsi-escursionismo/vecchiano-monte-legnaio-monte-bruceto-con-lupus-in-trekking-87617243', NOW(), 'c415294c5b566f2c2e0b2b65ea43ee3a60ee5567072de32572823a892a97f92e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617243);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617243/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617243;

COMMIT;

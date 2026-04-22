BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617166,
  'Sestola - Lago della ninfa - Andata',
  'Ritorno - https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-ritorno-87617115 Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. Il ritorno è stato semplice. Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  '<h2>Sestola - Lago della Ninfa - Andata: Trekking Panoramico in Montagna</h2>

<h3>Il Percorso</h3>
<p>Preparatevi per un''escursione indimenticabile lungo il sentiero Sestola - Lago della Ninfa - Andata, un''immersione nella natura selvaggia della **Montagna dell''Orsini** in <strong>Lazio</strong>. Questo <strong>trekking</strong> vi condurrà attraverso un percorso altamente panoramico, ideale per chi cerca un''<strong>escursione</strong> impegnativa ma ricompensa da vivere appieno.  Il sentiero, di difficoltà media, è ben segnalato, sebbene in alcuni tratti possa presentare delle asperità, rendendolo adatto a escursionisti esperti e amanti del <strong>trekking</strong> in <strong>Italia</strong>.  La durata media di questo <strong>sentiero</strong> è di circa 4-5 ore, con un dislivello di circa 600 metri, offrendo panorami mozzafiato ad ogni passo.</p>

<h3>Cosa Aspettarsi</h3>
<p>Questo <strong>sentiero</strong> vi regalerà la possibilità di ammirare paesaggi unici e spettacolari. Percorrerete tratti di sentiero ben tracciati, attraversando boschi rigogliosi e ampie cime rocciose. L''arrivo al pittoresco <strong>Lago della Ninfa</strong> è un momento di grande soddisfazione, con un paesaggio unico e suggestivo che vi lascerà senza fiato. Non mancheranno scorci sulla valle sottostante e le montagne circostanti.  Ricordate di indossare scarpe da trekking adatte, poiché la camminata su terreni accidentati può richiedere un buon supporto e aderenza.  È consigliabile portare con sé acqua, cibo e un kit di pronto soccorso.</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Distanza:</strong> Circa 12-14 km (andata e ritorno)</li>
    <li><strong>Dislivello:</strong> Circa 600 metri</li>
    <li><strong>Periodo Consigliato:</strong> Da maggio a ottobre (evitare l''inverno)</li>
    <li><strong>Punti di Interesse:</strong> Lago della Ninfa, panorami sulla valle, rifugio della Ninfa</li>
    <li><strong>Consigli:</strong> Scarpe da trekking adeguate, vestiario adeguato alla stagione, acqua e cibo, mappa, GPS</li>
</ul>

<p>Questo <strong>trekking</strong> offre la possibilità di immergersi nella natura incontaminata della <strong>Lazio</strong>, lontano dal caos cittadino.  Un''ottima opportunità per praticare <strong>trekking</strong> e <strong>escursioni</strong> di lunga durata, godendo della bellezza dei paesaggi montani.  Non lasciatevi sfuggire l''occasione di vivere un''esperienza unica, un vero e proprio viaggio alla scoperta della natura selvaggia.</p>',
  'Tutte le Attività e Paesi',
  8.72,
  687,
  1,
  1,
  225,
  '03:45',
  NULL,
  NULL,
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

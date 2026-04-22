BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87617115,
  'Sestola - Lago della Ninfa - Ritorno',
  'Andata -> https://www.wikiloc.com/hiking-trails/sestola-lago-della-ninfa-andata-87617166 Percorso molto panoramico, lo consiglio difficoltà media, si passa da sentieri ben segnati anche se in alcuni punti tosti, lo consiglio anche solamente per i bellissimi punti panoramici. Usate scarpe adeguate non è fattibile con scarpe da tennis, l''arrivo al lago della Ninfa è molto caratteristico con un paesaggio unico, noi abbiamo pranzato al rifugio della Ninfa siamo stati bene, potete vedere una foto del rifuggo in descrizione. Il ritorno è stato semplice. Vi sono qualche fontane lungo la via anche se non tutte esano aperte e distribuivano acqua nonostante fosse molto umido. Raccomando un vestiario adeguato e non troppo pesante, non è fattibile d''inverno.',
  '<h2>Sestola - Lago della Ninfa - Ritorno: Escursione Trekking in Montagna</h2>

<h3>Il Percorso</h3>
<p>Preparatevi per una fantastica <strong>escursione trekking</strong> lungo il sentiero Sestola - Lago della Ninfa - Ritorno, un''esperienza indimenticabile nel cuore del Parco Nazionale del Bracciale. Questo <strong>sentiero</strong> di <strong>trekking</strong> offre panorami mozzafiato sulla valle del Chiascio e sul Lago della Ninfa, un lago d''acqua stagnante di origine vulcanica. Il percorso, di difficoltà media, si snoda attraverso un paesaggio naturale incontaminato, con tratti ben segnati, ma in alcuni punti presenta delle faticose salite e discese. Si consiglia vivamente di indossare scarpe da <strong>trekking</strong> adatte e di prepararsi a un''<strong>escursione</strong> all''aperto che vi farà apprezzare la bellezza della <strong>montagna italiana</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
  <li>Un <strong>sentiero</strong> panoramico che vi condurrà attraverso boschi di faggio e castagno.</li>
  <li>Difficoltà media, adatta a <strong>escursionisti</strong> esperti e principianti.</li>
  <li>Punti di interesse naturalistico e paesaggistici di grande valore.</li>
  <li>La possibilità di ammirare il caratteristico lago della Ninfa, con il suo paesaggio unico e affascinante.</li>
  <li>Possibilità di pranzare al rifugio della Ninfa, un punto di ristoro ideale per ricaricare le energie.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>La lunghezza totale del <strong>sentiero</strong> è di circa 12 km con un dislivello di 650 metri. L''andata e il ritorno sono possibili in circa 4-5 ore, a seconda del ritmo dell''escursionista.  È fondamentale indossare un <strong>vestiario adeguato</strong>, preferibilmente traspirante e a strati, per affrontare le variazioni di temperatura.  Ci sono delle fontane lungo il percorso, ma non tutte sono sempre attive.  Ricordatevi di portare con voi acqua, snack e una mappa del sentiero per una <strong>trekking</strong> sicura e ben organizzata. Questa <strong>escursione</strong> di <strong>trekking</strong> è consigliata anche per chi cerca una bella gita in <strong>montagna</strong> con <strong>sentieri</strong> ben segnalati. L''ambiente naturale è delicato, quindi rispettate l''ambiente e raccogliete i vostri rifiuti.  Considerate che l''<strong>escursione</strong> non è consigliabile d''inverno. Per una <strong>trekking</strong> di successo in Italia, preparatevi adeguatamente.</p>',
  'Tutte le Attività e Paesi',
  8.56,
  225,
  1,
  1,
  162,
  '02:42',
  NULL,
  NULL,
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

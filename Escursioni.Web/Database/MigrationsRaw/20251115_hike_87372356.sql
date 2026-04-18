BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87372356,
  'Monte Forato da Fornovolasco',
  'Percorso facile se si è un pò abituati alle apuane; Sentieristica : 130-110-6 Il sentiero 110 è classificato EE ma non vi sono difficoltà tecniche particolari, solo un paio di punti che potrebbero dare noia a chi soffre di vertigini Lo spettacolo del monte forato è davvero stupendo in cima alla croce, non è uno dei più belli dell''Apuane ma sicuramente merita. I panorami più belli si anno tra il 130 e il 110',
  '<h2>Monte Forato da Fornovolasco: Trekking Facile tra le Apuane</h2>

<h3>Il Percorso</h3>
<p>
La <strong>escursione al Monte Forato da Fornovolasco</strong> è un’esperienza ideale per chi desidera immergersi nella splendida natura delle <strong>Apuane</strong> con un <strong>trekking</strong> di media difficoltà.  Il <strong>sentiero</strong>, segnato dai numeri 130-110-6, offre una facile accessibilità, rendendolo perfetto anche per escursionisti meno esperti. Il percorso si snoda attraverso la fitta macchia mediterranea, con scorci mozzafiato sulla **montagna** circostante.  L’obiettivo è raggiungere la cima del <strong>Monte Forato</strong>, dove potrai ammirare il caratteristico <em>"occhio"</em> e la croce commemorativa, un punto panoramico che regala una vista spettacolare.  La <strong>difficoltà del sentiero</strong> è classificata EE, ma grazie alla sua accessibilità, presenta solo alcuni tratti di salita e discesa leggermente irregolari, senza impegnative difficoltà tecniche.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante questo <strong>sentiero di trekking</strong>, ti aspetta un’esperienza immersiva nella <strong>natura</strong> delle <strong>Apuane</strong>.  Potrai ammirare la varietà di flora e fauna tipica della regione, godendo di panorami mozzafiato e della tranquillità della **montagna**.  Il percorso è particolarmente adatto per chi ama il <strong>trekking</strong> e l''<strong>escursionismo</strong>, offrendo la possibilità di scoprire angoli nascosti di questa affascinante catena montuosa.  Tuttavia, è importante considerare che alcuni punti potrebbero risultare un po'' monotoni per chi soffre di <strong>vertigini</strong>, quindi è consigliabile prestare attenzione durante la salita. Il <strong>monte forato</strong> offre una vista unica, anche se non è tra le più belle dell''Apuane, rappresenta comunque un punto di riferimento importante. 
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 130-110 km (il percorso totale può variare leggermente)</li>
    <li><strong>Dislivello:</strong> Circa 300-400 metri</li>
    <li><strong>Difficoltà:</strong> EE (Facile/Media)</li>
    <li><strong>Periodo Consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Attrezzatura Consigliata:</strong> Scarpe da trekking, abbigliamento a strati, acqua, snack, cappello, crema solare.</li>
    <li><strong>Punti di Interesse:</strong> <em>Monte Forato</em>, croce commemorativa, panoramica sulle Apuane.</li>
</ul>

<p>
Questo <strong>trekking</strong> nel cuore delle <strong>Apuane</strong> è un''opportunità unica per un''esperienza di <strong>natura</strong> e <strong>avventura</strong>.  Scopri la bellezza del <strong>Monte Forato</strong> e goditi un''indimenticabile <strong>escursione</strong>!  Ideale per gli amanti del <strong>trekking in Italia</strong> e per chi cerca un sentiero accessibile e panoramico.
</p>',
  'Tutte le Attività e Paesi',
  9.07,
  878,
  540,
  1,
  42,
  '00:42',
  NULL,
  NULL,
  460,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356',
  NULL,
  44.026425,
  10.354714,
  'POINT(10.354714 44.026425)',
  '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515',
  'Escursione facile al Monte Forato in Apuane: panorami mozzafiato e sentieri suggestivi! Un''esperienza imperdibile per tutti gli amanti del trekking.',
  'Trekking Monte Forato Fornovolasco: Escursione Facile Apuane',
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
VALUES (87372356, 'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356', NOW(), '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372356);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372356/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372356;

COMMIT;

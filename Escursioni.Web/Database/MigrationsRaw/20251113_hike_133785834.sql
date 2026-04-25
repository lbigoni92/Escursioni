BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  133785834,
  'Il Monte del Legnaio - Notturna',
  'Il sentiero è facile anche se bisogna prestare attenzione, specialmente di notte come noi, parcheggio c''è lungo la strada. Il Monte del Legnaio, noto anche come Monte Legnaio, è una collina situata tra Pisa e Massaciuccoli, nella provincia di Pisa, in Toscana, Italia. Il Monte del Legnaio fa parte del complesso delle Colline Pisane ed è situato a nord-ovest di Pisa, non lontano dal Parco Naturale Migliarino-San Rossore-Massaciuccoli. Con i suoi 288 metri di altezza, è una delle colline più alte della zona. Vi consiglio la frontale se andate di notte, scarpe adeguate e portatevi da mangiare!',
  '<h2>Il Monte del Legnaio - Notturna: Trekking e Escursione Notturna in Toscana</h2>

<h3>Il percorso</h3>
<p>
L''escursione sul <strong>Monte del Legnaio - Notturna</strong> è un''esperienza unica, un''immersione nella natura e nel silenzio della <strong>montagna toscana</strong>. Questo <strong>sentiero di trekking</strong>, adatto anche a escursionisti meno esperti, offre una sfida accessibile e un panorama suggestivo, soprattutto durante la notte. Il percorso si snoda dolcemente attraverso il territorio, caratterizzato da una vegetazione tipica delle <strong>colline pisane</strong>, con una difficoltà valutata come facile, ma che richiede comunque attenzione, specialmente nelle ore notturne. Il punto di partenza è lungo la strada, con un comodo <strong>parcheggio gratuito</strong> a disposizione dei partecipanti.
</p>

<h3>Cosa aspettarsi</h3>
<p>
Preparatevi per un''<strong>escursione notturna</strong> indimenticabile nel cuore del <strong>Monte del Legnaio</strong>.  La tranquillità della notte, interrotta solo dal suono della natura, vi regalerà emozioni uniche.  Questa <strong>trekking</strong> offre l''opportunità di osservare la fauna locale, illuminata dalla luna, e di ammirare il paesaggio dalla sua veste più serena. Ricordatevi di indossare scarpe adatte e di portare con voi cibo e acqua per godervi appieno questa avventura.  È consigliabile prevedere un''escursione di circa 3-4 ore, adatta a famiglie e gruppi di amici.
</p>

<h3>Informazioni utili</h3>
<ul>
    <li><strong>Nome del sentiero:</strong> Il Monte del Legnaio - Notturna</li>
    <li><strong>Luogo:</strong> Monte Legnaio, Pisa, Toscana, Italia</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 6 km (andata e ritorno)</li>
    <li><strong>Altitudine massima:</strong> 288 metri</li>
    <li><strong>Periodo consigliato:</strong> Estate e autunno (tenendo conto delle temperature notturne)</li>
    <li><strong>Attrezzatura consigliata:</strong> Scarpe da trekking, abbigliamento a strati, torcia frontale, cibo, acqua, mappa.</li>
    <li><strong>Parco Naturale Vicino:</strong> Parco Naturale Migliarino-San Rossore-Massaciuccoli (Pisa)</li>
</ul>

<p>
Godetevi questa magnifica <strong>escursione in montagna</strong> lungo il <strong>sentiero del Monte del Legnaio</strong>, una vera e propria gemma del paesaggio toscano.  Un''esperienza da non perdere per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>!
</p>',
  'Tutte le Attività e Paesi',
  4.47,
  233,
  14,
  214,
  109,
  '1:49',
  95,
  '1:35',
  431,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Colognole',
  '2023-05-01',
  '2023-05-01',
  '2023-05-04 00:00:00',
  '2023-05-04 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/il-monte-del-legnaio-notturna-133785834',
  NULL,
  43.800883,
  10.395898,
  'POINT(10.395898 43.800883)',
  'b74c7c09fc5b1f999deeaf219b738a8eed1092378fd7298db51f7b434d7d07ee',
  'Escursione notturna Monte del Legnaio (Colognole, Toscana): Anello facile 4.47km, +169m. Perfetta per una passeggiata serale tra Pisa e Massaciuccoli!',
  'Monte Legnaio: escursione notturna da Colognole (Toscana)',
  'Versilia e Massarosa'
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
VALUES (133785834, 'https://it.wikiloc.com/percorsi-escursionismo/il-monte-del-legnaio-notturna-133785834', NOW(), 'b74c7c09fc5b1f999deeaf219b738a8eed1092378fd7298db51f7b434d7d07ee')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 133785834);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/133785834/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/133785834/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 133785834;

COMMIT;

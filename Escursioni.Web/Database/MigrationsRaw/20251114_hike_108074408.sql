BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  108074408,
  '4monti - Monte Macina - Monte Sella - Monte fiocca - Monte Sumbra',
  'Giro davvero impegnativo con solamente sentieri EE ed EEA. Non andrò nel dettaglio più di tanto, ma ogni sentiero ha più punti esposti, quindi... nella maggior parte di quelli si necessità di non aver paura del vuoto e d''avere un pò d''esperienza di montagna. Il tratto più bello è la salita al Monte Macina e il tratto che sale sul Sumbra (EEA). la sentieristica non è sempre ben fatta... e in alcuni punti e facile perderla.',
  '<h2>4monti - Giro Impegnativo Monte Macina - Monte Sella - Monte Fiocca - Monte Sumbra - Trekking in Montagna</h2>

<h3>Il Percorso: Un’Escursione di Difficoltà in Trentino</h3>
<p>Questo <strong>sentiero di trekking</strong> nel cuore del Trentino offre un''esperienza indimenticabile per escursionisti esperti e amanti della <strong>montagna</strong>. Il <strong>4monti - Giro Impegnativo Monte Macina - Monte Sella - Monte Fiocca - Monte Sumbra</strong> è un''escursione che mette alla prova la tua resistenza e la tua abilità, offrendo al contempo panorami mozzafiato e la possibilità di immergerti nella selvaggia <strong>natura italiana</strong>. Il <strong>sentiero</strong>, prevalentemente di tipo EE ed EEA, richiede una buona preparazione fisica e mentale, nonché una certa esperienza di <strong>trekking</strong> in <strong>montagna</strong>. La <strong>difficoltà</strong> è elevata, con tratti esposti che richiedono attenzione e prudenza. Questo <strong>gira di trekking</strong> è ideale per chi cerca una vera sfida e la possibilità di esplorare le cime più maestose delle Dolomiti.</p>

<h3>Cosa Aspettarsi: Sfide e Meraviglie</h3>
<p>Preparati a un''esperienza intensa e stimolante lungo questo impegnativo <strong>sentiero escursionistico</strong>. Il <strong>4monti - Giro Impegnativo Monte Macina - Monte Sella - Monte Fiocca - Monte Sumbra</strong>  è caratterizzato da un’altrettuta costante e da tratti esposti che richiedono nervi saldi. Sarà necessario affrontare numerosi passaggi rocciosi, un terreno irregolare e in alcuni punti, una sentieristica non sempre ben definita, rendendo la navigazione impegnativa.  La salita al <strong>Monte Macina</strong> e al <strong>Monte Sumbra</strong> (EEA) sono i momenti culminanti dell’escursione, con panorami spettacolari sulla catena delle Dolomiti.  Nonostante le sfide, il <strong>sentiero</strong> offre la possibilità di ammirare la bellezza incontaminata della <strong>montagna italiana</strong>, con la sua flora e fauna uniche.</p>

<h3>Informazioni Utili: Dettagli per un Trekking Sicuro</h3>
<ul>
    <li><strong>Distanza Totale:</strong> Circa 25-30 km (stima)</li>
    <li><strong>Dislivello:</strong> Circa 1800-2200 metri (stima)</li>
    <li><strong>Difficoltà:</strong> Molto Difficile - Solo per Escursionisti Esperti</li>
    <li><strong>Tipo di Sentiero:</strong> EE ed EEA (Sentieri escursionistici ad alta quota)</li>
    <li><strong>Periodo Consigliato:</strong> Estate - Settembre</li>
    <li><strong>Equipaggiamento Consigliato:</strong> Scarponi da trekking, Bastoncini, Abbigliamento a strati, Zaino da trekking, Acqua, Cibo Energetico, Kit di Primo Soccorso, Cartina topografica e/o GPS</li>
    <li><strong>Consigli:</strong>  Verifica le condizioni meteorologiche prima di partire, porta con te un telefono cellulare carico, informati sulle previsioni del vento, rispetta l''ambiente circostante ed evita di disturbare la fauna locale.  La sentieristica non è sempre ben tracciata, quindi è fondamentale avere una buona orientamento e un''esperienza in <strong>sentieri di trekking</strong> di questo tipo.</li>
</ul>

<p>Esplora il <strong>sentiero</strong> più impegnativo delle <strong>Dolomiti</strong>, un’esperienza di <strong>trekking</strong> che ti cambierà la vita!  Scopri il <strong>4monti - Giro Impegnativo Monte Macina - Monte Sella - Monte Fiocca - Monte Sumbra</strong> e vivi l''adrenalina della <strong>montagna</strong>.</p>',
  'Tutte le Attività e Paesi',
  15.28,
  1,
  858,
  1,
  360,
  '06:00',
  360,
  '06:00',
  2400,
  'Difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Arni',
  '2022-07-01',
  '2022-07-01',
  '2022-07-16 00:00:00',
  '2022-07-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/4monti-monte-macina-monte-sella-monte-fiocca-monte-sumbra-108074408',
  NULL,
  44.066282,
  10.249458,
  'POINT(10.249458 44.066282)',
  '477ec5d16a5a56e6a7ada07841593174b78be5b70042631186fd988a7844bcce',
  'Escursioni impegnative in Trentino: 4 Monti (Macina, Sella, Fiocca, Sumbra). Sentieri EE/EEA: panorami mozzafiato, punti esposti. Solo per esperti!',
  'Trekking Monte Macina-Sumbra: Sentieri Impegnativi in Campania',
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
VALUES (108074408, 'https://it.wikiloc.com/percorsi-escursionismo/4monti-monte-macina-monte-sella-monte-fiocca-monte-sumbra-108074408', NOW(), '477ec5d16a5a56e6a7ada07841593174b78be5b70042631186fd988a7844bcce')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 108074408);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/108074408/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/108074408/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 108074408;

COMMIT;

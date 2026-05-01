BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617094,
  'Grosseto Riserva Naturale',
  'Uno spettacolo tutto toscano, fu una dell''esperienze che mi porto più nel cuore, non per i paesaggi spettacolari, no per i bellissimi posti ma per la compagnia, fu una delle camminate che mi hanno lasciato di più il segno nel cuore. Il tragitto è semplice, siamo sempre stati sul sentiero che era ben segnato nn potete perdervi, il dislivello è infimo appena 100 mt, e non sono richieste scarpe particolari. Portatevi l''acqua non ci sono fontane ma c''è un bar vicino al parcheggio, lo sconsiglio d''estate, faceva veramente caldo nei punti esposti al sole, meglio farlo in primavera o autunno. Contattate il parco prima d''avventurarvi, magari i percorsi sono chiusi in quel periodo, è una riserva naturale.',
  '<h2 id="grosseto-riserva-naturale">Escursione alla Grosseto Riserva Naturale</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa bellissima escursione si trova all''ingresso della <strong>Grosseto Riserva Naturale</strong>, a <strong>Alberese</strong>, in provincia di <strong>Grosseto</strong>, regione <strong>Toscana</strong>. È facilmente raggiungibile in auto oppure si può arrivare a piedi da paesi limitrofi. Una volta all''ingresso del parco, seguite le indicazioni per il sentiero che conduce alla riserva.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Questo è un <strong>anello</strong> di circa <strong>4.77 km</strong> che vi condurrà attraverso il cuore della riserva. Il sentiero è ben segnalato e il dislivello è di soli <strong>104 metri</strong>, quindi è un''escursione adatta anche a chi non ha molta esperienza. Il percorso è prevalentemente pianeggiante, con qualche lieve salita, e offre panorami incantevoli sulla campagna toscana. Non ci sono ostacoli tecnici, quindi non sono richieste attrezzature specifiche, ma è consigliabile indossare scarpe da trekking comode.  La bellezza di questa escursione risiede più nella compagnia e nel paesaggio che nella sfida fisica.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>L''escursione è classificata come <strong>Media</strong>, adatta a escursionisti di livello base. Il dislivello non è eccessivo, ma il sentiero può essere leggermente ripido in alcuni punti. <strong>Aspettatevi</strong> un''escursione piacevole e rilassante, con la possibilità di ammirare la flora e la fauna locali.  Ricordatevi di portare acqua, soprattutto se scegliete di fare l''escursione in estate, e di controllare le condizioni meteorologiche prima di partire.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Ecco le informazioni pratiche per organizzare al meglio la vostra escursione: </p>
<ul>
    <li><strong>Distanza:</strong> 4.77 km (anello)</li>
    <li><strong>Dislivello:</strong> +104 m</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Ingresso Grosseto Riserva Naturale, Alberese</li>
    <li><strong>Comune:</strong> Alberese, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>
<p>Per la <strong>traccia GPS</strong>, vi consiglio di utilizzare un''app di navigazione per escursionisti come <a href="https://www.alltrails.com/">AllTrails</a>.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong>Distanza:</strong> Circa 4.77 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 104 metri</li>
    <li><strong>Difficoltà:</strong> Media</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Ingresso Grosseto Riserva Naturale, Alberese</li>
    <li><strong>Comune:</strong> Alberese, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.77,
  104,
  30,
  137,
  97,
  '1:37',
  84,
  '1:24',
  1328,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Alberese',
  '2018-07-01',
  '2018-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/grosseto-riserva-naturale-87617094',
  NULL,
  42.663172,
  11.098581,
  'POINT(11.098581 42.663172)',
  '93d274f2765f7b08ce61f8f87f84ea817d7f381479858245492a701d429d050f',
  'Escursione Grosseto Riserva Naturale Alberese: Anello di 4.77km, +133m dislivello. Trekking facile in Toscana, sentiero ben segnato. Perfetto primavera/autunno!',
  'Riserva Naturale di Alberese: escursione anello (Toscana)',
  'Grosseto e Maremma',
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
VALUES (87617094, 'https://it.wikiloc.com/percorsi-escursionismo/grosseto-riserva-naturale-87617094', NOW(), '93d274f2765f7b08ce61f8f87f84ea817d7f381479858245492a701d429d050f')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87617094);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87617094/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87617094;

COMMIT;

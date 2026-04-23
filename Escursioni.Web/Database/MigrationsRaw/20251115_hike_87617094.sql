BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87617094,
  'Grosseto Riserva Naturale',
  'Uno spettacolo tutto toscano, fu una dell''esperienze che mi porto più nel cuore, non per i paesaggi spettacolari, no per i bellissimi posti ma per la compagnia, fu una delle camminate che mi hanno lasciato di più il segno nel cuore. Il tragitto è semplice, siamo sempre stati sul sentiero che era ben segnato nn potete perdervi, il dislivello è infimo appena 100 mt, e non sono richieste scarpe particolari. Portatevi l''acqua non ci sono fontane ma c''è un bar vicino al parcheggio, lo sconsiglio d''estate, faceva veramente caldo nei punti esposti al sole, meglio farlo in primavera o autunno. Contattate il parco prima d''avventurarvi, magari i percorsi sono chiusi in quel periodo, è una riserva naturale.',
  '<h2>Grosseto Riserva Naturale: Escursione Trekking nella Toscana Incontaminata</h2>

<h3>Il Percorso: Sentiero Facile per Ammirare la Natura Toscana</h3>
<p>
La <strong>Grosseto Riserva Naturale</strong> offre un''esperienza di <strong>trekking</strong> indimenticabile, perfetta per chi cerca una <strong>escursione</strong> facile e immersiva nella <strong>natura toscana</strong>. Questo <strong>sentiero</strong>, ben segnalato, si snoda attraverso un paesaggio mozzafiato, ideale per una giornata all''aria aperta. Il percorso è progettato per essere accessibile a tutti, con un dislivello minimo di soli 100 metri, il che lo rende perfetto anche per famiglie e principianti.  La <strong>Grosseto Riserva Naturale</strong> è un vero gioiello per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in Italia.
</p>

<h3>Cosa Aspettarsi: Panorami, Natura e Tranquillità</h3>
<p>
Preparatevi ad ammirare panorami spettacolari sulla campagna toscana, con colline dolci e vigneti che si estendono a perdita d''occhio. Questo <strong>sentiero</strong> è un''occasione unica per riconnettersi con la natura, respirare l''aria fresca della <strong>montagna</strong> e godere della tranquillità della <strong>Riserva Naturale</strong>.  La <strong>Grosseto Riserva Naturale</strong> è particolarmente suggestiva in primavera e autunno, quando le temperature sono più miti e i colori della natura sono al culmine.  Puntate su un''<strong>escursione</strong> per scoprire la bellezza della Toscana.
</p>

<h3>Informazioni Utili per la Vostra Escursione</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> Circa 5 km</li>
    <li><strong>Dislivello:</strong> 100 metri</li>
    <li><strong>Periodo Consigliato:</strong> Primavera o Autunno (evitare l''estate a causa del caldo)</li>
    <li><strong>Consigli:</strong> Portatevi acqua, cappello, crema solare e scarpe da trekking leggere.</li>
    <li><strong>Parco:</strong> Contattate il **Parco della Riserva Naturale di Grosseto** prima della vostra <strong>escursione</strong> per verificare la disponibilità dei <strong>sentieri</strong> e eventuali chiusure.</li>
    <li><strong>Servizi:</strong>  Un bar si trova vicino al parcheggio, ma è consigliabile portarne con sé una scorta di acqua, specialmente durante i mesi estivi.</li>
</ul>

<p>
La <strong>Grosseto Riserva Naturale</strong> vi aspetta per un''esperienza di <strong>trekking</strong> autentica e rigenerante.  Scoprite la bellezza della <strong>Toscana</strong> attraverso questo affascinante <strong>sentiero</strong>. Organizzate la vostra <strong>escursione</strong> oggi stesso!
</p>',
  'Tutte le Attività e Paesi',
  4.77,
  133,
  30,
  137,
  144,
  '02:24',
  NULL,
  NULL,
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

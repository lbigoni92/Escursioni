BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87616811,
  'Buca dei banditi - Percorso Breve',
  'Sentiero semplice e percorribile anche con scarpe da tennis in un paio di punti vi sono numerosi arbusti e rovi, si deve prestare attenzione. non ci sono punti difficili, l''unico punto dove prestare attenzione è al km 2.6 c''è un terrapieno d''appena un metro, ma vi potete aiutare con una corda messa li dal cai. Il percorso è ben evidenziato anche con delle stelle rosse che portano alla grotta. Sulla grotta è possibile individuare una targetta per indicare la storicità del posto',
  '<h2 id="buca-dei-banditi-percorso-breve">Escursione alla Buca dei Banditi - Percorso Breve</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza dell''escursione alla Buca dei Banditi, da Castellaccio ti dirizzerai lungo il sentiero.  È facilmente raggiungibile in auto, seguendo le indicazioni per il comune di Castellaccio. Dalla strada, il punto di partenza è raggiungibile a piedi, segnalato da pannelli indicativi.  È consigliabile arrivare con un po'' di anticipo per avere il tempo di orientarsi e prepararsi.</p>

<h3 id="il-percorso-passo-passo">Il percorso passo per passo</h3>
<p>Questo percorso breve alla Buca dei Banditi è perfetto per una giornata all''aria aperta! Inizierai da un punto di partenza facilmente individuabile e seguirai il sentiero ben segnalato. Il sentiero si snoda dolcemente attraverso la campagna toscana, offrendo splendidi panorami.  Il percorso è caratterizzato da alcuni tratti con arbusti e rovi, quindi è consigliabile prestare attenzione, soprattutto al km 2.6 dove è presente un terrapieno facilitato da una corda gentilmente predisposta dal CAI, per una maggiore sicurezza. L''escursione termina alla grotta della Buca dei Banditi, dove potrai ammirare la targetta che ne evidenzia l''importanza storica. Un''escursione semplice e piacevole adatta a tutti!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è classificata come <strong>Facile</strong>, rendendola adatta anche a chi non ha molta esperienza di trekking.  Il dislivello è di soli <strong>+135 metri</strong>, quindi il percorso è ben allenante ma non particolarmente impegnativo.  La distanza totale dell''anello è di circa <strong>7.92 km</strong>.  Ci sono alcuni tratti con vegetazione fitta, quindi è importante indossare scarpe da trekking adeguate e fare attenzione al terreno. Goditi il panorama e la tranquillità della campagna toscana!</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per orientarti durante l''escursione, ti consiglio di scaricare una traccia GPS per il tuo smartphone o dispositivo GPS.  Puoi trovare la traccia GPS di questa escursione tramite app dedicate o siti web specializzati.  Inoltre, tieni sempre con te una mappa della zona e una bussola.  </p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 7.92 km</li>
  <li><strong>Dislivello:</strong> Circa 135 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Castellaccio, raggiungibile in auto o a piedi</li>
  <li><strong>Comune:</strong> Castellaccio, Toscana</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.92,
  135,
  161,
  267,
  162,
  '2:35',
  135,
  '2:15',
  1879,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811',
  NULL,
  43.487804,
  10.36382,
  'POINT(10.36382 43.487804)',
  'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501',
  'Escursione Buca dei Banditi Castellaccio: percorso facile 7.9km, +185m. Trekking in Toscana, ideale anche con scarpe da tennis. Sentiero ben segnalato con st...',
  'Buca dei Banditi: Escursione Facile da Castellaccio (7.9km)',
  'Livorno e costa toscana',
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
VALUES (87616811, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811', NOW(), 'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87616811);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87616811/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87616811;

COMMIT;

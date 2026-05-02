BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87371842,
  'Buca dei banditi - Val di Chioma',
  'Per chi vuole fare un giro nelle colline livornesi alla scoperta dei luoghi storici della 2°guerra mondiale. Al km 3.9 s''arriva al punto dove si trova la grotta, non è sul sentiero principale ma dietro e segnato male quindi mi raccomando State attenti! Un paio di tratti tagliano dei sentieri quindi sono un pò selvaggi, consiglio pantaloni lunghi',
  '<h2 id="buca-dei-banditi-val-di-chioma">Escursione alla Buca dei Banditi – Val di Chioma</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bell''escursione nelle colline livornesi è al km 3.9 della strada che costeggia la Val di Chioma. Da Castellaccio, segui le indicazioni per la Val di Chioma e cerca il punto di accesso al sentiero, che è un po'' nascosto e non sempre ben segnalato. È raggiungibile in auto, ma l''ultimo tratto potrebbe essere stretto, quindi valuta bene l''auto.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Partendo dal punto di partenza, il sentiero si snoda attraverso i boschi e i campi delle colline livornesi. Il tratto iniziale è piuttosto semplice, ma dopo circa 3,9 km si arriva alla <strong id="buca-dei-banditi">Buca dei Banditi</strong>, una grotta utilizzata dai tedeschi durante la Seconda Guerra Mondiale.  Attenzione, ci sono alcuni tratti più selvaggi e un po'' impraticabili, quindi consiglio pantaloni lunghi per proteggerti dalla vegetazione. Il sentiero continua a salire, offrendo sempre un panorama suggestivo sulla Val di Chioma.  L''escursione è di tipo solo andata, quindi preparati a tornare indietro lungo lo stesso sentiero.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di <strong id="difficoltà">Facile</strong> difficoltà, adatta a escursionisti principianti e famiglie. La distanza totale è di circa 17,7 km con un dislivello di 443 metri.  Il sentiero è prevalentemente in mezzo al bosco, quindi preparati a sudare un po''. Ricorda che il sentiero è un po'' selvaggio in alcuni tratti, quindi indossa scarpe da trekking adatte e porta con te acqua e snack.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per scaricare la traccia GPS di questa escursione, visita <a href="https://escursionilucabigoni.it/traccia-gps-buca-dei-banditi-val-di-chioma/" target="_blank">questa pagina</a>. Ti consiglio di scaricare la traccia in un''app di navigazione per smartphone per seguirla durante l''escursione.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong id="distanza">Distanza:</strong> Circa 17.7 km (solo andata)</li>
  <li><strong id="dislivello">Dislivello:</strong> Circa 443 metri</li>
  <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
  <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong id="punto-di-partenza">Punto di partenza:</strong> Km 3.9 Strada che costeggia la Val di Chioma, Castellaccio, Toscana</li>
  <li><strong id="comune">Comune:</strong> Castellaccio, Toscana</li>
  <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  17.7,
  443,
  64,
  334,
  359,
  '5:59',
  312,
  '5:12',
  1037,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842',
  NULL,
  43.49502,
  10.35976,
  'POINT(10.35976 43.49502)',
  '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373',
  'Escursione Buca dei Banditi Val di Chioma: facile trekking tra le colline livornesi (Toscana). 17.7km, +443m. Km 3.9: grotta storica, sentieri selvaggi, cons...',
  'Buca dei Banditi: Escursione Toscana Facile',
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
VALUES (87371842, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-val-di-chioma-87371842', NOW(), '5f10081a7eed7b9c0eebd9509967174cd3fec26877803197c7a7b6efabbb2373')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87371842);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87371842/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87371842;

COMMIT;

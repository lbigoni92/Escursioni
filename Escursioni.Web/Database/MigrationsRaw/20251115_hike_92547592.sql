BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  92547592,
  'Trekking cittadino - Livorno - Centro',
  'Camminata molto semplice per la mia città, per riprendermi da un infortunio al ginocchio. La camminata, prevede di passare da alcuni dei luoghi storici più importanti del centro città: Fortezza Nuova Fortezza Vecchia Bottini dell''olio Monumento 4 mori Mercato centrale Porta stoica ex cantiere Luigi Orlando E'' adatta a tutte le persone, di tutte l''età, a famiglie, turisti ecc... ovviamente essendo in città ed essendo pochi chilometri non avete bisogno d''attrezzature, lungo il percorso ci sono diverse fontanelle, bar e ristoranti.',
  '<h2 id="trekking-cittadino-livorno-centro">Trekking Cittadino - Livorno - Centro</h2>

<p>
Ho deciso di intraprendere un''escursione un po'' diversa, per me. Dopo un infortunio al ginocchio, ho bisogno di muovermi e questo trekking cittadino a Livorno mi ha permesso di fare un bel po'' di chilometri, riprendendomi gradualmente. Un''escursione semplice e accessibile a tutti!
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
Il punto di partenza per questa bella escursione è il centro storico di Livorno. Possiamo partire dal Mercato Centrale e dirigereci verso Porta Stoica, da lì inizia il sentiero. Facile da raggiungere in auto o con i mezzi pubblici.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
Il sentiero è ben segnalato e si snoda attraverso le principali attrazioni di Livorno. Inizieremo dalla vivace atmosfera del Mercato Centrale, poi ci perderemo tra le mura della Fortezza Nuova e Vecchia, ammireremo i Bottini dell''olio, il Monumento 4 Mori, e ci perderemo nel cuore del centro. Un anello di circa 7 km, perfetto per una giornata all''insegna del benessere e della scoperta.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
Questa escursione è di <strong>Facile</strong> difficoltà, adatta a persone di tutte le età e livelli di preparazione fisica. Il dislivello è contenuto, solo <strong>+27 metri</strong>, quindi non ci sono ostacoli significativi. Lungo il percorso troverai diverse fontanelle e punti di ristoro, dove rinfrescarti e pranzare. Un''escursione ideale per famiglie, turisti e chiunque voglia semplicemente passeggiare e godersi la città.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
Per facilitare la tua escursione, ti lascio la <a href="#">traccia GPS</a>. Ricorda di controllare sempre le condizioni meteorologiche prima di partire e di indossare scarpe comode.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li><strong id="distanza">Distanza:</strong> Circa 7.19 km (anello)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 27 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Facile</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Mercato Centrale, Livorno, Bagni</li>
    <li><strong id="comune">Comune:</strong> Fiume, Bagni, Toscana, Italia</li>
    <li><strong id="tipo-di-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  7.19,
  27,
  -4,
  19,
  127,
  '2:07',
  111,
  '1:51',
  175,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fiume, Bagni',
  '2022-01-01',
  '2022-01-01',
  '2022-01-11 00:00:00',
  '2022-01-11 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-centro-92547592',
  NULL,
  43.551285,
  10.305487,
  'POINT(10.305487 43.551285)',
  '503369d892d9c9fbd976f5d6e516e42b22ea7f2ea45d03855efe8ff7c584ae53',
  'Escursione facile a Livorno: percorso cittadino di 7km con +27m dislivello! Esplora il centro storico toscano, Fortezza Nuova, Mercato Centrale e tanti altri...',
  'Livorno Centro: escursione facile in città (7.19km)',
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
VALUES (92547592, 'https://it.wikiloc.com/percorsi-escursionismo/trekking-cittadino-livorno-centro-92547592', NOW(), '503369d892d9c9fbd976f5d6e516e42b22ea7f2ea45d03855efe8ff7c584ae53')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 92547592);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/92547592/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/92547592/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 92547592;

COMMIT;

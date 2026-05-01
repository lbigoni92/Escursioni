BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  230008261,
  'Anello di Molina: Cascata dell’Orso, Doppio Covolo e Cascata Nera',
  'Itinerario ad anello con partenza da Molina che attraversa alcune delle attrazioni naturali più suggestive della zona. Il percorso è semplice, ben segnalato e adatto a tutti, con solo qualche breve salita e discesa. Lungo il cammino si incontrano passerelle sospese e piccoli ponti che possono dare qualche emozione a chi soffre di vertigini, ma in generale il tracciato rimane sicuro e accessibile. Tra i punti più interessanti si trovano: Grotta preistorica (0,2 km) Cascata dell’Orso (0,8 km), una delle più scenografiche, che si getta da una spaccatura tra due grandi rocce Doppio Covolo (1,1 km) Grotta delle Tette More (2,8 km) Cascata Nera (3,2 km) Le cascate sono numerose e spettacolari, soprattutto dopo le piogge, quando l’acqua è più abbondante. Il biglietto d’ingresso all’area naturale costa circa 8 euro. Un’escursione consigliata per famiglie, bambini e per chi desidera trascorrere qualche ora immerso nella natura, tra grotte, cascate e panorami caratteristici della Lessinia.',
  '<h2 id="anello-di-molina-cascata-dellorso-doppio-covolo-e-cascata-nera">Anello di Molina: Cascata dell’Orso, Doppio Covolo e Cascata Nera</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per l''anello di Molina è Molina, un piccolo paese nella provincia di Verona, in Veneto.  È facilmente raggiungibile in auto dalla Verona o da altre città della regione. Da Molina, segui le indicazioni per l''area naturale dove inizia il sentiero. In alternativa, è possibile raggiungere il punto di partenza a piedi partendo dal centro del paese.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo itinerario di trekking ad anello di circa 3,8 km ti condurrà attraverso alcune delle più belle attrazioni naturali della Lessinia. Inizia da Molina e segui il sentiero ben segnalato. Il percorso è prevalentemente facile e adatto a tutti, con qualche breve salita e discesa. Ti imbatterai in passerelle sospese e ponti, offrendoti scorci unici sulla natura circostante. Il percorso include la visita alla Grotta preistorica, alle cascate dell’Orso, del Doppio Covolo e della Cascata Nera, ognuna con la sua bellezza e il suo fascino.  Questo è un''ottima escursione per famiglie e per chiunque voglia ammirare panorami mozzafiato e le maestose cascate.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà FACILE, il che la rende adatta a famiglie, bambini e persone con poca esperienza di trekking. Il dislivello totale è di circa 227 metri, quindi ci saranno qualche salita e discesa, ma niente di impegnativo.  È consigliabile indossare scarpe da trekking o scarpe da ginnastica adatte al percorso. Porta con te acqua, snack e vestiti adatti alle condizioni climatiche.  La segnaletica è ben fatta e il sentiero è sicuro e accessibile.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Puoi trovare la traccia GPS completa di questo anello su piattaforme dedicate all''escursionismo.  Per quanto riguarda le informazioni pratiche, il biglietto d''ingresso all''area naturale costa circa 8 euro.  Ricorda di controllare le previsioni del tempo prima di partire.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 3.78 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 227 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Molina, accessibile in auto/a piedi</li>
    <li><strong>Comune:</strong> Molina, Veneto</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
    <li><strong>Parco Nazionale:</strong> Non applicabile</li>
</ul>',
  'Tutte le Attività e Paesi',
  3.78,
  227,
  411,
  544,
  97,
  '1:37',
  84,
  '1:24',
  617,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Veneto',
  'Molina',
  '2025-09-01',
  '2025-09-01',
  '2025-09-03 00:00:00',
  '2025-09-03 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261',
  NULL,
  45.609076,
  10.915492,
  'POINT(10.915492 45.609076)',
  '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878',
  'Escursione Molina: Anello Cascata Orso, Doppio Covolo & Nera | Facile 3.8km | Lessinia Veneto',
  'Lessinia: Anello Molina Cascata Orso (Dettagli)',
  'Trentino e Veneto',
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
VALUES (230008261, 'https://it.wikiloc.com/percorsi-escursionismo/cascata-dellorso-doppio-covolo-e-cascata-nera-da-molina-230008261', NOW(), '9a50a4f71c1b7bf04f41dee0d2ceb57b8a51e9d89247af1e62e236fb6c755878')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 230008261);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/230008261/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/230008261/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 230008261;

COMMIT;

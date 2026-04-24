BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  102949526,
  'Calignaia - Spiaggia Sonnino - Poggio delle Monachine - Castellaccio',
  'Buongiorno! Il percorso è quasi sempre bene segnato e facile tranne nella prima parte per arrivare al poggio delle Monachine, in quel tratto era un pò pieno d''arbusti e stretto. Al chilometro 8.4 si fa una discesa , che per chi è abituato alla montagna, non è difficile ma sennò prestate attenzione , si scivola. La parte che merita di più? Il Poggio delle Monachine che è sicuramente il punto più panoramico di tutta la zona sa li si ha una visuale su tutto il romito, merita davvero! Non usate scarpe aperte, e potate acqua non vi sono fontanelle!',
  '<h2>Calignaia - Spiaggia Sonnino - Poggio delle Monachine - Castellaccio: Trekking Panoramico in Calabria</h2>

<h3>Il Percorso: Un''Esplorazione di Sentieri Incredibili</h3>
<p>Preparatevi per un''entusiasmante <strong>escursione di trekking</strong> lungo la <strong>Calignaia</strong>, un percorso suggestivo che vi condurrà attraverso paesaggi mozzafiato della Calabria. Questo sentiero, di circa 13 chilometri, è ideale per <strong>trekking</strong> ed <strong>escursioni</strong>, offrendo una combinazione unica di costa e montagna. Il sentiero è generalmente ben segnato, sebbene la prima parte possa essere leggermente più impegnativa, con arbusti e tratti stretti.  La <strong>Calignaia</strong> è un''ottima opportunità per immergervi nella <strong>natura calabrese</strong> e scoprire i suoi segreti.</p>

<h3>Cosa Aspettarsi: Un''Avventura Ricca di Scoperte</h3>
<p>Durante questa <strong>escursione in montagna</strong>, potrete ammirare panorami spettacolari, scorrere sulla splendida <strong>spiaggia di Sonnino</strong> e raggiungere il <strong>Poggio delle Monachine</strong>, il punto più panoramico del percorso.  La discesa al chilometro 8.4 richiede un''attenzione particolare, soprattutto per chi non è abituato alla <strong>montagna</strong>, data la potenziale superficie scivolosa.  La difficoltà del sentiero è moderata,  ma è fondamentale indossare scarpe da trekking adatte e prepararsi adeguatamente.</p>

<h3>Informazioni Utili: Pianificate il Vostro Trekking</h3>
<ul>
  <li><b>Distanza:</b> Circa 13 km</li>
  <li><b>Difficoltà:</b> Moderata (con tratti più impegnativi nella prima parte e discesa al chilometro 8.4)</li>
  <li><b>Tipo di Percorso:</b> Sentiero <strong>trekking</strong>, adatto anche a <strong>escursioni</strong> occasionali</li>
  <li><b>Punti di Interesse:</b> <strong>Poggio delle Monachine</strong> (vista panoramica), <strong>Castellaccio</strong></li>
  <li><b>Accessibilità:</b> Iniziando da <strong>Sonnino</strong>, il sentiero offre un''esperienza accessibile a molti.</li>
  <li><b>Consigli:</b> Indossate scarpe da <strong>trekking</strong> robuste, portate acqua a sufficienza (non ci sono fontanelle) e siate consapevoli della potenziale superficie scivolosa durante la discesa.  Non utilizzate scarpe aperte.</li>
</ul>

<p>Questo affascinante <strong>sentiero in Calabria</strong> vi regalerà un''indimenticabile <strong>escursione</strong> tra la costa e la <strong>montagna</strong>.  Organizzate il vostro <strong>trekking</strong> lungo la <strong>Calignaia</strong> e preparatevi a vivere un''esperienza unica!</p>',
  'Tutte le Attività e Paesi',
  11.21,
  452,
  22,
  276,
  484,
  '08:04',
  NULL,
  NULL,
  309,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Quercianella',
  '2022-05-01',
  '2022-05-01',
  '2022-05-16 00:00:00',
  '2022-05-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calignaia-spiaggia-sonnino-monachine-castellaccio-102949526',
  NULL,
  43.465625,
  10.35485,
  'POINT(10.35485 43.465625)',
  '55b92aad061b5b250fb6e298248ab3026edd0193494ea7b0e464c96cb2160950',
  'Escursione Toscana: Calignaia - Spiaggia Sonnino - Castellaccio! Anello medio (11km, 452m D+), zona Quercianella. Viste mozzafiato al Poggio delle Monachine!...',
  'Callaia: escursione da Quercianella (Castellaccio, Monach...',
  'Versilia e costa toscana',
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
VALUES (102949526, 'https://it.wikiloc.com/percorsi-escursionismo/calignaia-spiaggia-sonnino-monachine-castellaccio-102949526', NOW(), '55b92aad061b5b250fb6e298248ab3026edd0193494ea7b0e464c96cb2160950')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 102949526);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/102949526/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/102949526/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 102949526;

COMMIT;

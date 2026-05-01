BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  109999488,
  'Gabbro anello serale Poggio D''arco',
  'Siamo partiti dal parcheggio Gabbro e da li abbiamo iniziato un anello improvvisato prima della sagra del Cinghiale. Il giro si è rivelato molto carino e facile da seguire, in un paio di punti c''era un po di erba alta, ma niente di che. Ci sono diversi punti dov''è possibile godere di un panorama Unico nel suo genere. Dopo il giro, Siamo andati alla sagra nel paese a cena, se passate da quelle parti possate anche sul monte Pelato. c''è un grandissimo parcheggio dove lasciare l''auto... e subito a inizio percorso c''è una fontanella, potete andare anche con le scarpe da tennis .',
  '<h2 id="gabbro-anello-serale-poggio-darco">Escursione al Gabbro: Anello Serale a Poggio D''Arco</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza di questa bella escursione è il parcheggio "Gabbro", situato nel comune di Gabbro, in provincia di Toscana. L''accessibile in auto e, per i più avventurosi, anche a piedi. Particolare attenzione c''è una fontanella subito all''inizio del sentiero per rinfrescarsi.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Abbiamo intrapreso un anello improvvisato partendo dal parcheggio Gabbro. Il sentiero è facile da seguire, anche se in alcuni punti l''erba alta potrebbe rendere il percorso un po'' impegnativo. L''escursione è un''ottima opportunità per godere di panorami unici. Il giro è stato un''esperienza piacevole e rilassante, perfetta per una serata in montagna. La sagra del Cinghiale, tenutasi nel paese, ci ha offerto una cena gustosa.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di **facile** difficoltà, adatta a tutti, anche a chi non ha molta esperienza. Il dislivello è di circa 311 metri, rendendo il percorso accessibile a persone di diverse età e condizioni fisiche. La distanza dell''anello è di 6.3 km.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<p>Sarà disponibile presto una traccia GPS per facilitare l''escursione. Ti consigliamo di indossare scarpe da trekking adatte e di portare con te acqua e snack. Ricorda di rispettare l''ambiente e di lasciare i sentieri puliti.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
    <li><strong>Distanza:</strong> Circa 6.3 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 311 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Parcheggio Gabbro, Gabbro, Toscana</li>
    <li><strong>Comune:</strong> Gabbro, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  6.3,
  311,
  178,
  416,
  152,
  '2:32',
  132,
  '2:12',
  1121,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Gabbro',
  '2022-08-01',
  '2022-08-01',
  '2022-08-07 00:00:00',
  '2022-08-07 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/gabbro-anello-serale-poggio-darco-109999488',
  NULL,
  43.481497,
  10.443688,
  'POINT(10.443688 43.481497)',
  '125ea1d4b5611ba4a99c0d8a9fafedcdb17372d19eb6ca447fce28794a7e03eb',
  'Escursione Gabbro anello Poggio D''Arco (Toscana): Facile giro di 6.3km +174m. Percorso anello dal parcheggio Gabbro, ideale per una serata! Panorami unici e ...',
  'Gabbro: escursione anello da Poggio D''Arco (facile, panor...',
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
VALUES (109999488, 'https://it.wikiloc.com/percorsi-escursionismo/gabbro-anello-serale-poggio-darco-109999488', NOW(), '125ea1d4b5611ba4a99c0d8a9fafedcdb17372d19eb6ca447fce28794a7e03eb')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 109999488);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/109999488/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/109999488/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 109999488;

COMMIT;

BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  182508862,
  'Corchia dal pirosetto',
  'Il versante sud-est del Monte Corchia è particolarmente suggestivo, caratterizzato da quattro slanciati torrioni. Questo itinerario ad anello offre un''entusiasmante traversata della vetta, gran parte della quale si snoda lungo una cresta panoramica, mai particolarmente impegnativa (se siamo allenati, personalmente non ho faticato). Il ritorno è un rilassante percorso tra sentieri immersi in una faggeta. La partenza avviene dal Passo Croce (1160 m), raggiungibile in auto a breve distanza dal paese di Levigliani. Dal valico, una volta terminato il tratto asfaltato, si parcheggia e si prosegue a piedi lungo la strada marmifera (bloccata da una sbarra) in direzione della cava dei Tavolini. Dopo alcuni tornanti, poco prima che la marmifera passi sotto un caratteristico arco artificiale di roccia, si trova una traccia ben visibile (con sporadici segnavia blu) che sale a sinistra, inerpicandosi ai piedi dei torrioni. In breve tempo si raggiunge la base delle pareti e si traversa a destra, fino a trovarsi tra il III° e il IV° torrione, dove si apre il Canale del Pirosetto, che si risale. Anche se occasionalmente è necessario usare le mani, non ci sono difficoltà significative; il canale è lungo circa 50 metri e, dopo un breve e ultimo salto, si riprende il sentiero. Si continua a salire verso la cresta, con una vista che si apre progressivamente, rivelando la vetta del Corchia (e purtroppo anche la ferita aperta della cava dei Tavolini). Giunti in cresta, si inizia la panoramica traversata: si sale prima sull''anticima (1632 m), poi si scende costeggiando la cava, per infine risalire alla vetta principale (1677 m), da cui si gode un panorama eccezionale sulla Pania della Croce e sul Pizzo delle Saette. La discesa avviene lungo il percorso normale che conduce al rifugio Del Freo da li segue il rientro alle auto. Consiglio l''uso del casco nel tratto del Canale, nel caso cada qualche roccetta.',
  '<h2 id="escursione-corchia-dal-pirosetto">Escursione dalla Corchia dal Pirosetto</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>
<p>Il punto di partenza per questa escursione è il Passo Croce (1160 m), facilmente raggiungibile in auto a breve distanza dal paese di Levigliani. Una volta raggiunto il valico, si parcheggia dopo aver superato il tratto asfaltato e si prosegue a piedi lungo la strada marmifera (bloccata da una sbarra) in direzione della cava dei Tavolini.  L''accesso al sentiero inizia poco prima che la marmifera passi sotto un arco artificiale di roccia.</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>
<p>Il sentiero inizia con una salita ripida attraverso la faggeta, seguendo una traccia ben visibile con segnavia blu. Dopo un tratto più facile, si entra nel Canale del Pirosetto, dove occasionalmente si usano le mani. Il canale è lungo circa 50 metri, con un breve salto finale.  Dalla base del canale, si prosegue sulla cresta panoramica, attraversando l''anticima e raggiungendo la vetta principale del Corchia, godendo di un panorama eccezionale. La discesa rientra seguendo il percorso normale verso il rifugio Del Freo.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>
<p>Questa escursione è di difficoltà media. Il sentiero richiede un minimo di allenamento, ma non presenta ostacoli particolarmente impegnativi.  Si consiglia l''uso del casco nel tratto del Canale del Pirosetto, per evitare che cadano roccette.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>
<ul>
    <li>Distanza: Circa 9.27 km (anello)</li>
    <li>Dislivello: Circa 985 m</li>
    <li>Difficoltà: Medio</li>
    <li>Periodo consigliato: Primavera, Estate, Autunno</li>
    <li>Punto di partenza: Passo Croce (1160 m), Levigliani, Toscana, Italia</li>
    <li>Comune: Levigliani</li>
    <li>Regione: Toscana</li>
    <li>Tipo di sentiero: Sentiero escursionistico</li>
</ul>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul id="informazioni-utili">
    <li><strong id="distanza">Distanza:</strong> Circa 9.27 km (anello)</li>
    <li><strong id="dislivello">Dislivello:</strong> Circa 985 metri</li>
    <li><strong id="difficoltà">Difficoltà:</strong> Medio</li>
    <li><strong id="periodo-consigliato">Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong id="punto-di-partenza">Punto di partenza:</strong> Passo Croce (1160 m), Levigliani, Toscana, Italia</li>
    <li><strong id="comune">Comune:</strong> Levigliani, Toscana</li>
    <li><strong id="tipo-sentiero">Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  9.27,
  985,
  1147,
  1680,
  278,
  '4:38',
  242,
  '4:02',
  1240,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Levigliani',
  '2024-08-01',
  '2024-08-01',
  '2024-08-25 00:00:00',
  '2024-08-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/corchia-dal-pirosetto-182508862',
  NULL,
  44.03441,
  10.274098,
  'POINT(10.274098 44.03441)',
  '80bbfa8db30a99a5aecddcad241eb064b56fb10b27112ca7784a8af18a986123',
  'Escursione Corchia dal Pirosetto: Anello in Toscana, 9.3km, +985m. Trekking facile/medio tra torrioni e cresta panoramica. Partenza Passo Croce (1160m). Ideale!',
  'Corchia: Escursione Anello da Passo Croce (Toscana)',
  'Alpi Apuane',
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
VALUES (182508862, 'https://it.wikiloc.com/percorsi-escursionismo/corchia-dal-pirosetto-182508862', NOW(), '80bbfa8db30a99a5aecddcad241eb064b56fb10b27112ca7784a8af18a986123')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 182508862);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/182508862/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_21.jpg', 21,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_22.jpg', 22,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/182508862/photo_23.jpg', 23,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 182508862;

COMMIT;

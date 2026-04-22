BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  187225802,
  'Pomaia e Poggi',
  'Pomaia: Escursione tra le Colline Pisane I sentieri in questa zona delle colline pisane non sono mantenuti al meglio. Se volete raggiungere i poggi più panoramici, dovrete immergervi in un territorio selvaggio. Sebbene non si tratti di veri e propri sentieri da trekking, sono comunque percorribili grazie ai sentieri dei cacciatori, anche se dovrete fare i conti con rovi e alberi. Tra i monti da esplorare, quelli dell''andata sono i più panoramici. Vi consiglio di visitare il Monte Vasino con il suo suggestivo balcone panoramico, e anche il Termine delle Roccacce. Dopo questo punto, i sentieri diventano più tranquilli e simili a strade tra i campi. Evitate invece di andare verso il Monte Vaso, poiché l''accesso è bloccato da un recinto. Il ritorno è stato piuttosto semplice, eccetto per un paio di poggi su cui avrei voluto salire, ma i sentieri erano ormai inglobati dalla vegetazione. Molto bella la parte finale che attraversa il fiume.',
  '<h2>Pomaia e Poggi: Escursione Trekking nelle Colline Pisane</h2>

<h3>Il Percorso</h3>
<p>
Immergiti in un''escursione indimenticabile attraverso le <strong>Colline Pisane</strong>, un''opportunità unica per l''<strong>trekking</strong> e l''<strong>escursionismo</strong> in un territorio selvaggio e autentico. Questo sentiero, che si snoda tra <strong>sentieri</strong> di caccia e rovi, offre un''esperienza di <strong>natura</strong> incontaminata. Il percorso, principalmente lungo i sentieri dei cacciatori, ti porterà ad esplorare il <strong>Monte Vasino</strong>, noto per il suo suggestivo balcone panoramico, e il Termine delle Roccacce. La prima parte dell''escursione è particolarmente selvaggia, con una forte presenza di vegetazione, mentre la seconda si sviluppa tra campi e strade rurali, culminando con un attraversamento di un affluente del fiume. Sebbene non sia un vero e proprio sentiero da <strong>trekking</strong>, la sua percorribilità lo rende ideale per chi cerca un''avventura nella <strong>montagna</strong>.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Preparati per un''esperienza di <strong>trekking</strong> impegnativa ma ricca di emozioni, che ti condurrà attraverso un territorio non sempre ben mantenuto. Dovrai affrontare rovi, alberi e tratti di sentiero poco battuti. La difficoltà del percorso è medio-alta, e richiede un buon livello di preparazione fisica e una buona dose di spirito d''avventura.  Le viste panoramiche dal <strong>Monte Vasino</strong> compensano ampiamente gli sforzi richiesti.  La flora e la fauna locali, sebbene non particolarmente spettacolari, offrono un''esperienza autentica di contatto con la <strong>natura</strong>.  Questa <strong>escursione</strong> è perfetta per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> che desiderano scoprire i segreti delle <strong>Colline Pisane</strong>.  Ricorda, l''accesso al <strong>Monte Vaso</strong> è bloccato da un recinto.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><b>Distanza Totale:</b> Circa 8-10 km (escursione non regolamentata)</li>
    <li><b>Difficoltà:</b> Medio-Alta</li>
    <li><b>Dislivello:</b> Circa 300-400 metri</li>
    <li><b>Periodo Consigliato:</b> Primavera - Autunno</li>
    <li><b>Attrezzatura Consigliata:</b> Scarpe da trekking, zaino, acqua, snack, abbigliamento adeguato alle condizioni meteo, mappa e bussola/GPS.</li>
    <li><b>Punti di Interesse:</b> <strong>Monte Vasino</strong> (balcone panoramico), Termine delle Roccacce, attraversamento del fiume.</li>
</ul>

<p>
Scopri le meraviglie del territorio pisano con questa <strong>escursione</strong>. Ricorda di rispettare l''ambiente e di seguire le indicazioni locali.  Un''avventura indimenticabile ti aspetta tra le <strong>Colline Pisane</strong>!
</p>',
  'Tutte le Attività e Paesi',
  14.27,
  577,
  152,
  617,
  200,
  '03:20',
  200,
  '03:20',
  2377,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Pomaia',
  '2024-10-01',
  '2024-10-01',
  '2024-10-05 00:00:00',
  '2024-10-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pomaia-e-poggi-187225802',
  NULL,
  43.432981,
  10.566135,
  'POINT(10.566135 43.432981)',
  '59f9238bc48ffc9b02a8342502b2be0d52d45c5fa6926dac43c217ee0b5a1bf4',
  'Escursione Pomaia e Poggi: Anello in Toscana, Colline Pisane | 14.27km, +577m. Trekking tra rovi e sentieri cacciatori. Monte Vasino & Termine Roccacce.',
  'Pomaia: Escursione tra le Colline Pisane (14km)',
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
VALUES (187225802, 'https://it.wikiloc.com/percorsi-escursionismo/pomaia-e-poggi-187225802', NOW(), '59f9238bc48ffc9b02a8342502b2be0d52d45c5fa6926dac43c217ee0b5a1bf4')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 187225802);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/187225802/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_19.jpg', 19,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/187225802/photo_20.jpg', 20,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 187225802;

COMMIT;

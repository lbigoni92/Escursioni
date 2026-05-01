BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  158070505,
  'Momente serra - Monte Cimone ~ Monumento ai caduti del Vega',
  'Sentieristica:142-138-135-00-Punta san Benrardo->00 Ciama Ceragiola->00 Monte Cimone->146->Rifugio il Sorbo->strada I sentieri sono tutti sentieri E, si deve prestare attenzione solamente alla lunghezza del percorso che potrebbe essere impegnativa per persone non allenate. Il sentiero si presenta sempre largo e ben segnato tranne il tratto dello 00 che scende dal Serra, li abbiamo trovato qualche rovo, non vi sono difficoltà tecniche o salite impegnative. il sentiero nella sua seconda parte regala punti panoramici unici che sicuramente meritano d''essere conosciuti e visitati. Il monte Serra (917 m s.l.m.) è la vetta più alta della piccola catena montuosa subappenninica dei Monti Pisani che si estendono per una ventina di chilometri a nordest di Pisa ed a sudovest di Lucca, svolgendo, di fatto, il ruolo di confine naturale tra le due province. Il monte è anche la vetta più elevata della provincia di Pisa. "Il Monumento ai caduti del "Vega 10" è un simbolo eretto per ricordare alle generazioni presenti e future che esistono ideali in cui i giovani eletti credono ed ai quali sono pronti a dedicare ogni energia fino al sacrificio della vita." Con queste parole si apre il libretto stampato in occasione dell''inaugurazione di quello che tutte le famiglie dei Caduti chiamano famigliarmente "Il Faro". Alla fine del 1977, a distanza di pochi mesi dal tragico incidente, fu presa la decisione di erigere il monumento sul luogo della tragedia, e, grazie allo sforzo congiunto degli enti promotori e delle maestranze, nel corso del 1978 il lavoro fu completato ed il 3 Marzo 1979 fu possibile inaugurare l''opera.',
  '<h2 id="momente-serra-monte-cimone-monumento-ai-caduti-del-vega">Escursione al Momente Serra - Monte Cimone e Monumento ai Caduti del Vega</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Per raggiungere il punto di partenza dell''escursione, si consiglia di prendere la strada statale 66 (Via del Cerrai) in direzione di Buti. Da qui, seguendo le indicazioni per il Monte Cimone, si giunge al campo base di partenza, situato in prossimità del Monumento ai caduti del Vega.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia da un punto vicino al Monumento ai caduti del Vega e segue il sentiero 142-138-135-00 che conduce alla Punta San Bernardo. Il sentiero si snoda dolcemente, raggiungendo poi la Ciama Ceragiola e proseguendo verso il Monte Cimone.  Il tratto dello 00 presenta alcuni rovi, ma non rappresenta difficoltà tecniche. Una volta raggiunta la vetta del Monte Cimone (917 m s.l.m.), si prosegue con il sentiero 146 fino al Rifugio il Sorbo, dove si gode di un panorama mozzafiato. Dallo rifugio si riprende la discesa lungo i sentieri segnalati, per poi ritrovare la strada I, concludendo il giro.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questo trekking di 18.18 km con un dislivello positivo di 824 metri presenta una difficoltà medio. È consigliabile essere in buona forma fisica e avere un minimo di esperienza nell''escursionismo. Il percorso è principalmente in salita e presenta alcuni tratti più tecnici, ma non richiede attrezzatura specifica.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Disponibile traccia GPS per questo percorso. Ricordate di scaricare la traccia sul vostro dispositivo GPS prima di partire e di controllare attentamente le condizioni del sentiero.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 18.18 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 824 metri</li>
  <li><strong>Difficoltà:</strong> Medio</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Campo base vicino al Monumento ai caduti del Vega, accessibile in auto/piedi</li>
  <li><strong>Comune:</strong> Buti, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  18.18,
  824,
  436,
  896,
  433,
  '7:13',
  376,
  '6:16',
  2967,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Buti',
  '2024-01-01',
  '2024-01-01',
  '2024-01-13 00:00:00',
  '2024-01-13 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/momente-serra-monte-cimone-monumento-ai-caduti-del-vega-158070505',
  NULL,
  43.73503,
  10.560353,
  'POINT(10.560353 43.73503)',
  'e2990cdb6b9f0ead075614a2647a8a9b13635a50caf497888e65c65b5bd35291',
  'Escursione Monte Cimone (Toscana): Anello Buti - Monumento Caduti del Vega (824m, 18.18km). Trekking medio facile tra panorami mozzafiato!',
  'Monte Cimone: Escursione da Serra (Toscana, 18km)',
  'Monti Pisani',
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
VALUES (158070505, 'https://it.wikiloc.com/percorsi-escursionismo/momente-serra-monte-cimone-monumento-ai-caduti-del-vega-158070505', NOW(), 'e2990cdb6b9f0ead075614a2647a8a9b13635a50caf497888e65c65b5bd35291')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 158070505);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/158070505/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/158070505/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 158070505;

COMMIT;

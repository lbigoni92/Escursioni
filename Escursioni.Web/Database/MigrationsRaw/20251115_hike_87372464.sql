BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87372464,
  'Annello: Castellaccio - Romito - Maroccone',
  'FACILE ALLA PORTATA DI TUTTI La discesa dal Castellaccio è semplice e ben segnata, il tratto finale se piove è pericoloso, altrimenti non vi sono problemi di nessun tipo. Prestare attenzione sulla strada Tratto in salita facile, ben segnalato ma occhio a i cinghiali ne abbiamo trovato uno.',
  '<h2 id="annello-castellaccio-romito-maroccone">Annello: Castellaccio - Romito - Maroccone</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bellissima escursione è all''inizio del paese di Castellaccio, in Toscana. È facilmente raggiungibile in auto, seguendo le indicazioni per il paese. Il parcheggio più comodo è vicino alla chiesa del paese, da cui si parte subito sul sentiero.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia con una discesa dal **Castellaccio**, un sentiero ben tracciato e facile, perfetto anche per i principianti.  La discesa è semplice e ben segnata, ma attenzione perché il tratto finale, soprattutto in caso di pioggia, può diventare scivoloso.  Proseguendo, si entra nel **Romito**, un ambiente naturale selvaggio e affascinante, con un tratto in salita facile ma ben segnalato.  Durante l''escursione, tenete gli occhi aperti: ne abbiamo avvistato uno! Un breve tratto si svolge lungo la strada, con una salita moderata. Infine, si raggiunge il **Maroccone**, offrendo un panorama mozzafiato sulla valle e sulla **montagna** circostante. Questo è un vero e proprio anello di **escursione** che vi permetterà di ammirare i panorami.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa **escursione** è classificata come **Media**, adatta a escursionisti con un livello di preparazione intermedio.  La distanza totale è di circa 10,56 km con un **dislivello** di +300 metri.  Preparatevi a camminare per diverse ore e ad affrontare salite e discese.  È consigliabile indossare scarpe da trekking e portare con sé acqua, snack e un kit di pronto soccorso.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Potete scaricare una <strong >traccia GPS</strong> per questa **escursione** per guidarvi durante il percorso.  Ricordate di consultare sempre le previsioni del tempo prima di partire e di informare qualcuno del vostro itinerario.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li><strong >Distanza:</strong> Circa 10.56 km (anello)</li>
  <li><strong >Dislivello:</strong> Circa 300 metri</li>
  <li><strong >Difficoltà:</strong> Media</li>
  <li><strong >Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong >Punto di partenza:</strong> Inizio paese di Castellaccio, Toscana</li>
  <li><strong >Comune:</strong> Castellaccio, Toscana</li>
  <li><strong >Regione:</strong> Italia</li>
  <li><strong >Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.56,
  300,
  11,
  296,
  222,
  '3:42',
  193,
  '3:13',
  278,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2021-02-01',
  '2021-02-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464',
  NULL,
  43.485888,
  10.362884,
  'POINT(10.362884 43.485888)',
  '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51',
  'Escursione Castellaccio Romito Maroccone Toscana: Anello facile 10.5km, 300m dislivello. Trekking in provincia di Massa, ideale per famiglie e principianti.',
  'Castellaccio - Romito - Maroccone: Escursione Toscana Facile',
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
VALUES (87372464, 'https://it.wikiloc.com/percorsi-escursionismo/annello-castellaccio-romito-maroccone-con-lupus-in-trekking-87372464', NOW(), '01b75bd9b28a9f3fe04f6069211d6be9ab54ce611da654de87fde174839e4f51')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372464);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372464/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372464;

COMMIT;

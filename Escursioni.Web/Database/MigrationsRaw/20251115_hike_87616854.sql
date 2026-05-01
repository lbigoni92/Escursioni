BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87616854,
  'Capraia Isola - Percorso che s''interruppe per scarpe rotte',
  'Percorso bello, fatto d''estate, molto caratteristico il primo tratto in mezzo alle vecchie abitazioni, fino al km 1.9. Al km2.6 s''arriva al ex penitenziario dell''Isola consiglio di fermarsi in quanto adesso è un allevamento di caprette. In seguito abbiamo proseguito ma appena imboccato il vero sentiero un mia amico ha avuto la sfortuna che gli si scollassero le scarpe e siamo tornati in dieto, ma il percorso è semplice bastava proseguire fino alla baia che distava appena 2/3km. Percorso molto bello ma che sconsiglio d''estate non ci sono alberi, fa caldo e non ci sono fontanelle. Noi finimmo il percorso andando a fare il tuffo a una spiaggia vicino ai traghetti, mare stupendo e bei posti! fatemi sapere la vostra esperienza.',
  '<h2 id="percorso-capraia-isola-che-s-interruppe-per-scarpe-roto">Capraia Isola - Percorso che s''interruppe per scarpe rotte</h2>

<p>
Ho fatto questo itinerario d''estate e devo dire che è un''esperienza unica! Il primo tratto è davvero suggestivo, si snoda tra le vecchie case dell''isola, un''atmosfera particolare. Dopo circa 1,9 km, arriviamo all''ex penitenziario dell''Isola, un posto interessante dove si trova un allevamento di capre. 
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
Il punto di partenza è a Porto, nel comune di Porto, in Toscana. Da Porto potete raggiungere il punto di partenza a piedi o con un breve tragitto in autobus.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
Il percorso inizia da Porto e segue un sentiero escursionistico che si inoltra nell''entroterra dell''isola. Dopo il tratto storico, si prosegue fino all''ex penitenziario dell''Isola, poi si arriva alla baia, distesa per 2/3 km.  A causa di una sfortuna, il mio amico ha avuto la sfortuna che gli si scollassero le scarpe, abbiamo dovuto tornare indietro, ma il percorso fino alla baia è semplice e piacevole.  La baia offre la possibilità di un tuffo nel mare stupendo.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
La difficoltà di questo percorso è **Facile**. È un''escursione adatta a tutti, ma è importante considerare che d''estate, senza alberi e con caldo intenso, può diventare impegnativa. Non ci sono fontanelle lungo il percorso, quindi è fondamentale portare con sé acqua a sufficienza.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
Questo percorso è un''escursione di tipo **Solo andata** con una distanza di circa 4,62 km e un dislivello di 229 metri. Per poterlo affrontare al meglio, consiglio di indossare scarpe da trekking adatte e di portare con sé un cappello e crema solare. Se possibile, è meglio affrontare il percorso in primavera, estate o autunno.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul>
  <li><strong>Distanza:</strong> Circa 4.62 km (solo andata)</li>
  <li><strong>Dislivello:</strong> Circa 229 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Porto, raggiungibile a piedi o in autobus</li>
  <li><strong>Comune:</strong> Porto, Toscana</li>
  <li><strong>Regione:</strong> Italia</li>
</ul>',
  'Tutte le Attività e Paesi',
  4.62,
  229,
  18,
  184,
  108,
  '1:48',
  94,
  '1:34',
  1278,
  'Facile',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Porto',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/capraia-isola-percorso-che-sinterruppe-per-scarpe-rotte-87616854',
  NULL,
  43.051089,
  9.835979,
  'POINT(9.835979 43.051089)',
  '93b41048ca243c5cdcd9a851c8b211fb0eef3cc652c9d08af2a5c023a93390e1',
  'Escursione Capraia Isola: facile percorso di 4.6km +229m da Porto, Toscana. Tratto storico, ex penitenziario e ritorno alla spiaggia! Perfetto per un tuffo!',
  'Capraia Isola: Escursione al Baia (Toscana)',
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
VALUES (87616854, 'https://it.wikiloc.com/percorsi-escursionismo/capraia-isola-percorso-che-sinterruppe-per-scarpe-rotte-87616854', NOW(), '93b41048ca243c5cdcd9a851c8b211fb0eef3cc652c9d08af2a5c023a93390e1')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87616854);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87616854/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87616854;

COMMIT;

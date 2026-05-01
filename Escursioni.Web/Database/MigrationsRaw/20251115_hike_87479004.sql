BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87479004,
  'Valle Benedetta - Parrana San Martino',
  'Questo sentiero parte dalla Valle Benedetta, e lo abbiamo percorso con l’idea di fare una tranquilla passeggiata mattutina alla ricerca di qualche fungo.

Arrivati alla Valle Benedetta, abbiamo proseguito fino al parcheggio dove si trova il classico crocifisso. Da lì non abbiamo imboccato il sentiero 00 in direzione Sambuca, scegliendo di salire.

Al primo incrocio abbiamo preso subito a sinistra, continuando fino ad arrivare quasi a Parrana San Martino. A quel punto siamo tornati indietro lungo lo stesso sentiero e, una volta rientrati all’incrocio, abbiamo deciso di scendere verso il podere Il Pianone.

Da lì abbiamo fatto ritorno, chiudendo l’anello e concludendo il nostro giro.',
  '<h2 id="valle-benedetta-parrana-san-martino">Escursione a Parrana San Martino dalla Valle Benedetta</h2>

<p>
   Volete una bella giornata in montagna con un anello facile e panoramico? L''escursione dalla Valle Benedetta a Parrana San Martino è perfetta! L''abbiamo affrontata con l''idea di una passeggiata mattutina, sperando anche di trovare qualche fungo. Un''escursione semplice, ideale per una giornata all''aria aperta.
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come Arrivare al Punto di Partenza</h3>

<p>
   Il punto di partenza è la Valle Benedetta, comune di Valle Benedetta in Toscana. Raggiungibile in auto o, per i più avventurosi, a piedi.  È un ottimo punto di partenza per questa escursione.
</p>

<h3 id="il-percorso-passo-per-passo">Il Percorso Passo per Passo</h3>

<p>
   Partendo dalla Valle Benedetta, ci dirigiamo verso il parcheggio dove si trova il crocifisso. Da lì, invece di imboccare il sentiero 00 in direzione Sambuca, scegliamo di salire. Al primo incrocio, prendiamo subito a sinistra, proseguendo fino ad arrivare a Parrana San Martino.  Una volta raggiunta Parrana San Martino, rientriamo lungo lo stesso sentiero, fino all''incrocio. Da qui, scendiamo verso il podere Il Pianone per chiudere l''anello e tornare al punto di partenza. Un percorso ben definito, adatto a tutti!
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e Cosa Aspettarsi</h3>

<p>
   Questa escursione è di difficoltà facile, perfetta per una passeggiata mattutina. La distanza totale è di circa 11.61 km con un dislivello di 299 metri.  L''anello è ideale per chi cerca un''escursione tranquilla e non troppo impegnativa.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e Informazioni Pratiche</h3>

<p>
   Disponibile traccia GPS per facilitare l''escursione.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul >
    <li><strong>Distanza:</strong> Circa 11.61 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 299 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Valle Benedetta, Toscana</li>
    <li><strong>Comune:</strong> Valle Benedetta, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  11.61,
  299,
  242,
  435,
  293,
  '4:01',
  210,
  '3:30',
  3288,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  '2020-11-01',
  '2020-11-01',
  '2021-10-27 00:00:00',
  '2021-10-27 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-parrana-san-martino-87479004',
  NULL,
  43.522087,
  10.406714,
  'POINT(10.406714 43.522087)',
  '7035e440158abfdd8c2aff630fd04183f62d2c473b5a920943d4baebab08ea06',
  'Escursione Valle Benedetta - Parrana San Martino: facile anello di 11.6km in Toscana (+384m dislivello). Perfetta per una passeggiata mattutina!',
  'Parrana San Martino: escursione facile da Valle Benedetta...',
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
VALUES (87479004, 'https://it.wikiloc.com/percorsi-escursionismo/valle-benedetta-parrana-san-martino-87479004', NOW(), '7035e440158abfdd8c2aff630fd04183f62d2c473b5a920943d4baebab08ea06')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87479004);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87479004/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87479004;

COMMIT;

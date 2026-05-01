BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  88152122,
  'Calambrone2',
  'Una camminata tranquilla che facevo durante le mie pause pranzo. Adatta a famiglie vi sono sia tratti esposti al sole, se non siete abituati, non fatela d''estate a mezzogiorno. Non ci sono fontanelle, fattibile con qualsiasi tipo d''attrezzatura... ma per l''amor di dio, evitate l''infradito. Vedo spesso rondini a settembre e anatre vicino a bocca di Scormatore, è possibile anche vedere cinghiali',
  '<h2 id="escursione-calambrone2">Escursione al Calambrone</h2>

<p>
  Recentemente ho fatto una splendida escursione attorno al Calambrone, un anello facile e perfetto per una pausa pranzo o per una giornata in montagna con la famiglia. Nonostante la sua semplicità, il sentiero offre panorami incantevoli e la possibilità di avvistare la fauna locale, dalle rondini a settembre alle anatre vicino alla bocca di Scormatore, e, se siete fortunati, anche i cinghiali. Ricordate, però, che il sole può essere intenso, quindi evitate di fare l''escursione nelle ore centrali dell''estate!
</p>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>

<p>
  Il punto di partenza dell''escursione è facilmente raggiungibile in auto. Dalla SS17, prendete l''uscita per Calambrone e seguite le indicazioni per il Parco di Scormatore. Potete parcheggiare nei parcheggi disponibili all''ingresso del parco. Dallo scalo in auto, per raggiungere il punto di partenza del sentiero dovrete percorrere circa 500 metri a piedi.
</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>

<p>
  L''anello del Calambrone è un sentiero di circa 10,05 km, con un dislivello di 0 metri e una difficoltà facilmente accessibile, adatta anche alle famiglie. Il percorso è prevalentemente in piano, con qualche breve salita e discesa, e si snoda lungo il crinale, offrendo ampie vedute sulla pianura toscana e sul mare. Seguite il sentiero CAI 167 per un''esperienza ottimale. Il sentiero è ben segnalato e presenta alcuni tratti esposti al sole, quindi preparatevi adeguatamente, soprattutto nei mesi estivi.
</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>

<p>
  Questo sentiero è considerato di difficoltà **Facile**, quindi adatto a persone di tutte le età e livelli di esperienza. La distanza totale è di circa 10,05 km, con un dislivello di 0 metri. L''anello richiede circa 3-4 ore per essere completato.  È fondamentale portare con sé acqua, cibo e scarpe da trekking adatte.
</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>

<p>
  Per facilitare l''escursione, ho creato una <strong >traccia GPS</strong> (disponibile online) che vi guiderà lungo il percorso. L''escursione è fattibile con qualsiasi tipo di attrezzatura, ma considerate che non ci sono fontanelle lungo il sentiero.
</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>

<ul id="informazioni-utili">
  <li><strong>Distanza:</strong> Circa 10.05 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 0 metri</li>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Parco di Scormatore, Calambrone</li>
  <li><strong>Comune:</strong> Calambrone, Toscana, Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  10.05,
  0,
  5,
  10,
  173,
  '2:53',
  151,
  '2:31',
  689,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Calambrone',
  '2018-05-01',
  '2018-05-01',
  '2021-11-05 00:00:00',
  '2021-11-05 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/calambrone2-88152122',
  NULL,
  43.593143,
  10.299024,
  'POINT(10.299024 43.593143)',
  '9c5948fdcdb49bf0b70b68dcdda1b570dddce9fa16692a5b6ba7a777e86a6fe6',
  'Escursione Calambrone: Anello facile di 10.05km in Toscana! Ideale per famiglie, 15m dislivello. Bocca di Scormatore, rondini & possibili cinghiali. Porta sc...',
  'Calambrone: Escursione Facile da Calambrone (10km)',
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
VALUES (88152122, 'https://it.wikiloc.com/percorsi-escursionismo/calambrone2-88152122', NOW(), '9c5948fdcdb49bf0b70b68dcdda1b570dddce9fa16692a5b6ba7a777e86a6fe6')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 88152122);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/88152122/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 88152122;

COMMIT;

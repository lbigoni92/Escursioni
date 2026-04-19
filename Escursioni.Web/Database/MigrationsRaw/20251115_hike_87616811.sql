BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  87616811,
  'Buca dei banditi - Percorso Breve',
  'Sentiero semplice e percorribile anche con scarpe da tennis in un paio di punti vi sono numerosi arbusti e rovi, si deve prestare attenzione. non ci sono punti difficili, l''unico punto dove prestare attenzione è al km 2.6 c''è un terrapieno d''appena un metro, ma vi potete aiutare con una corda messa li dal cai. Il percorso è ben evidenziato anche con delle stelle rosse che portano alla grotta. Sulla grotta è possibile individuare una targetta per indicare la storicità del posto',
  '<h2>Buca dei Banditi - Percorso Breve: Trekking e Escursioni nella Montagna Umbra</h2>

<h3>Il Percorso</h3>

<p>Questo <em>percorso breve</em> alla <strong>Buca dei Banditi</strong> è un''ottima scelta per un''<em>escursione</em> a piedi nella splendida <strong>Montagna Umbra</strong>. Ideale per chi cerca una <em>trekking</em> facile e accessibile, il sentiero si snoda attraverso un paesaggio di <strong>natura</strong> incontaminata, ricco di boschi e panorami mozzafiato.  È possibile raggiungere la grotta, l''origine del suo nome, con un''<em>escursione</em> di circa 3-4 chilometri, un''esperienza suggestiva per gli amanti del <em>trekking</em> e dell''<em>escursionismo</em> in Italia.</p>

<h3>Cosa Aspettarsi</h3>

<p>Il <strong>sentiero</strong> alla <strong>Buca dei Banditi</strong> è caratterizzato da un dislivello contenuto, rendendolo adatto anche a chi pratica <em>trekking</em> con scarpe da tennis in alcuni tratti.  Tuttavia, è importante prestare attenzione, in quanto il percorso attraversa zone con arbusti e rovi. La segnaletica è ben presente, con particolare evidenza delle <em>stelle rosse</em> che guidano i <em>trekking</em> verso la <strong>grotta</strong>. L’<em>escursione</em> offre la possibilità di ammirare la <strong>natura</strong> circostante e di immergersi nella storia del luogo, legato alla leggenda dei <em>banditi</em>.</p>

<h3>Informazioni Utili</h3>

<ul>
  <li><strong>Difficoltà:</strong> Facile</li>
  <li><strong>Distanza:</strong> Circa 3-4 chilometri</li>
  <li><strong>Dislivello:</strong> Minimo (quasi piatto)</li>
  <li><strong>Tempi di percorrenza:</strong> 1.5 - 2.5 ore (a seconda del ritmo)</li>
  <li><strong>Punti di Interesse:</strong> <strong>Buca dei Banditi</strong> (grotta storica), <em>Targetta</em> per la storicità del luogo,  panorami sulla <strong>Montagna Umbra</strong></li>
  <li><strong>Attenzione:</strong> Il percorso può essere irregolare e presenta alcune zone con arbusti e rovi; è consigliabile prestare attenzione e, in caso di necessità, utilizzare una corda fornita dal CAI al km 2.6.</li>
</ul>

<p>Questa <em>escursione</em> alla <strong>Buca dei Banditi</strong> è un''opportunità per vivere un''esperienza autentica di <em>trekking</em> nella <strong>natura</strong> italiana, un''<em>escursione</em> memorabile per gli appassionati di <em>sentieri</em> e <em>escursioni</em>.</p>',
  'Tutte le Attività e Paesi',
  7.92,
  185,
  161,
  267,
  162,
  '02:42',
  NULL,
  NULL,
  1879,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Castellaccio',
  '2020-07-01',
  '2020-07-01',
  '2021-10-29 00:00:00',
  '2021-10-29 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811',
  NULL,
  43.487804,
  10.36382,
  'POINT(10.36382 43.487804)',
  'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501',
  'Escursione Buca dei Banditi: percorso breve e facile con vista grotta! Sentiero segnato, adatto anche a scarpe da tennis. Scopri la sua storia!',
  'Trekking Buca dei Banditi: Percorso Facile a San Casciano',
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
  updated_at = NOW();

INSERT INTO escursioni.hike_registry (wikiloc_id, url, last_seen_at, hash_contenuti)
VALUES (87616811, 'https://it.wikiloc.com/percorsi-escursionismo/buca-dei-banditi-percorso-breve-87616811', NOW(), 'f23451a2037dba7b71e27a047e345c8c3ebc1d56a1e64b3e5dc35b9f5738d501')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87616811);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87616811/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87616811;

COMMIT;

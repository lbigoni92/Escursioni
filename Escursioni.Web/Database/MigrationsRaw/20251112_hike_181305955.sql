BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181305955,
  'Cavezzana Gordana ~ Streggi di Giaredo',
  'Niente è meglio degli stretti quando si cerca refrigerio dalla calura estiva. l''escursione è consigliata per chi ha un minimo di dimestichezza con i corsi d''acqua, che sappia nuotare bene; sono necessari scarpe da trekking, muta e preferibilmente anche il caschetto. l''acqua è veramente fredda quindi mi raccomando non buttatevi se non avete la muta. le acque sono cristalline quello che vedete qua è una dei 3 sentieri par arrivare agli stretti. Il parcheggio c''è ed è abbastanza spazioso sabati e domeniche andateci presto sennò non trovate posto. il sentiero nel primo tratto è semplice e ben delineato, basta seguire la traccia c''è da guardare il fiume dopo poco in 3/4 punti e si è agli stretti. Dagli stretti possiamo scegliere se proseguire nel percorso (la parte ovviamente più bella) o fermarsi per fare un bagnetto. Le gole alte 30 metri regalano un paesaggio unico da cinema, nella seconda parte ci sono anche delle bellissime cascate. Si deve nuotare in almeno 4 punti e la lunghezza del tratto da nuotare varia dai pochi metri alla trentina (dipende dal livello dell''acqua). Consiglio vivamente l''esperienza',
  '<h2 id="escursione-cavezzana-gordana-streggi-di-giaredo">Escursione alla Cavezzana Gordana e agli Streggi di Giaredo</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa fantastica escursione è a Dozzano, in provincia di Toscana. Il comune si trova in Italia e facilmente raggiungibile in auto. Arrivati a Dozzano, il parcheggio è abbastanza spazioso, ma soprattutto se scegliete di fare l''escursione nel weekend, consiglio vivamente di arrivare presto per assicurarsi un posto. Da lì, seguendo la segnaletica, inizierete il vostro trekking.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>L''escursione inizia con un tratto semplice e ben delineato, lungo un sentiero che segue il corso del fiume. Dopo pochi metri, vi troverete all''imbocco degli stretti, dove l''acqua diventa più impetuosa e fredda. Da qui, potrete scegliere se proseguire nel percorso più bello (e impegnativo) o fermarvi per un bagno rinfrescante. Il sentiero si snoda attraverso gole alte di 30 metri, regalando panorami mozzafiato. Durante il percorso, dovrete nuotare in almeno 4 punti, con tratti che variano dai pochi metri alla trentina, a seconda del livello dell''acqua. Ricordate, l''acqua è veramente fredda, quindi utilizzate la muta e il caschetto!</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di difficoltà media. Richiede un minimo di dimestichezza con i corsi d''acqua e la capacità di nuotare bene. È necessario indossare scarpe da trekking, una muta e, preferibilmente, un caschetto. Il dislivello è di circa 116 metri e la distanza dell''anello è di 3.99 km.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Potrete scaricare una traccia GPS per questo percorso per orientarvi meglio durante l''escursione. Ricordate di controllare sempre le previsioni del tempo prima di partire e di indossare abbigliamento adeguato. Preparatevi a nuotare in acque fresche e a godervi un''esperienza indimenticabile!</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul>
  <li><strong>Distanza:</strong> Circa 3.99 km (anello)</li>
  <li><strong>Dislivello:</strong> Circa 116 metri</li>
  <li><strong>Difficoltà:</strong> Media</li>
  <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
  <li><strong>Punto di partenza:</strong> Dozzano, Toscana, Italia</li>
  <li><strong>Comune:</strong> Dozzano</li>
  <li><strong>Regione:</strong> Italia</li>
  <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li>
</ul>',
  'Tutte le Attività e Paesi',
  3.99,
  116,
  281,
  357,
  83,
  '1:23',
  73,
  '1:13',
  192,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Dozzano',
  NULL,
  NULL,
  '2024-08-16 00:00:00',
  '2024-08-16 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/cavezzana-gordana-streggi-di-giaredo-181305955',
  NULL,
  44.364034,
  9.854267,
  'POINT(9.854267 44.364034)',
  'eafa0cc07bd7d43da59326c635d241c5892ff9925bc8a3df4adac511b7d5237e',
  'Escursione Cavezzana Gordana Streggi di Giaredo (Toscana): trekking facile +116m, nuoto in acque fredde e cristalline! Perfetta per famiglie. Scarpe, muta e ...',
  'Streggi di Giaredo: Escursione da Cavezzana (Toscana)',
  'Lunigiana',
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
VALUES (181305955, 'https://it.wikiloc.com/percorsi-escursionismo/cavezzana-gordana-streggi-di-giaredo-181305955', NOW(), 'eafa0cc07bd7d43da59326c635d241c5892ff9925bc8a3df4adac511b7d5237e')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 181305955);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/181305955/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/181305955/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 181305955;

COMMIT;

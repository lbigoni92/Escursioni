BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  181305955,
  'Cavezzana Gordana ~ Streggi di Giaredo',
  'Niente è meglio degli stretti quando si cerca refrigerio dalla calura estiva. l''escursione è consigliata per chi ha un minimo di dimestichezza con i corsi d''acqua, che sappia nuotare bene; sono necessari scarpe da trekking, muta e preferibilmente anche il caschetto. l''acqua è veramente fredda quindi mi raccomando non buttatevi se non avete la muta. le acque sono cristalline quello che vedete qua è una dei 3 sentieri par arrivare agli stretti. Il parcheggio c''è ed è abbastanza spazioso sabati e domeniche andateci presto sennò non trovate posto. il sentiero nel primo tratto è semplice e ben delineato, basta seguire la traccia c''è da guardare il fiume dopo poco in 3/4 punti e si è agli stretti. Dagli stretti possiamo scegliere se proseguire nel percorso (la parte ovviamente più bella) o fermarsi per fare un bagnetto. Le gole alte 30 metri regalano un paesaggio unico da cinema, nella seconda parte ci sono anche delle bellissime cascate. Si deve nuotare in almeno 4 punti e la lunghezza del tratto da nuotare varia dai pochi metri alla trentina (dipende dal livello dell''acqua). Consiglio vivamente l''esperienza',
  '<h2>Cavezzana Gordana ~ Streggi di Giaredo: Trekking e Escursioni nel Parco Naturale Regionale dell''Appennino Parmigiano</h2>

<h3>Il percorso</h3>
<p>Preparatevi per un’emozionante <strong>escursione trekking</strong> lungo il sentiero Cavezzana Gordana, un percorso fantastico che vi condurrà attraverso la splendida valle di Streggi di Giaredo. Questa <strong>escursione in montagna</strong> è perfetta per chi cerca un’avventura in natura e desidera scoprire i segreti di questo angolo incontaminato del Parco Naturale Regionale dell’Appennino Parmigiano. Il <strong>sentiero</strong> è consigliato a escursionisti esperti, con una buona dimestichezza con i corsi d''acqua e capacità di nuoto, data la presenza di acque fredde e l''opportunità di godere di un rinfrescante <em>bagnetto</em>.</p>
<p>Il primo tratto del <strong>trekking</strong> è semplice e ben definito, con una traccia chiaramente indicata. Dopo poco, vi troverete di fronte agli iconici <strong>stretti</strong>, una meraviglia naturale dove potrete ammirare il fiume. Da qui, potrete scegliere se proseguire lungo il percorso più impegnativo e panoramico o concedervi un’immersione rinfrescante nelle acque cristalline.</p>

<h3>Cosa aspettarsi</h3>
<ul>
    <li>Un''<strong>escursione</strong> in un ambiente naturale incontaminato.</li>
    <li>La possibilità di <strong>nuotare</strong> in acque fresche e cristalline.</li>
    <li>Un percorso di circa 7-8 km con dislivello variabile, adatto a trekking esperti.</li>
    <li>Gole alte fino a 30 metri che offrono panorami mozzafiato.</li>
    <li>La presenza di <strong>cascate</strong> e punti di interesse naturalistico.</li>
</ul>

<h3>Informazioni utili</h3>
<p>L’<strong>escursione</strong> alla Cavezzana Gordana richiede un’adeguata preparazione. È fondamentale indossare <strong>scarpe da trekking</strong>, una <strong>muta</strong> e, preferibilmente, un <em>caschetto</em> per la sicurezza. Ricordate che l’acqua è estremamente fredda e, per questo, è consigliabile non immergersi senza la muta. Il percorso include tratti in cui è necessario nuotare, con una lunghezza variabile dai pochi metri alle 30 metri, a seconda del livello dell''acqua.  Il parcheggio è disponibile e abbastanza spazioso, ma è consigliabile recarsi al sito nei giorni festivi con anticipo per assicurarsi un posto.</p>
<p>Questa <strong>trekking</strong> esperienza nelle <strong>montagne italiane</strong> è una vera e propria fuga dalla routine, un’occasione per riconnettersi con la natura e godere della bellezza dei <strong>sentieri</strong> dell’Appennino Parmigiano.  Preparatevi a un''<strong>escursione</strong> indimenticabile!</p>',
  'Tutte le Attività e Paesi',
  3.99,
  116,
  281,
  357,
  120,
  '02:00',
  NULL,
  NULL,
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

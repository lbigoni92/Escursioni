BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  106000106,
  'Livorno - Sambuca - Valle Benedetta - Lucciole',
  'La partenza stata dal parcheggio a fianco della "via del radar" ove via un''enorme parcheggio gratuito. Il percorso è iniziato alle 19 del pomeriggio dove abbiamo fatto la prima parte con il sole, quando siamo arrivati a 1/3 del percorso, abbiamo potuto vedere un punto panoramico stupendo; da qua avevamo la possibilità di vedere dai Monte serra, fino alle Apuane. Abbiamo proseguito il percorso al cala sole, fino ad arrivare all''incrocio chiamato “il Crocione”, da qua siamo tornati indietro verso il Molino e abbiamo immediatamente girato a sinistra e abbiamo cominciato questo sentiero in notturna,; com''è calato il sole le lucciole hanno preso a illuminare il percorso, è stata un''esperienza unica e grazie alla luna piena riuscivamo a vedere queste chiaramente il sentiero anche di notte; sentiero che abbiamo proseguito fino ad arrivare all''Eremo della Sambuca, dove abbiamo cenato verso le 21:00. Dall''eremo abbiamo proseguito fino a un enorme pratone dove ci siamo stesi a vedere le stelle e la visuale era stupenda... le foto non rendono bene quel che abbiamo visto, e dopo un po’ di riposo abbiamo proseguito sulla strada fino a tornare alle macchine.',
  '<h2>Livorno - Sambuca - Valle Benedetta - Lucciole: Trekking Notturno tra Montagna e Natura</h2>

<h3>Il Percorso</h3>
<p>Questo fantastico <strong>sentiero di trekking</strong> a <strong>Livorno</strong> offre un''esperienza indimenticabile, un''escursione notturna attraverso paesaggi mozzafiato. Il percorso inizia da un comodo <strong>parcheggio gratuito</strong>, vicino alla “via del radar”, e si snoda attraverso la splendida <strong>Valle Benedetta</strong> fino al punto di riferimento delle <strong>lucciole</strong>. L''escursione, di circa 8 km, è adatta a escursionisti esperti che amano il <strong>trekking in montagna</strong> e l''esplorazione della <strong>natura</strong>.</p>
<p>Il percorso include una prima parte sotto il sole, con una spettacolare vista sui <strong>Monte Serra</strong> e le <strong>Apuane</strong>, un punto panoramico a circa 1/3 del cammino. Successivamente, si prosegue al calar della sera, sfruttando la magia delle <strong>lucciole</strong> che illuminano il <strong>sentiero</strong>.</p>

<h3>Cosa Aspettarsi</h3>
<ul>
    <li>Un''escursione notturna immersa nella <strong>natura</strong> e nell''oscurità.</li>
    <li>L''opportunità di ammirare le splendide <strong>lucciole</strong>, un''esperienza magica e unica.</li>
    <li>Viste panoramiche mozzafiato sui <strong>Monti Serra</strong> e sulle <strong>Apuane</strong>.</li>
    <li>Un <strong>sentiero</strong> ben definito, adatto a <strong>trekking</strong> e <strong>escursioni</strong>.</li>
    <li>Un''escursione di circa 8 km, adatta a escursionisti esperti.</li>
</ul>

<h3>Informazioni Utili</h3>
<p>Il <strong>sentiero</strong> da <strong>Livorno</strong> a <strong>Sambuca</strong> e <strong>Valle Benedetta</strong> e <strong>Lucciole</strong> è un''eccellente opzione per chi cerca un''avventura notturna e un contatto diretto con la <strong>natura</strong>. La difficoltà del <strong>sentiero</strong> è media, richiede un buon livello di preparazione fisica e una scarpa da <strong>trekking</strong> adeguata. Il percorso termina in un ampio pratone dove è possibile ammirare le stelle e godere della vista.</p>
<p>Partenza dal <strong>parcheggio</strong> a fianco della “via del radar”. Il punto di partenza è facilmente raggiungibile in auto.  La durata dell''escursione è di circa 4-5 ore, a seconda del ritmo e delle soste. È consigliabile informarsi sulle condizioni meteorologiche prima di intraprendere il <strong>sentiero</strong>.</p>
<p>Per ulteriori informazioni e dettagli sul <strong>trekking</strong> in <strong>Italia</strong>, consulta le nostre guide per l''esplorazione dei <strong>sentieri</strong> e delle <strong>montagne</strong>.</p>',
  'Tutte le Attività e Paesi',
  9.89,
  329,
  160,
  372,
  214,
  '3:34',
  186,
  '3:06',
  327,
  'Facile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Valle Benedetta',
  NULL,
  NULL,
  '2022-06-21 00:00:00',
  '2022-06-21 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/livorno-sambuca-valle-benedetta-lucciole-lupus-in-trekking-106000106',
  NULL,
  43.522496,
  10.413151,
  'POINT(10.413151 43.522496)',
  '188d7773fe435a47932d5f349f313307d6801a69fdf4ae92610a6857e35410f9',
  'Escursione Valle Benedetta (Livorno): Anello facile 9.8km +329m tra lucciole e stelle! Vista mare e Apuane. Perfetta per famiglie.',
  'Sambuca - Valle Benedetta: Escursione Facile con Lucciole...',
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
VALUES (106000106, 'https://it.wikiloc.com/percorsi-escursionismo/livorno-sambuca-valle-benedetta-lucciole-lupus-in-trekking-106000106', NOW(), '188d7773fe435a47932d5f349f313307d6801a69fdf4ae92610a6857e35410f9')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 106000106);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/106000106/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/106000106/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 106000106;

COMMIT;

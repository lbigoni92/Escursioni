BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87372356,
  'Monte Forato da Fornovolasco',
  'Percorso facile se si è un pò abituati alle apuane; Sentieristica : 130-110-6 Il sentiero 110 è classificato EE ma non vi sono difficoltà tecniche particolari, solo un paio di punti che potrebbero dare noia a chi soffre di vertigini Lo spettacolo del monte forato è davvero stupendo in cima alla croce, non è uno dei più belli dell''Apuane ma sicuramente merita. I panorami più belli si anno tra il 130 e il 110',
  '<h2 id="escursione-monte-forato-da-fornovolasco">Escursione al Monte Forato da Fornovolasco</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza per questa bella escursione al Monte Forato è a <strong>Fornovolasco</strong>, un piccolo borgo alle pendici delle <strong>Apuane</strong>. Si può raggiungere in auto da diverse direzioni, seguendo le indicazioni per Fornovolasco. Una volta arrivati, il sentiero parte direttamente dal parcheggio poco distante dal paese.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Questo trekking al Monte Forato è un anello di circa <strong>9,07 km</strong> che si snoda tra i sentieri dell''Appennino Tosco-Apicolano. Inizialmente il sentiero 110 sale dolcemente attraverso la fitta macchia mediterranea, con alcuni passaggi un po’ tecnici, ma senza difficoltà tecniche particolari.  I tratti più belli si trovano tra il sentiero 130 e il sentiero 110.  Il panorama è davvero spettacolare, soprattutto una volta raggiunto il punto panoramico alla croce, anche se non è tra i più belli delle <strong>Apuane</strong>.  È un’ottima escursione per chi vuole godersi la natura e ammirare panorami mozzafiato. L''escursione è perfetta anche per chi è un po'' abituato al trekking, ma non è adatta a chi soffre di vertigini a causa di alcuni passaggi.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>La difficoltà di questa <strong>escursione</strong> è classificata come <strong>Media</strong>.  Il dislivello totale è di circa <strong>+878 metri</strong>, quindi richiede un minimo di preparazione fisica.  Il sentiero è ben segnalato, ma è consigliabile indossare scarpe da trekking e portare con sé acqua e snack.  È importante considerare il periodo dell''anno, la stagione e le condizioni meteorologiche prima di partire, in quanto le <strong>Apuane</strong> possono essere soggette a cambiamenti improvvisi.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>Per facilitare il vostro <strong>trekking</strong>, ecco alcune informazioni utili: il sentiero è tracciato con una <strong>traccia GPS</strong> che potrete scaricare per seguirlo al meglio.  La distanza totale dell''anello è di circa 9,07 km e il dislivello è di +878 metri. Questo percorso è ideale per un''escursione di un giorno, ma può essere adattato in base alle vostre preferenze.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
  <li ><strong>Distanza:</strong> Circa 9.07 km (anello)</li >
  <li ><strong>Dislivello:</strong> Circa 878 metri</li >
  <li ><strong>Difficoltà:</strong> Media</li >
  <li ><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li >
  <li ><strong>Punto di partenza:</strong> Fornovolasco, accessibile in auto/a piedi</li >
  <li ><strong>Comune:</strong> Fornovolasco, Toscana</li >
  <li ><strong>Tipo di sentiero:</strong> Sentiero escursionistico</li >
</ul>',
  'Tutte le Attività e Paesi',
  9.07,
  878,
  540,
  1283,
  259,
  '4:19',
  225,
  '3:45',
  460,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Fornovolasco',
  '2021-09-01',
  '2021-09-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356',
  NULL,
  44.026425,
  10.354714,
  'POINT(10.354714 44.026425)',
  '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515',
  'Escursione Monte Forato da Fornovolasco: anello facile in Toscana (878m+) | Percorso 9.1km, ideale per principianti. Viste mozzafiato!',
  'Monte Forato: escursione da Fornovolasco (anello, 878m)',
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
VALUES (87372356, 'https://it.wikiloc.com/percorsi-escursionismo/monte-forato-da-fornovolasco-con-lupus-in-trekking-87372356', NOW(), '1a2e3a718f68b1d937fe353e398dedf0c90a6b0a889b3ea8b5ca9df80060e515')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87372356);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87372356/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87372356;

COMMIT;

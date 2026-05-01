BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  261295859,
  'Pieve di Santa Luce ~ Lago di santa Luca',
  'Abbiamo parcheggiato nei pressi del circolo ARCI del paese di Pieve di Santa Luce. Da lì siamo partiti in direzione del lago, seguendo una strada semplice e ben segnalata. Poco dopo la località Badorda, abbiamo imboccato via Aiore e proseguito fino a un bivio, dove abbiamo svoltato a sinistra entrando su un tratto di sentiero CAI. Il percorso si sviluppa su una strada bianca molto larga e facile da percorrere, ideale anche per chi non ha grande esperienza. Il panorama sulle colline toscane è davvero suggestivo: lungo il tragitto abbiamo incontrato un fagiano e diversi uccelli, rendendo la camminata ancora più piacevole. Superati alcuni poderi, abbiamo attraversato un grazioso ponticello sotto il quale si potevano osservare ranocchie e piccoli pesci. Proseguendo sempre sulla strada bianca, siamo arrivati infine al Lago di Santa Luce. Ci siamo fermati per pranzo su alcune panchine in riva al lago, in un punto panoramico davvero bello che offre una vista aperta verso ovest. In giornate particolarmente limpide è possibile intravedere persino l’isola d’Elba. Il lago era molto frequentato, con diverse persone intente a fare picnic: siamo stati fortunati a trovare un tavolo libero. Dopo pranzo abbiamo ripreso il cammino per il ritorno, passando dalla zona delle Bacchere. Anche questo tratto si sviluppa su sentieri CAI e strade larghe, sempre facili da seguire. Il percorso si chiude ad anello riportando al punto di partenza in circa un’ora e un quarto. Lungo il rientro abbiamo incontrato altri scorci naturali molto belli, tra piccoli rivoli d’acqua e fauna locale. È un itinerario perfetto per una passeggiata primaverile o autunnale tra le colline toscane. Consigliato con temperature non superiori ai 25°C, poiché gran parte del percorso è esposta al sole (meglio evitare i mesi estivi). Portate acqua e qualcosa da mangiare per godervi al meglio la sosta al lago. Consiglio anche una visita alla zona di Santa Luce nel periodo di giugno, quando sono presenti i campi di lavanda visitabili: uno spettacolo davvero suggestivo.',
  '<h2 id="escursione-pieve-di-santa-luce-lago-di-santa-luca">Escursione Pieve di Santa Luce ~ Lago di Santa Luca</h2>

<h3 id="come-arrivare-al-punto-di-partenza">Come arrivare al punto di partenza</h3>
<p>Il punto di partenza dell''escursione è nei pressi del circolo ARCI del paese di Pieve di Santa Luce. Si raggiunge facilmente in auto, trovando parcheggio nelle vicinanze. Da qui, si inizia il trekking seguendo una strada semplice e ben segnalata.</p>

<h3 id="il-percorso-passo-per-passo">Il percorso passo per passo</h3>
<p>Dopo aver lasciato il circolo ARCI, si segue una strada semplice e ben segnalata in direzione del lago. Dopo la località Badorda, si imbocca via Aiore e si prosegue fino a un bivio, dove si svolta a sinistra, entrando su un tratto di sentiero CAI. Il percorso si sviluppa su una strada bianca larga e facile, ideale anche per principianti. Dopo aver superato alcuni poderi e attraversato un ponticello, si raggiunge il Lago di Santa Luce. Si può fare una sosta per pranzo sulle panchine in riva al lago, godendo del panorama. Rientrando, si segue un percorso ad anello, passando dalle Bacchere e rientrando al punto di partenza in circa un’ora e un quarto.</p>

<h3 id="difficoltà-e-cosa-aspettarsi">Difficoltà e cosa aspettarsi</h3>
<p>Questa escursione è di **Facile** difficoltà, adatta anche a chi non ha molta esperienza. Il dislivello è di circa 131 metri. Il percorso è prevalentemente su strada bianca e sentiero CAI, quindi facile da percorrere.  È consigliata per temperature non superiori ai 25°C per evitare il sole pomeridiano.</p>

<h3 id="traccia-gps-e-informazioni-pratiche">Traccia GPS e informazioni pratiche</h3>
<p>La distanza totale dell''escursione è di circa 11.58 km.  Si consiglia di portare acqua e cibo per la sosta al lago.</p>

<h3 id="informazioni-utili">Informazioni Utili</h3>
<ul >
    <li><strong>Distanza:</strong> Circa 11.58 km (anello)</li>
    <li><strong>Dislivello:</strong> Circa 131 metri</li>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Periodo consigliato:</strong> Primavera, Estate, Autunno</li>
    <li><strong>Punto di partenza:</strong> Circolo ARCI di Pieve di Santa Luce</li>
    <li><strong>Comune:</strong> Pieve di Santa Luce, Toscana</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero escursionistico / Strada bianca</li>
</ul>',
  'Escursionismo',
  11.58,
  131,
  49,
  143,
  NULL,
  NULL,
  NULL,
  NULL,
  2010,
  'Facile',
  NULL,
  NULL,
  'Toscana',
  'Pisa',
  'Santa Luce',
  '2026-04-26',
  '2026-04-26',
  '2026-04-26',
  '2026-04-26',
  'https://www.wikiloc.com/hiking-trails/pieve-di-santa-luce-lago-di-santa-luca-261295859',
  NULL,
  43.480371,
  10.542815,
  'POINT(10.542815 43.480371)',
  '1eb0d5e80e85fd61a5f581042b24619f4e907cb8fadd4d1443837bb721ddb1f0',
  'Escursione Pieve di Santa Luce – Lago di Santa Luca: trekking 11.5km, +131m TUSCANA. Facile escursione al lago, vista Elba limp...',
  'Lago di Santa Luca: Escursione da Pieve di Santa Luce.',
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
VALUES (261295859, 'https://www.wikiloc.com/hiking-trails/pieve-di-santa-luce-lago-di-santa-luca-261295859', NOW(), '1eb0d5e80e85fd61a5f581042b24619f4e907cb8fadd4d1443837bb721ddb1f0')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 261295859);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/261295859/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/261295859/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 261295859;

COMMIT;

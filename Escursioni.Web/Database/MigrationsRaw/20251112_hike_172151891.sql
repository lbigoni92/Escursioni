BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  172151891,
  'Pisanino dalla Bagola Bianca',
  'La recensione qua sotto è frutto della mia personale esperienza e non è detto che per voi sia uguale, il percorso è difficile sia fisicamente sia di testa per chi non è abituato, prestare massima attenzione! Partiamo dalla Val Serenaia (1050 m), ci incamminiamo dal rifugio e individuiamo una traccia sulla destra che dal piazzale si dirige nel rio Serenaia. La traccia risale il pendio di paleo, obliquando a sinistra fino alla costola ovest della Bagola Bianca, da prendere sulla sinistra. Salendo, la traccia diventa più ripida fino a un risalto roccioso detto il Naso, che aggiriamo sulla destra. Proseguiamo tra paleo e roccette fino alla cima della Bagola Bianca (1807 m) nella salita ci si presentano dei tratti si scalata di 1 livello in un punto si tocca il 2° e un traverso al quale si deve prestare attenzione. Da qui, seguiamo la cresta NO verso il Pisanino, su un crinale sempre più esposto. Superiamo qualche passo di I fino a un risalto roccioso, che aggiriamo a destra salendo ripide zolle di paleo. Riprendiamo il filo della cresta fino alla vetta. Per la discesa, seguiamo la via normale (segni blu) lungo la cresta SE fino al Canale delle Rose. Scendiamo alla Foce Altare (1730 m) e poi alla seconda foce (1704 m). Qui la traccia piega a sinistra verso Gorfigliano, attraversando tratti esposti ai piedi del Pizzo Maggiore, Mezzo e Pizzo Altare (Zucchi di Cardeto). Superato il Pizzo Altare, saliamo alla Foce di Cardeto (1642 m) e seguiamo il CAI 178-179. Dalla Foce di Cardeto, seguiamo i segnavia bianco-rossi, incontriamo un bivio e teniamo il CAI 178 a destra. Passiamo una conca verde con grandi massi, poi una faggeta, e infine arriviamo al campeggio e al parcheggio.',
  '<h2>Pisanino dalla Bagola Bianca: Trekking e Escursioni in Montagna</h2>

<h3>Il Percorso</h3>
<p>
La <strong>trekking</strong> e <strong>escursione</strong> sul sentiero Pisanino dalla Bagola Bianca è un''avventura impegnativa, ideale per appassionati di <strong>trekking</strong> che cercano sfide nella <strong>montagna</strong>. Il percorso inizia dalla Val Serenaia (1050 m), un punto di partenza strategico per questo affascinante <strong>sentiero</strong>.  Partire dal rifugio, seguire la traccia sulla destra, e prepararsi a un''esperienza immersa nella natura selvaggia della Val d''Ampugnano, in Lombardia. La <strong>sentiero</strong> si snoda attraverso paleo, roccette e creste esposte, offrendo panorami mozzafiato. 
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Questo <strong>sentiero</strong> presenta una notevole difficoltà sia fisica che mentale, adatta a escursionisti esperti.  Ci si aspetta una salita ripida e impegnativa, con tratti di scalata, passaggi esposti e alcuni tratti di traverso che richiedono attenzione e prudenza. L''ambiente è selvaggio e incontaminato, con un''alta esposizione al sole, soprattutto in estate. La distanza totale del <strong>sentiero</strong> è di circa 18 km con un dislivello di 1000 metri.  La <strong>escursione</strong> richiede un''adeguata preparazione fisica e un''attenta valutazione dei propri limiti. 
</p>

<ul>
  <li>Difficoltà: Difficile</li>
  <li>Distanza: Circa 18 km</li>
  <li>Dislivello: 1000 metri</li>
  <li>Durata: Circa 8-10 ore</li>
  <li>Esposizione: Elevata, soprattutto in estate</li>
</ul>

<h3>Informazioni Utili</h3>
<p>
Il <strong>sentiero</strong> Pisanino dalla Bagola Bianca offre un''esperienza unica nel cuore della Lombardia.  Si parte dalla Val Serenaia, passando per il rifugio e la Bagola Bianca (1807 m), una vetta con panorami spettacolari.  Durante il percorso, si attraversano creste esposte, paleo, roccette e ci si arrampica lungo la parete rocciosa del Naso.  L''ultimo tratto del <strong>sentiero</strong> conduce al campeggio e al parcheggio di Gorfigliano.  L''itinerario presenta diversi punti di interesse naturalistico e paesaggistico, ideale per gli amanti del <strong>trekking</strong> e della <strong>natura</strong>. Ricordate sempre di indossare abbigliamento e calzature adatte, di portare con voi acqua e cibo, e di rispettare l''ambiente. Questo <strong>sentiero</strong> è un vero gioiello per gli appassionati di <strong>escursionismo</strong> in Italia. 
</p>',
  'Tutte le Attività e Paesi',
  7.91,
  800,
  1,
  1747,
  175,
  '02:55',
  175,
  '02:55',
  1351,
  'Molto difficile',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Vinca',
  '2024-05-01',
  '2024-05-01',
  '2024-05-26 00:00:00',
  '2024-05-26 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/pisanino-dalla-bagola-bianca-172151891',
  NULL,
  44.13451,
  10.19744,
  'POINT(10.19744 44.13451)',
  '766db84113695bc36ba11bc7fddfc0d91faff8d708f0601ed79a283c7aae7db2',
  'Escursione Bagola Bianca da Pisanino: Tracciato difficile (7.9km, 1m D+) Toscana. Trekking impegnativo tra paleo e roccette, tratti esposti! Val Serenaia - C...',
  'Bagola Bianca: escursione difficile da Pisanino (Toscana)',
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
VALUES (172151891, 'https://it.wikiloc.com/percorsi-escursionismo/pisanino-dalla-bagola-bianca-172151891', NOW(), '766db84113695bc36ba11bc7fddfc0d91faff8d708f0601ed79a283c7aae7db2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 172151891);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/172151891/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/172151891/photo_18.jpg', 18,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 172151891;

COMMIT;

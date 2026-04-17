BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, created_at, updated_at
)
VALUES (
  110932035,
  'Palleggio Cocciglia risalita torrente Scesta',
  'Abbiamo iniziato il sentiero dal cimitero di Palleggio e da li abbiamo imboccato il sentiero, facilissimo da seguire fino alla diga dell''Enel... In quel tratto troverete delle frane... Ma non impediscono il cammino(ma è vietato fare torrentismo dal cimitero alla diga). Arrivati alla diga si prosegue per un piccolo tratto 10mt in un sentiero che sembra una cinghialaia.. Poi vedrete i segni azzurri e degli omini. Da lì proseguite sul letto del fiume,in questo tratto usate scarpe da Scoglio o scarpe adeguate agli scogli scivolosi se avete freddo usate la muta, nel mio caso non ve ne era bisogno. Arrivati a un punto, troverete sulla dx una rete rossa e degli omini, e da li risalite. Da qua in avanti il sentiero sarà molto semplice. Non vi sono sorgenti dalle quali bere. Fate il tratto SOLO QUANDO IL TORRENTE NON È IN Piena e informatevi sulle ordinanze locali. State attenti ma ve lo consiglio l''estate',
  '<h2>Palleggio Cocciglia Risalita Torrente Scesta: Trekking Facile nella Montagna Toscana</h2>

<h3>Il Percorso</h3>
<p>
La <strong>Palleggio Cocciglia risalita torrente Scesta</strong> è un’escursione facile e ben segnalata, ideale per famiglie e per chi cerca una <strong>trekking</strong> nella splendida <strong>montagna toscana</strong>. Il sentiero inizia dal cimitero di Palleggio, da cui si segue un percorso lineare e intuitivo fino alla diga dell’Enel. Questa <strong>escursione di sentiero</strong> offre un’esperienza immersiva nella <strong>natura</strong>, con la possibilità di ammirare panorami mozzafiato e la fauna locale. La lunghezza del sentiero è di circa 6 km e presenta un dislivello di 300 metri, rendendolo una <strong>trekking</strong> accessibile anche a principianti.
</p>

<h3>Cosa Aspettarsi</h3>
<p>
Durante questa <strong>trekking</strong>, ci si aspetta un percorso prevalentemente in salita, con alcuni tratti più tecnici a causa della presenza di frane e del letto del torrente Scesta. È fondamentale indossare scarpe da <strong>trekking</strong> adatte all’ambiente montano e alle condizioni del terreno. Ricorda che la <strong>Palleggio Cocciglia risalita torrente Scesta</strong> è una <strong>sentiero</strong> per <strong>escursionismo</strong> in ambiente naturale, quindi preparati a incontrare la <strong>natura</strong> in tutte le sue forme.  L''acqua del torrente Scesta è fredda e a volte turbolenta, quindi fai attenzione.
</p>

<h3>Informazioni Utili</h3>
<ul>
    <li><strong>Difficoltà:</strong> Facile</li>
    <li><strong>Distanza:</strong> 6 km</li>
    <li><strong>Dislivello:</strong> 300 metri</li>
    <li><strong>Punto di partenza:</strong> Cimitero di Palleggio</li>
    <li><strong>Punto di arrivo:</strong> Diga dell’Enel</li>
    <li><strong>Tipo di sentiero:</strong> Sentiero di <strong>trekking</strong> segnalato</li>
    <li><strong>Consigli:</strong>  Non far torrentismo dal cimitero alla diga. Informarsi sulle condizioni del torrente Scesta prima di intraprendere l’<strong>escursione</strong> e seguire le ordinanze locali.  La <strong>Palleggio Cocciglia risalita torrente Scesta</strong> è consigliata in estate per evitare il disagio del freddo e dell’acqua.</li>
</ul>

<p>
Questa <strong>escursione sentiero</strong> rappresenta un''opportunità per scoprire la bellezza della <strong>montagna toscana</strong> e vivere un''esperienza di <strong>trekking</strong> indimenticabile. Ricorda di rispettare l''ambiente e di seguire le indicazioni per una <strong>trekking</strong> sicura e piacevole.  Esplora la <strong>Palleggio Cocciglia risalita torrente Scesta</strong> e lasciati conquistare dalla sua semplicità e dalla sua natura incontaminata.
</p>',
  'Tutte le Attività e Paesi',
  12.47,
  561,
  260,
  546,
  164,
  '02:44',
  164,
  '02:44',
  1942,
  'Medio',
  'Anello',
  NULL,
  'Italia',
  'Toscana',
  'Cocciglia',
  '2022-08-01',
  '2022-08-01',
  '2022-08-17 00:00:00',
  '2022-08-17 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/palleggio-cocciglia-risalita-torrente-scesta-110932035',
  NULL,
  44.040003,
  10.65557,
  'POINT(10.65557 44.040003)',
  'a328f648a37678c476a1648d603102454d5b8f142d2b10a739d7c9711cb1ebc2',
  'Escursione Palleggio Cocciglia: sentiero facile al torrente Scesta. Frane, cinghialaia e letto del fiume. Consigli e sicurezza! #escursioni #trekking #cocciglia',
  'Trekking Palleggio Cocciglia: Escursione al Torrente Scesta',
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
VALUES (110932035, 'https://it.wikiloc.com/percorsi-escursionismo/palleggio-cocciglia-risalita-torrente-scesta-110932035', NOW(), 'a328f648a37678c476a1648d603102454d5b8f142d2b10a739d7c9711cb1ebc2')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 110932035);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/110932035/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_01.jpg', 1,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_02.jpg', 2,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_03.jpg', 3,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_04.jpg', 4,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_05.jpg', 5,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_06.jpg', 6,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_07.jpg', 7,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_08.jpg', 8,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_09.jpg', 9,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_10.jpg', 10,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_11.jpg', 11,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_12.jpg', 12,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_13.jpg', 13,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_14.jpg', 14,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_15.jpg', 15,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_16.jpg', 16,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'foto', 'media/images/110932035/photo_17.jpg', 17,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 110932035;

COMMIT;

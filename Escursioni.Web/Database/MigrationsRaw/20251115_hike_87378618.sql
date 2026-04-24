BEGIN;

INSERT INTO escursioni.hike (
  wikiloc_id, titolo, descrizione, descrizione_html, attivita, distanza_km, dislivello_m, quota_min_m, quota_max_m, tempo_min, tempo_hhmm, tempo_mov_min, tempo_mov_hhmm, coordinate_count, difficolta, tipo_giro, superficie, regione, provincia, comune, data_escursione, data_registrato, data_caricato, data_pubblicazione, url, bbox, centroid_lat, centroid_lon, geom, sha256_payload, meta_descrizione, titolo_seo, tag, created_at, updated_at
)
VALUES (
  87378618,
  'Mulinaccio di Scandicci',
  'Percorso molto bello da fare in primavera o autunno sconsigli l''estate, s''è completamente esposti al caldo e al sole. Non vi sono fontanelle partite con 3l d''acqua sono tanti chilometri. Passeggiare in mezzo alle vigne e arrivare al Mulinaccio è un percorso tutto toscano che consiglio a chiunque, è davvero spettacolare; non vi sono particolari punti pericolosi lungo il tragitto. Occhio solamente al caldo se l''affrontate d''estate.',
  '<h2>Mulinaccio di Scandicci: Escursione Trekking nella Toscana Rurale</h2>

<h3>Il Percorso</h3>

<p>L''escursione al <strong>Mulinaccio di Scandicci</strong> è un''esperienza indimenticabile per gli amanti del <strong>trekking</strong> e dell''<strong>escursionismo</strong> in <strong>Toscana</strong>. Questo <strong>sentiero</strong> conduce attraverso paesaggi collinari mozzafiato, tra <strong>vigne</strong> secolari e la tranquillità della campagna toscana.  Un''escursione ideale per scoprire la bellezza della <strong>natura</strong> e godersi il profumo della <strong>montagna</strong>. La <strong>escursione</strong> è adatta a tutti i livelli di esperienza, pur richiedendo una buona preparazione fisica.</p>

<h3>Cosa Aspettarsi</h3>

<p>Preparatevi a una <strong>passeggiata</strong> di circa 8-10 chilometri, con un dislivello di circa 300 metri, che vi porterà fino al <strong>Mulinaccio</strong>, un''antica fattoria. Il <strong>sentiero</strong> è prevalentemente in salita, ma il percorso è ben tracciato e non presenta ostacoli significativi.  Potrete ammirare panorami spettacolari sulla valle di Firenze e sulla pianura. L''<strong>escursione</strong> è particolarmente consigliata in <strong>primavera</strong> o <strong>autunno</strong>, quando le temperature sono più miti.  L''estate, infatti, il sentiero è completamente esposto al sole e al caldo, rendendolo impegnativo e sconsigliabile.</p>

<h3>Informazioni Utili</h3>

<ul>
    <li><b>Difficoltà:</b> Facile/Media</li>
    <li><b>Distanza:</b> Circa 8-10 km</li>
    <li><b>Dislivello:</b> Circa 300 metri</li>
    <li><b>Tempo di percorso:</b> 3-4 ore</li>
    <li><b>Periodo consigliato:</b> Primavera e Autunno</li>
    <li><b>Consigli:</b> Porta con te acqua, scarpe da trekking adatte, cappello e crema solare. Ricorda che non ci sono fontanelle lungo il percorso, quindi prepara adeguatamente la tua idratazione.</li>
</ul>

<p>Questa <strong>escursione sentiero</strong> in <strong>Italia</strong> offre un''opportunità unica per immergerti nella cultura e nella <strong>natura</strong> della <strong>Toscana</strong>.  Un''esperienza di <strong>trekking</strong> che vi regalerà ricordi indimenticabili. Scopri il fascino del <strong>Mulinaccio di Scandicci</strong> e goditi la bellezza dei <strong>sentieri</strong> toscani.</p>',
  'Tutte le Attività e Paesi',
  24.31,
  658,
  91,
  394,
  545,
  '09:05',
  NULL,
  NULL,
  7026,
  'Medio',
  'Solo andata',
  NULL,
  'Italia',
  'Toscana',
  'Vigliano',
  '2021-06-01',
  '2021-06-01',
  '2021-10-25 00:00:00',
  '2021-10-25 00:00:00',
  'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618',
  NULL,
  43.743743,
  11.135846,
  'POINT(11.135846 43.743743)',
  '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d',
  'Escursione Mulinaccio di Scandicci: percorso di 24km in Toscana (Vigliano) con +658m di dislivello. Trek facile e panoramico tra le vigne, ideale in primaver...',
  'Mulinaccio di Scandicci: Escursione Toscana da Vigliano (...',
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
VALUES (87378618, 'https://it.wikiloc.com/percorsi-escursionismo/mulinaccio-di-scandicci-con-lupus-in-trekking-87378618', NOW(), '503f2a08fd7ae9d2972ba55862d1f78b911ab159339242003e5abf9d9d5eab8d')
ON CONFLICT (wikiloc_id) DO UPDATE SET last_seen_at = NOW(), hash_contenuti = EXCLUDED.hash_contenuti;


DELETE FROM escursioni.hike_media
WHERE hike_id = (SELECT id FROM escursioni.hike WHERE wikiloc_id = 87378618);


INSERT INTO escursioni.hike_media (hike_id, tipo, path_relativo, ordine, larghezza, altezza, sha256, filesize_bytes)
SELECT id, 'cover', 'media/images/87378618/cover.jpg', 0,
       NULL,
       NULL,
       NULL,
       NULL
FROM escursioni.hike WHERE wikiloc_id = 87378618;

COMMIT;
